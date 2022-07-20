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
    if not ext_code.size(CROWNAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call CROWNAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1
        if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
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
