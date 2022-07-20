contract main {




// =====================  Runtime code  =====================


uint8 enabled;
address stor0; offset 8
address CROWNAddress;
uint256 ID;
mapping of address stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;

function CROWN() payable {
    return CROWNAddress
}

function enabled() payable {
    return bool(enabled)
}

function ID() payable {
    return ID
}

function _fallback() payable {
    revert
}

function getById(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(stor3[arg1]), stor5[arg1], stor6[arg1]
}

function enable(bool arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'only owner'
    enabled = uint8(arg1)
}

function getByAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor4[address(arg1)]:
        return address(stor3[0]), stor5[0], stor6[0]
    return address(stor3[stor4[msg.sender]]), stor5[stor4[msg.sender]], stor6[stor4[msg.sender]]
}

function migrate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not enabled:
        revert with 0, '#Enabled: FUNCTION_IS_DISABLED'
    require ext_code.size(CROWNAddress)
    call CROWNAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor4[msg.sender]:
        if arg1 + stor5[stor4[msg.sender]] < stor5[stor4[msg.sender]]:
            revert with 0, 'SafeMath: addition overflow'
        stor5[stor4[msg.sender]] += arg1
        if stor6[stor4[msg.sender]] + 1 < stor6[stor4[msg.sender]]:
            revert with 0, 'SafeMath: addition overflow'
        stor6[stor4[msg.sender]]++
    else:
        stor4[msg.sender] = ID
        uint256(stor3[stor2]) = msg.sender or Mask(96, 160, uint256(stor3[stor2]))
        stor5[stor2] = arg1
        stor6[stor2] = 1
        ID++
}



}
