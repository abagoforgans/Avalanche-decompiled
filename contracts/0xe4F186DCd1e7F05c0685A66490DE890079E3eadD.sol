contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
mapping of struct stor3;
mapping of uint8 stor4;

function _fallback() payable {
    revert
}

function sub_2a5a79ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'HumbleLuckBall: Only owner address can call this method'
    stor2 = address(arg1)
    emit 0x57845a32: stor2, address(arg1)
}

function mint(address arg1, address arg2, uint256 arg3, string arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg4 + arg4.length + 36 <= calldata.size
    if stor2 != msg.sender:
        revert with 0, 'HumbleLuckBall: Only authorized address can call this method'
    if stor4[address(arg1)]:
        revert with 0, 'MigrateMinter: address has already migrated their asset.'
    call stor0.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor4[address(arg1)] = 1
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor3[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor3[address(arg1)].field_0 = 0
            idx = 0
            while stor3[address(arg1)].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if arg4.length:
            stor3[address(arg1)][].field_0 = Array(len=arg4.length, data=arg4[all])
        else:
            stor3[address(arg1)].field_0 = 0
            idx = 0
            while stor3[address(arg1)].field_1 + 31 / 32 > idx:
                stor3[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit Minted(address(arg1), address(arg2), arg3);
}

function sub_3eea79d1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[address(arg1)].field_0:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 'NH{q', 34
            if stor3[address(arg1)].field_1:
                if 31 < stor3[address(arg1)].field_1:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_1), data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
                mem[128] = 256 * stor3[address(arg1)].field_8
        else:
            if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
                revert with 'NH{q', 34
            if stor3[address(arg1)].field_1:
                if 31 < stor3[address(arg1)].field_1:
                    mem[128] = stor3[address(arg1)].field_0
                    idx = 128
                    s = 0
                    while stor3[address(arg1)].field_1 + 96 > idx:
                        mem[idx + 32] = stor3[address(arg1)][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_1), data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
                mem[128] = 256 * stor3[address(arg1)].field_8
        mem[ceil32(stor3[address(arg1)].field_1) + 192 len ceil32(stor3[address(arg1)].field_1)] = mem[128 len ceil32(stor3[address(arg1)].field_1)]
        if ceil32(stor3[address(arg1)].field_1) > stor3[address(arg1)].field_1:
            mem[ceil32(stor3[address(arg1)].field_1) + stor3[address(arg1)].field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3[address(arg1)].field_1), data=mem[128 len ceil32(stor3[address(arg1)].field_1)], mem[(2 * ceil32(stor3[address(arg1)].field_1)) + 192 len 2 * ceil32(stor3[address(arg1)].field_1)]), 
    if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
        revert with 'NH{q', 34
    if stor3[address(arg1)].field_0:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[address(arg1)].field_1:
            if 31 < stor3[address(arg1)].field_1:
                mem[128] = stor3[address(arg1)].field_0
                idx = 128
                s = 0
                while stor3[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
            mem[128] = 256 * stor3[address(arg1)].field_8
    else:
        if stor3[address(arg1)].field_0 == stor3[address(arg1)].field_1 < 32:
            revert with 'NH{q', 34
        if stor3[address(arg1)].field_1:
            if 31 < stor3[address(arg1)].field_1:
                mem[128] = stor3[address(arg1)].field_0
                idx = 128
                s = 0
                while stor3[address(arg1)].field_1 + 96 > idx:
                    mem[idx + 32] = stor3[address(arg1)][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)])
            mem[128] = 256 * stor3[address(arg1)].field_8
    mem[ceil32(stor3[address(arg1)].field_1) + 192 len ceil32(stor3[address(arg1)].field_1)] = mem[128 len ceil32(stor3[address(arg1)].field_1)]
    if ceil32(stor3[address(arg1)].field_1) > stor3[address(arg1)].field_1:
        mem[ceil32(stor3[address(arg1)].field_1) + stor3[address(arg1)].field_1 + 192] = 0
    return Array(len=stor3[address(arg1)].field_0, data=mem[128 len ceil32(stor3[address(arg1)].field_1)], mem[(2 * ceil32(stor3[address(arg1)].field_1)) + 192 len 2 * ceil32(stor3[address(arg1)].field_1)]), 
}



}
