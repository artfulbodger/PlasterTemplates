<%
"function $PLASTER_PARAM_FunctionName"
%>
{
<%
    If ($PLASTER_PARAM_Help -eq 'Yes') {
@"
  <#
    .SYNOPSIS
      Describe purpose of $PLASTER_PARAM_FunctionName in 1-2 sentences.

      .DESCRIPTION
      Add a more complete description of what the function does.

      .PARAMETER Param1
      Describe parameter -Param1.

      .EXAMPLE
      $PLASTER_PARAM_FunctionName -Param1 Value
      Describe what this call does

      .NOTES
      Place additional notes here.

      .LINK
      URLs to related sites
      The first link is opened by Get-Help -Online $PLASTER_PARAM_FunctionName
  #>
"@
    }
%>
<%
    if ($PLASTER_PARAM_CmdletBinding -eq 'Simple') {
@'

      [CmdletBinding()]
'@
    } else {
@'
      [CmdletBinding(SupportsShouldProcess=$true, ConfirmImpact='Medium')]
'@
    }
%>
    Param
    (
        [Parameter(Mandatory)][string]$Param1
    )

    Begin
    {
    }
    Process
    {
<%
        if ($PLASTER_PARAM_CmdletBinding -eq 'Advanced') {
@'
        if ($PSCmdlet.ShouldProcess("Target", "Operation")) {

        } else{

        }
'@
        }
%>
    }
    End
    {
    }
}