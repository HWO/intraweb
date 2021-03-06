<?php
/**
 * Content
 *
 * @copyright (C) 2007-2010, Content Development Team
 * @link http://github.com/zikula-modules/Content
 * @license See license.txt
 */

class Content_Block_Mostviewed extends Zikula_Controller_AbstractBlock
{
    public function init()
    {
        // Security
        SecurityUtil::registerPermissionSchema('Content:mostviewedblock:', 'Block title::');
    }

    public function info()
    {
        return array('module'          => 'Content',
                     'text_type'       => $this->__('Content Most Viewed'),
                     'text_type_long'  => $this->__('Content Most viewed Pages block'),
                     'allow_multiple'  => true, 
                     'form_content'    => false,
                     'form_refresh'    => false,
                     'show_preview'    => true,
                     'admin_tableless' => true);
    }

    public function display($blockinfo)
    {
        // XTEC ************ MODIFICAT - Fixed breakdown of the website when using permissions to block access to blocks
        // 2014.09.29 @aginard

        if(!SecurityUtil::checkPermission('Content:mostviewedblock:', "$blockinfo[title]::", ACCESS_READ)) {
            return false;
        }

        //************ ORIGINAL
        /*
        // security check
        $this->throwForbiddenUnless(SecurityUtil::checkPermission('Content:mostviewedblock:', "$blockinfo[title]::", ACCESS_READ), LogUtil::getErrorMsgPermission());
        */
        //************ FI

        // Break out options from our content field
        $vars = BlockUtil::varsFromContent($blockinfo['content']);
        // --- Setting of the Defaults
        if (!isset($vars['usecaching'])) {
            $vars['usecaching'] = false;
        }
        if (!isset($vars['root'])) {
            $vars['root'] = 0;
        }
        if (!isset($vars['count'])) {
            $vars['count'] = 10;
        }
        if (!isset($vars['checkinmenu'])) {
            $vars['checkinmenu'] = true;
        }

        $this->view->setCacheId($blockinfo['bid']);
        $this->view->setCaching($vars['usecaching']);

        if (!$vars['usecaching'] || ($vars['usecaching'] && !$this->view->is_cached('block/mostviewed.tpl'))) {
            $options = array(
                'orderBy' => 'views', 
                'orderDir' => 'desc', 
                'pageSize' => $vars['count'], 
                'filter' => array()
            );
            if ($vars['root'] > 0) {
                $options['filter']['superParentId'] = $vars['root'];
            }
            // checkInMenu, checkActive is done implicitely
            $options['filter']['checkInMenu'] = $vars['checkinmenu'];
            $pages = ModUtil::apiFunc('Content', 'Page', 'getPages', $options);
            if ($pages === false) {
                return false;
            }
            $this->view->assign('subPages', $pages);
        }
        $blockinfo['content'] = $this->view->fetch('block/mostviewed.tpl');
        return BlockUtil::themeBlock($blockinfo);
    }

    public function modify($blockinfo)
    {
        $vars = BlockUtil::varsFromContent($blockinfo['content']);
        if (!isset($vars['usecaching'])) {
            $vars['usecaching'] = false;
        }
        if (!isset($vars['count'])) {
            $vars['count'] = 10;
        }
        if (!isset($vars['checkinmenu'])) {
            $vars['checkinmenu'] = true;
        }

        $this->view->assign($vars);

        $pages = ModUtil::apiFunc('Content', 'Page', 'getPages', array('makeTree' => false, 'orderBy' => 'setLeft', 'includeContent' => false, 'enableEscape' => false));
        $pidItems = array();
        $pidItems[] = array('text' => $this->__('All pages'), 'value' => "0");

        foreach ($pages as $page) {
            $pidItems[] = array('text' => str_repeat('+', $page['level']) . " " . $page['title'], 'value' => $page['id']);
        }
        $this->view->assign('pidItems', $pidItems);
        return $this->view->fetch('block/mostviewed_modify.tpl');
    }

    public function update($blockinfo)
    {
        $vars = BlockUtil::varsFromContent($blockinfo['content']);
        $vars['root'] = (int)FormUtil::getPassedValue('root', 0, 'POST');
        $vars['count'] = (int)FormUtil::getPassedValue('count', 10, 'POST');
        $vars['usecaching'] = (bool)FormUtil::getPassedValue('usecaching', false, 'POST');
        $vars['checkinmenu'] = (bool)FormUtil::getPassedValue('checkinmenu', true, 'POST');
        $blockinfo['content'] = BlockUtil::varsToContent($vars);

        // clear the block cache
        $this->view->clear_cache('block/mostviewed.tpl');
        return $blockinfo;
    }
}
