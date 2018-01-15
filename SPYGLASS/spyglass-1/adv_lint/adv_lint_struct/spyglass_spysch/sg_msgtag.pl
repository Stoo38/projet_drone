################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(19,32);
spyParseTextMessageTagFile("./spyglass-1/adv_lint/adv_lint_struct/spyglass_spysch/sg_msgtag.txt");

if(!defined $::spyInIspy || !$::spyInIspy)
{
    spyDefineReportGroupingOrder("ALL",
(
"LIBMAP"      => "A",
"BUILTIN"   => [SGTAGTRUE, SGTAGFALSE]
,"TEMPLATE" => "A"
)
);
}
spyMessageTagTestBenchmark(2,"./spyglass-1/adv_lint/adv_lint_struct/spyglass.vdb");

1;
