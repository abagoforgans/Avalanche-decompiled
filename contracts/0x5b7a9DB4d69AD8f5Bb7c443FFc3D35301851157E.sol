contract main {




// =====================  Runtime code  =====================


address stor0;
address teamWalletAddress;
array of address stor2;
array of uint256 stor9;
uint8 stor16;
uint8 stor16; offset 8
uint256 stor16; offset 8

function getTeamWallet() payable {
    return teamWalletAddress
}

function _fallback() payable {
    revert
}

function updateTeamAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == teamWalletAddress
    teamWalletAddress = arg1
}

function sub_502f1b63(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == teamWalletAddress
    stor0 = arg1
    Mask(248, 0, stor16.field_8) = 1
}

function sub_e05faf07(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == teamWalletAddress
    require uint8(stor16.field_0)
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_00971dcd(?) payable {
    require uint8(stor16.field_8)
    require not uint8(stor16.field_0)
    idx = 0
    while idx < 7:
        mem[100] = stor2[idx]
        mem[132] = stor9[idx]
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args stor2[idx], stor9[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    uint8(stor16.field_0) = 1
}



}
