contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function ExistingWithoutABI(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    stor0 = arg1
}

function start() payable {
    call stor0.claimDividend() with:
         gas gas_remaining wei
        args 0x803c89105109c531c3dbc1e04a3c87e5bb363176a84cca21bdaa8df2
    call stor0.claimDividend() with:
         gas gas_remaining wei
        args 0x803c89105109c531c3dbc1e04a3c87e5bb363176a84cca21bdaa8df2
}



}
