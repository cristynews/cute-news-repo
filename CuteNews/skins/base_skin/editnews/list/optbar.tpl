<table class=panel border=0 cellpading=0 cellspacing=0 width=99% >
<tr>
    <td title='Show More Options' style="cursor:pointer;" onclick="getElementById('options').style.display='';">
        Showing <b>{$entries_showed}</b> articles from total <b>{$all_count_news}</b>; {$cat_msg} {$source_msg}
    </td>
    <td align="right"><a href="javascript:ShowOrHide('options','');">show options&nbsp;</a> </td>
</tr>
<tr>
    <td colspan="2">
        <div id='options' style='display:none;z-index:1;'>
            <form action="{$PHP_SELF}?mod=editnews&action=list" method="POST" name="options_bar">
                <table width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="1" style="border-top: 1px dashed silver" width="100%" align="right" colspan="3">
                        <p align="center">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td height="1" width="286" align="right">Source&nbsp;</td>
                        <td height="1" width="180">
                            <select name="source" size="1">
                                <option value="">- Active News -</option>
                                <option {$postponed_selected} value="postponed">- Postponed News -</option>
                                <option {$unapproved_selected} value="unapproved">- Unapproved News -</option>
                                {$opt_source}
                            </select>
                        </td>
                        <td height="1" width="182">&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="1" width="284" align="right" > Category&nbsp; </td>
                        <td height="1" width="178" >
                            <select name="category"><option selected value="">- All -</option>
                                {$opt_catlist}
                            </select>
                        </td>
                        <td height="1" width="180">&nbsp;</td>
                    </tr>
                    {OPT_AUTHOR}
                    <tr>
                        <td height="1" width="284" align="right">Author&nbsp;</td>
                        <td height="1" width="178" >
                            <select name=author size="1">
                                <option value="">- Any -</option>
                                {$opt_author}
                            </select>
                        </td>
                        <td height="1" width="180" >&nbsp;</td>
                    </tr>
                    {/OPT_AUTHOR}
                    <tr>
                        <td height="1" width="284" align="right" > News per page&nbsp; </td>
                        <td height="1" width="178"> <input style="text-align: Center" name="news_per_page" value="{$news_per_page}" type=text size=3> </td>
                        <td height="1" width="180" >&nbsp;</td>
                    </tr>
                    <tr>
                        <td height="1" width="284" align="right">&nbsp;</td>
                        <td height="1" width="178"> <br><input type=submit value="Show"></td>
                        <td height="1" width="180">&nbsp;</td>
                    </tr>
                </table>
            </form>
        </div>
    </td>
</tr>
</table>