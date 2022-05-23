contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_4e52ead9(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(cd[4]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[96] = 2
        mem[64] = 192
        mem[128] = address(cd[4])
        mem[160] = address(cd[36])
        idx = 0
        while idx < ('cd', 132).length:
            if not ('cd', 132).length:
                revert with 'NH{q', 18
            if idx >= ('cd', 132).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = cd[68] / ('cd', 132).length
            mem[mem[64] + 36] = cd[100]
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = mem[96]
            s = 0
            t = 128
            u = mem[64] + 196
            while s < mem[96]:
                mem[u] = mem[t + 12 len 20]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
            mem[mem[64] + 132] = block.timestamp
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[68] / ('cd', 132).length, cd[100], 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _73 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _76 = mem[_73]
            require mem[_73] <= test266151307()
            require _73 + mem[_73] + 31 < _73 + return_data.size
            _79 = mem[_73 + mem[_73]]
            if mem[_73 + mem[_73]] > test266151307():
                revert with 'NH{q', 65
            if _73 + ceil32(return_data.size) + (32 * mem[_73 + mem[_73]]) + 32 > test266151307() or (32 * mem[_73 + mem[_73]]) + 32 < 0:
                revert with 'NH{q', 65
            mem[64] = _73 + ceil32(return_data.size) + (32 * mem[_73 + mem[_73]]) + 32
            mem[_73 + ceil32(return_data.size)] = _79
            require _76 + (32 * _79) + 32 <= return_data.size
            s = 0
            t = _73 + _76 + 32
            u = _73 + ceil32(return_data.size) + 32
            while s < _79:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        if address(cd[36]) == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[96] = 2
            mem[64] = 192
            mem[128] = address(cd[4])
            mem[160] = address(cd[36])
            idx = 0
            while idx < ('cd', 132).length:
                if not ('cd', 132).length:
                    revert with 'NH{q', 18
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68] / ('cd', 132).length
                mem[mem[64] + 36] = cd[100]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[68] / ('cd', 132).length, cd[100], 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _75 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _78 = mem[_75]
                require mem[_75] <= test266151307()
                require _75 + mem[_75] + 31 < _75 + return_data.size
                _81 = mem[_75 + mem[_75]]
                if mem[_75 + mem[_75]] > test266151307():
                    revert with 'NH{q', 65
                if _75 + ceil32(return_data.size) + (32 * mem[_75 + mem[_75]]) + 32 > test266151307() or (32 * mem[_75 + mem[_75]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _75 + ceil32(return_data.size) + (32 * mem[_75 + mem[_75]]) + 32
                mem[_75 + ceil32(return_data.size)] = _81
                require _78 + (32 * _81) + 32 <= return_data.size
                s = 0
                t = _75 + _78 + 32
                u = _75 + ceil32(return_data.size) + 32
                while s < _81:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
        else:
            mem[96] = 3
            mem[64] = 224
            mem[128] = address(cd[4])
            mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[192] = address(cd[36])
            idx = 0
            while idx < ('cd', 132).length:
                if not ('cd', 132).length:
                    revert with 'NH{q', 18
                if idx >= ('cd', 132).length:
                    revert with 'NH{q', 50
                require cd[((32 * idx) + cd[132] + 36)] == address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = cd[68] / ('cd', 132).length
                mem[mem[64] + 36] = cd[100]
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = mem[96]
                s = 0
                t = 128
                u = mem[64] + 196
                while s < mem[96]:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                mem[mem[64] + 132] = block.timestamp
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[68] / ('cd', 132).length, cd[100], 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp, mem[mem[64] + 164 len (32 * mem[96]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _74 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _77 = mem[_74]
                require mem[_74] <= test266151307()
                require _74 + mem[_74] + 31 < _74 + return_data.size
                _80 = mem[_74 + mem[_74]]
                if mem[_74 + mem[_74]] > test266151307():
                    revert with 'NH{q', 65
                if _74 + ceil32(return_data.size) + (32 * mem[_74 + mem[_74]]) + 32 > test266151307() or (32 * mem[_74 + mem[_74]]) + 32 < 0:
                    revert with 'NH{q', 65
                mem[64] = _74 + ceil32(return_data.size) + (32 * mem[_74 + mem[_74]]) + 32
                mem[_74 + ceil32(return_data.size)] = _80
                require _77 + (32 * _80) + 32 <= return_data.size
                s = 0
                t = _74 + _77 + 32
                u = _74 + ceil32(return_data.size) + 32
                while s < _80:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
}



}
