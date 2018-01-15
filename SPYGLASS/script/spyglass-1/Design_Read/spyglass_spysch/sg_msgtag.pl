################################################################################
#This is an internally genertaed by SpyGlass for Message Tagging Support
################################################################################


use spyglass;
use SpyGlass;
use SpyGlass::Objects;
spyRebootMsgTagSupport();

spySetMsgTagCount(6,32);
spyParseTextMessageTagFile("./spyglass-1/Design_Read/spyglass_spysch/sg_msgtag.txt");

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
spyMessageTagTestBenchmark(2,"./spyglass-1/Design_Read/spyglass.vdb");

1;
