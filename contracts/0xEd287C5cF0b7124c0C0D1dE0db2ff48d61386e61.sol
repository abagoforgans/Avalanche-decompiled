contract main {




// =====================  Runtime code  =====================


address teamWalletAddress;

function getTeamWallet() payable {
    return teamWalletAddress
}

function _fallback() payable {
    revert
}

function updateTeamWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == teamWalletAddress
    teamWalletAddress = arg1
}

function sendToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == teamWalletAddress
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
