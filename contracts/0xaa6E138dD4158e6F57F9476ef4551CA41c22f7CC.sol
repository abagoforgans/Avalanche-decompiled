contract main {




// =====================  Runtime code  =====================


array of struct stor0;
array of address tokens;
address owner;
mapping of uint8 stor3;

function sub_1e371eb1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(uint8(stor3[arg1]))
}

function tokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tokens.length
    return tokens[arg1]
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_f431dd66(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor3[address(msg.sender)]):
        revert with 0, 'Error: caller is not whiter'
    tokens.length++
    tokens[tokens.length] = address(arg1)
}

function sub_4340be53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor3[address(msg.sender)]):
        revert with 0, 'Error: caller is not whiter'
    uint256(stor3[address(arg1)]) = not bool(uint8(stor3[address(arg1)])) or Mask(248, 8, uint256(stor3[address(arg1)]))
}

function sub_1d6fd86c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor3[address(msg.sender)]):
        revert with 0, 'Error: caller is not whiter'
    if tokens.length < 1:
        revert with 'NH{q', 17
    if tokens.length - 1 >= tokens.length:
        revert with 'NH{q', 50
    if arg1 >= tokens.length:
        revert with 'NH{q', 50
    tokens[arg1] = tokens[tokens.length]
    if not tokens.length:
        revert with 'NH{q', 49
    tokens[tokens.length] = 0
    tokens.length--
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor3[address(msg.sender)]):
        revert with 0, 'Error: caller is not whiter'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not uint8(stor3[address(msg.sender)]):
        revert with 0, 'Error: caller is not whiter'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAll() payable {
    mem[64] = 96
    mem[0] = msg.sender
    mem[32] = 3
    if not uint8(stor3[address(msg.sender)]):
        revert with 0, 'Error: caller is not whiter'
    idx = 0
    while idx < tokens.length:
        mem[0] = msg.sender
        mem[32] = 3
        if not uint8(stor3[address(msg.sender)]):
            revert with 0, 'Error: caller is not whiter'
        mem[mem[64] + 4] = this.address
        require ext_code.size(tokens[idx])
        staticcall tokens[idx].0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _22 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _23 = mem[_22]
        require mem[_22] == mem[_22]
        if mem[_22] > 0:
            mem[mem[64] + 4] = owner
            mem[mem[64] + 36] = _23
            require ext_code.size(tokens[idx])
            call tokens[idx].0xa9059cbb with:
                 gas gas_remaining wei
                args owner, _23
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == bool(mem[_26])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_97b11fe2(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 132).length) + 97 > test266151307() or floor32(('cd', 132).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[36]))
    call address(cd[36]).getReserves() with:
         gas gas_remaining wei
    mem[floor32(('cd', 132).length) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] > 0:
        if block.timestamp > -1001:
            revert with 'NH{q', 17
        mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 97] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 101] = cd[68]
        mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 133] = cd[100]
        mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 165] = 160
        mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 261] = ('cd', 132).length
        idx = 0
        s = 128
        t = floor32(('cd', 132).length) + ceil32(return_data.size) + 293
        while idx < ('cd', 132).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[68], cd[100], Array(len=('cd', 132).length, data=mem[floor32(('cd', 132).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 132).length]), msg.sender, block.timestamp + 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function name() payable {
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor0.length):
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
        if ceil32(stor0.length.field_1) > stor0.length.field_1:
            mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length.field_1), data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor0.length):
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[ceil32(stor0.length.field_1) + stor0.length.field_1 + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}



}
