contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
array of struct stor6;
array of struct stor7;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function skim(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xa271a759: ext_call.return_data[0], arg1, arg2
    return ext_call.return_data[0]
}

function sub_ef2baef7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4)[2] == address(('cd', 4)[2])
    staticcall address(('cd', 4)[2]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    stor1 = ('cd', 4).length
    require ('cd', 4)[0] == address(('cd', 4)[0])
    stor2 = address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    stor3 = address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    stor4 = address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    stor5 = address(('cd', 4)[3])
    require ('cd', 4)[4] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[4] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[4] + 4)])
    if cd[(cd[4] + ('cd', 4)[4] + 4)] > 18446744073709551616:
        revert with 0, 65
    stor6.length = cd[(cd[4] + ('cd', 4)[4] + 4)]
    if cd[(cd[4] + ('cd', 4)[4] + 4)] < stor6.length:
        idx = cd[(cd[4] + ('cd', 4)[4] + 4)]
        while idx < stor6.length:
            uint256(stor6[idx].field_0) = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = cd[4] + ('cd', 4)[4] + 36
    while idx < cd[(cd[4] + ('cd', 4)[4] + 4)]:
        require cd[t] == address(cd[t])
        address(stor6[s].field_0) = address(cd[t])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ('cd', 4)[5] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[5] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[5] + 36 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[5] + 4)])
    if cd[(cd[4] + ('cd', 4)[5] + 4)] > 18446744073709551616:
        revert with 0, 65
    stor7.length = cd[(cd[4] + ('cd', 4)[5] + 4)]
    if cd[(cd[4] + ('cd', 4)[5] + 4)] < stor7.length:
        idx = cd[(cd[4] + ('cd', 4)[5] + 4)]
        while idx < stor7.length:
            uint256(stor7[idx].field_0) = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 0
    t = cd[4] + ('cd', 4)[5] + 36
    while idx < cd[(cd[4] + ('cd', 4)[5] + 4)]:
        require cd[t] == address(cd[t])
        address(stor7[s].field_0) = address(cd[t])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(address(('cd', 4)[2]))
    if ext_call.return_data[12 len 20] == address(('cd', 4)[1]):
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ('cd', 4).length, 0, address(this.address), 128, 1, uint8(call.data[calldata.size len 1]), 0
    else:
        call address(('cd', 4)[2]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ('cd', 4).length, address(this.address), 128, 1, uint8(call.data[calldata.size len 1]), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if not stor6.length:
        if not stor7.length:
            if 0 >= stor7.length:
                revert with 0, 50
            _8 = mem[(32 * stor6.length) + 384]
            if not mem[(32 * stor6.length) + 396 len 20]:
                revert with 0, '0', 0
            s = 0
            idx = mem[(32 * stor6.length) + 396 len 20]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[(32 * stor6.length) + (32 * stor7.length) + 384] = s
            if s:
                mem[(32 * stor6.length) + (32 * stor7.length) + 416 len s] = call.data[calldata.size len s]
            t = s
            idx = address(_8)
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[(32 * stor6.length) + (32 * stor7.length) + 384]:
                    revert with 0, 50
                mem[t + (32 * stor6.length) + (32 * stor7.length) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
        else:
            mem[(32 * stor6.length) + 384] = address(stor7.field_0)
            idx = (32 * stor6.length) + 384
            s = 0
            while (32 * stor6.length) + (32 * stor7.length) + 352 > idx:
                mem[idx + 32] = address(stor7[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if 0 >= stor7.length:
                revert with 0, 50
            _34 = mem[(32 * stor6.length) + 384]
            if not mem[(32 * stor6.length) + 396 len 20]:
                var32001 = 32
                revert with 0, '0', 0
            s = 0
            idx = mem[(32 * stor6.length) + 396 len 20]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[(32 * stor6.length) + (32 * stor7.length) + 384] = s
            if s:
                mem[(32 * stor6.length) + (32 * stor7.length) + 416 len s] = call.data[calldata.size len s]
            t = s
            idx = address(_34)
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[(32 * stor6.length) + (32 * stor7.length) + 384]:
                    revert with 0, 50
                mem[t + (32 * stor6.length) + (32 * stor7.length) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
    else:
        idx = 352
        s = 0
        while (32 * stor6.length) + 320 > idx:
            mem[idx + 32] = address(stor6[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        if not stor7.length:
            if 0 >= stor7.length:
                revert with 0, 50
            _38 = mem[(32 * stor6.length) + 384]
            if not mem[(32 * stor6.length) + 396 len 20]:
                var32001 = 32
                revert with 0, '0', 0
            s = 0
            idx = mem[(32 * stor6.length) + 396 len 20]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[(32 * stor6.length) + (32 * stor7.length) + 384] = s
            if s:
                mem[(32 * stor6.length) + (32 * stor7.length) + 416 len s] = call.data[calldata.size len s]
            t = s
            idx = address(_38)
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[(32 * stor6.length) + (32 * stor7.length) + 384]:
                    revert with 0, 50
                mem[t + (32 * stor6.length) + (32 * stor7.length) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
        else:
            mem[(32 * stor6.length) + 384] = address(stor7.field_0)
            idx = (32 * stor6.length) + 384
            s = 0
            while (32 * stor6.length) + (32 * stor7.length) + 352 > idx:
                mem[idx + 32] = address(stor7[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if 0 >= stor7.length:
                revert with 0, 50
            _103 = mem[(32 * stor6.length) + 384]
            if not mem[(32 * stor6.length) + 396 len 20]:
                var36001 = 32
                revert with 0, '0', 0
            s = 0
            idx = mem[(32 * stor6.length) + 396 len 20]
            while idx:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = idx / 10
                continue 
            if s > test266151307():
                revert with 0, 65
            mem[(32 * stor6.length) + (32 * stor7.length) + 384] = s
            if s:
                mem[(32 * stor6.length) + (32 * stor7.length) + 416 len s] = call.data[calldata.size len s]
            t = s
            idx = address(_103)
            while idx:
                if t < 1:
                    revert with 0, 17
                if 48 > !(idx % 10):
                    revert with 0, 17
                if t - 1 >= mem[(32 * stor6.length) + (32 * stor7.length) + 384]:
                    revert with 0, 50
                mem[t + (32 * stor6.length) + (32 * stor7.length) + 415 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
                t = t - 1
                idx = idx / 10
                continue 
    mem[(32 * stor6.length) + (32 * stor7.length) + ceil32(s) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(32 * stor6.length) + (32 * stor7.length) + ceil32(s) + 420] = 32
    mem[(32 * stor6.length) + (32 * stor7.length) + ceil32(s) + 452] = mem[(32 * stor6.length) + (32 * stor7.length) + 384]
    mem[(32 * stor6.length) + (32 * stor7.length) + ceil32(s) + 484 len ceil32(mem[(32 * stor6.length) + (32 * stor7.length) + 384])] = mem[(32 * stor6.length) + (32 * stor7.length) + 416 len ceil32(mem[(32 * stor6.length) + (32 * stor7.length) + 384])]
    if ceil32(mem[(32 * stor6.length) + (32 * stor7.length) + 384]) > mem[(32 * stor6.length) + (32 * stor7.length) + 384]:
        mem[mem[(32 * stor6.length) + (32 * stor7.length) + 384] + (32 * stor6.length) + (32 * stor7.length) + ceil32(s) + 484] = 0
    revert with 0, 
                32,
                mem[(32 * stor6.length) + (32 * stor7.length) + 384],
                mem[(32 * stor6.length) + (32 * stor7.length) + ceil32(s) + 484 len ceil32(mem[(32 * stor6.length) + (32 * stor7.length) + 384])]
}

function sub_b9ee0863(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[(cd[4] + (32 * idx) + 36)] < calldata.size + -cd[4] - 259
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
        staticcall address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == mem[_69 + 12 len 20]
        require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
        if mem[_69 + 12 len 20] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)]):
            _71 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            mem[_71 + 32 len 1] = call.data[calldata.size len 1]
            stor1 = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            stor2 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            stor3 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
            stor4 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            stor5 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)])
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] > 18446744073709551616:
                revert with 0, 65
            stor6.length = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] < stor6.length:
                s = sha3(6) + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]
                while s < stor6.length + sha3(6):
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            s = 0
            t = sha3(6)
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68
            while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)])
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] > 18446744073709551616:
                revert with 0, 65
            stor7.length = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] < stor7.length:
                s = sha3(7) + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]
                while s < stor7.length + sha3(7):
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            mem[0] = 7
            s = 0
            t = sha3(7)
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68
            while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            mem[_71 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_71 + 68] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            mem[_71 + 100] = 0
            mem[_71 + 132] = this.address
            mem[_71 + 164] = 128
            mem[_71 + 196] = mem[_71]
            s = 0
            while s < mem[_71]:
                mem[s + _71 + 228] = mem[s + _71 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_71]) > mem[_71]:
                mem[mem[_71] + _71 + 228] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)], 0, address(this.address), 128, mem[_71], mem[_71 + 228 len ceil32(mem[_71])]
        else:
            _72 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            mem[_72 + 32 len 1] = call.data[calldata.size len 1]
            stor1 = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            stor2 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 68)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            stor3 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 100)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
            stor4 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)] == address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            stor5 = address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 164)])
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)])
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] > 18446744073709551616:
                revert with 0, 65
            stor6.length = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)] < stor6.length:
                s = sha3(6) + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]
                while s < stor6.length + sha3(6):
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            s = 0
            t = sha3(6)
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 68
            while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 196)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] < calldata.size + -cd[(cd[4] + (32 * idx) + 36)] + -cd[4] - 67
            require cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] <= test266151307()
            require cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68 <= calldata.size - (32 * cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)])
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] > 18446744073709551616:
                revert with 0, 65
            stor7.length = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]
            if cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)] < stor7.length:
                s = sha3(7) + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]
                while s < stor7.length + sha3(7):
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            mem[0] = 7
            s = 0
            t = sha3(7)
            u = cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 68
            while s < cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 228)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            mem[_72 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_72 + 68] = 0
            mem[_72 + 100] = cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)]
            mem[_72 + 132] = this.address
            mem[_72 + 164] = 128
            mem[_72 + 196] = mem[_72]
            s = 0
            while s < mem[_72]:
                mem[s + _72 + 228] = mem[s + _72 + 32]
                s = s + 32
                continue 
            if ceil32(mem[_72]) > mem[_72]:
                mem[mem[_72] + _72 + 228] = 0
            require ext_code.size(address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]))
            call address(cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 132)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(cd[(cd[4] + (32 * idx) + 36)] + cd[4] + 36)], address(this.address), 128, mem[_72], mem[_72 + 228 len ceil32(mem[_72])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
