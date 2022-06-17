contract main {




// =====================  Runtime code  =====================


#
#  - pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address owner;
uint256 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;

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

function sub_ef2baef7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size + -arg1 - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    revert with 0, 'executeTrade'
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
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(arg1) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0xa271a759: ext_call.return_data[0], arg1, arg2
    return ext_call.return_data[0]
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
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
        require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]))
        staticcall address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == mem[_69 + 12 len 20]
        require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
        if mem[_69 + 12 len 20] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)]):
            _71 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            mem[_71 + 32 len 1] = call.data[calldata.size len 1]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] == cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            stor1 = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
            stor2 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
            stor3 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
            stor4 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)])
            stor5 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)])
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)] > 18446744073709551616:
                revert with 'NH{q', 65
            stor6 = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)]
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)] < stor6:
                s = sha3(6) + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)]
                while s < sha3(6) + stor6:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            s = 0
            t = sha3(6)
            u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 68
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)])
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)] > 18446744073709551616:
                revert with 'NH{q', 65
            stor7 = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)]
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)] < stor7:
                s = sha3(7) + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)]
                while s < sha3(7) + stor7:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            mem[0] = 7
            s = 0
            t = sha3(7)
            u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 68
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            mem[_71 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_71 + 68] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[_71 + 100] = 0
            mem[_71 + 132] = this.address
            mem[_71 + 164] = 128
            mem[_71 + 196] = mem[_71]
            s = 0
            while s < mem[_71]:
                mem[_71 + s + 228] = mem[_71 + s + 32]
                s = s + 32
                continue 
            if ceil32(mem[_71]) > mem[_71]:
                mem[_71 + mem[_71] + 228] = 0
            require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]))
            call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)], 0, address(this.address), 128, mem[_71], mem[_71 + 228 len ceil32(mem[_71])]
        else:
            _72 = mem[64]
            mem[mem[64]] = 1
            mem[64] = mem[64] + 64
            mem[_72 + 32 len 1] = call.data[calldata.size len 1]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)] == cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            stor1 = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
            stor2 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 68)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
            stor3 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 100)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
            stor4 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)] == address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)])
            stor5 = address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 164)])
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)])
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)] > 18446744073709551616:
                revert with 'NH{q', 65
            stor6 = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)]
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)] < stor6:
                s = sha3(6) + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)]
                while s < sha3(6) + stor6:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            s = 0
            t = sha3(6)
            u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 68
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 196)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] < calldata.size + -cd[4] + -cd[(cd[4] + (32 * idx) + 36)] - 67
            require cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)] <= test266151307()
            require cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 68 <= calldata.size - (32 * cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)])
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)] > 18446744073709551616:
                revert with 'NH{q', 65
            stor7 = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)]
            if cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)] < stor7:
                s = sha3(7) + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)]
                while s < sha3(7) + stor7:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            mem[0] = 7
            s = 0
            t = sha3(7)
            u = cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 68
            while s < cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 228)] + 36)]:
                require cd[u] == address(cd[u])
                address(stor[t]) = address(cd[u])
                s = s + 1
                t = t + 1
                u = u + 32
                continue 
            mem[_72 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_72 + 68] = 0
            mem[_72 + 100] = cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)]
            mem[_72 + 132] = this.address
            mem[_72 + 164] = 128
            mem[_72 + 196] = mem[_72]
            s = 0
            while s < mem[_72]:
                mem[_72 + s + 228] = mem[_72 + s + 32]
                s = s + 32
                continue 
            if ceil32(mem[_72]) > mem[_72]:
                mem[_72 + mem[_72] + 228] = 0
            require ext_code.size(address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]))
            call address(cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 132)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, cd[(cd[4] + cd[(cd[4] + (32 * idx) + 36)] + 36)], address(this.address), 128, mem[_72], mem[_72 + 228 len ceil32(mem[_72])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
