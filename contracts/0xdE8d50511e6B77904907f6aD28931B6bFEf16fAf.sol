contract main {




// =====================  Runtime code  =====================


#
#  - sub_13794211(?)
#
uint256 count;
address adminAddress;
array of address sub_22f03136;
mapping of uint256 workers;
array of address sub_c2af71f6;
mapping of uint256 sub_eeb98d9c;
array of address sub_7e9c7576;
mapping of uint256 sub_ac055fe7;
mapping of uint256 sub_12109d52;
mapping of uint256 sub_25bc368e;
array of address sub_ad497447;

function count() payable {
    return count
}

function sub_12109d52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_12109d52[arg1]
}

function sub_22f03136(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_22f03136.length
    return sub_22f03136[arg1]
}

function sub_25bc368e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_25bc368e[arg1]
}

function workers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return workers[arg1]
}

function sub_7e9c7576(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_7e9c7576.length
    return sub_7e9c7576[arg1]
}

function getCount() payable {
    return count
}

function sub_ac055fe7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ac055fe7[arg1]
}

function sub_ad497447(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_ad497447.length
    return sub_ad497447[arg1]
}

function sub_c2af71f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_c2af71f6.length
    return sub_c2af71f6[arg1]
}

function sub_eeb98d9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_eeb98d9c[arg1]
}

function admin() payable {
    return adminAddress
}

function sub_afafbf6f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        revert with 0, '0'
    selfdestruct(address(arg1))
}

function _fallback() payable {
    revert
}

function setWorker(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, '0'
    if arg2 == 1:
        sub_22f03136.length++
        sub_22f03136[sub_22f03136.length] = arg1
    workers[address(arg1)] = arg2
}

function sub_c04f2872(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, '0'
    if arg2 == 1:
        sub_7e9c7576.length++
        sub_7e9c7576[sub_7e9c7576.length] = address(arg1)
    sub_ac055fe7[address(arg1)] = arg2
}

function sub_e7c03d07(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if adminAddress != msg.sender:
        revert with 0, '0'
    if arg2 == 1:
        sub_c2af71f6.length++
        sub_c2af71f6[sub_c2af71f6.length] = address(arg1)
    sub_eeb98d9c[address(arg1)] = arg2
}

function setTokens(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    sub_ad497447.length = arg1.length
    if not arg1.length:
        idx = 0
        while sub_ad497447.length > idx:
            sub_ad497447[idx] = 0
            idx = idx + 1
            continue 
    else:
        idx = arg1 + (32 * arg1.length) + 36
        while sha3(10) + sub_ad497447.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
}

function sub_a1efa4ec(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if adminAddress != msg.sender:
        revert with 0, '0'
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + arg3.length + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'target.call failed!'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[arg3.length + 160 len (2 * ceil32(arg3.length)) + -arg3.length + 32]
}

function sub_491a5be6(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 <= test266151307() and (32 * ('cd', 36).length) + 160 >= 128
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 <= test266151307() and (32 * ('cd', 68).length) + 192 >= 160
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if ('cd', 4).length != ('cd', 68).length:
        revert with 0, 'length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 68).length
        require idx < ('cd', 4).length
        sub_12109d52[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        require idx < ('cd', 68).length
        require idx < ('cd', 36).length
        mem[0] = mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]
        mem[32] = 9
        sub_25bc368e[mem[(32 * idx) + (32 * ('cd', 4).length) + 172 len 20]] = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
        idx = idx + 1
        continue 
}

function sub_54be3288(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if adminAddress != msg.sender:
        revert with 0, '0'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
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
}

function sub_07d63ff5(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if adminAddress != msg.sender:
        revert with 0, '0'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 0, 'no enough'
    mem[ceil32(return_data.size) + 132] = address(arg2)
    mem[ceil32(return_data.size) + 164] = arg3
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(address(arg1)) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3, 0) << 288)
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
}

function sub_e699558e(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    mem[0] = address(arg1)
    mem[32] = 9
    if sub_25bc368e[address(arg1)] <= 0:
        revert with 0, 'not allowed R'
    idx = 0
    while idx < sub_ad497447.length:
        mem[0] = 10
        _72 = mem[64]
        mem[mem[64] + 36] = address(arg1)
        mem[mem[64] + 68] = 0
        _73 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_73 + 32] = mem[_73 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[64] = _72 + 164
        mem[_72 + 100] = 32
        mem[_72 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(sub_ad497447[idx]) <= 0:
            revert with 0, 'Address: call to non-contract'
        _79 = mem[_73]
        s = 0
        while s < _79:
            mem[_72 + s + 164] = mem[_73 + s + 32]
            s = s + 32
            continue 
        if ceil32(_79) > _79:
            mem[_72 + _79 + 164] = 0
        call sub_ad497447[idx].mem[_72 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_72 + 168 len _79 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_72 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_72 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_72 + idx + 232] = mem[_72 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_72 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _72 + ceil32(return_data.size) + 165
            mem[_72 + 164] = return_data.size
            mem[_72 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_72 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_72 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[_72 + ceil32(return_data.size) + idx + 233] = mem[_72 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_72 + ceil32(return_data.size) + 233]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_72 + 196] == bool(mem[_72 + 196])
                if not mem[_72 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        idx = idx + 1
        continue 
}

function sub_1b357792(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == cd[36]
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 128 <= test266151307() and (32 * ('cd', 68).length) + 128 >= 96
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 68).length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * ('cd', 68).length) + 132] = cd[36]
    mem[(32 * ('cd', 68).length) + 164] = 64
    mem[(32 * ('cd', 68).length) + 196] = ('cd', 68).length
    idx = 0
    s = 128
    t = (32 * ('cd', 68).length) + 228
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[(32 * ('cd', 68).length) + 132 len (96 * ('cd', 68).length) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ('cd', 68).length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _33 = mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32
    require mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
    require (32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 159 < (32 * ('cd', 68).length) + return_data.size + 128
    _34 = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128] <= test266151307()
    require (32 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160 <= test266151307() and (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 32 >= 0
    mem[64] = (32 * ('cd', 68).length) + ceil32(return_data.size) + (32 * mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]) + 160
    mem[(32 * ('cd', 68).length) + ceil32(return_data.size) + 128] = mem[(32 * ('cd', 68).length) + mem[(32 * ('cd', 68).length) + 128 len 4], Mask(224, 32, cd[36]) >> 32 + 128]
    require _33 + (32 * _34) + 32 <= return_data.size
    idx = 0
    s = (32 * ('cd', 68).length) + _33 + 160
    t = (32 * ('cd', 68).length) + ceil32(return_data.size) + 160
    while idx < _34:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _34 - 1 < _34
    mem[mem[64]] = mem[(32 * _34 - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160]
    return memory
      from mem[64]
       len 32
}

function sub_bdb6c052(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    mem[0] = address(arg1)
    mem[32] = 9
    if sub_25bc368e[address(arg1)] <= 0:
        revert with 0, 'not allowed R'
    idx = 0
    while idx < sub_ad497447.length:
        mem[0] = 10
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(arg1)
        require ext_code.size(sub_ad497447[idx])
        staticcall sub_ad497447[idx].0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _80 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_80] == mem[_80]
        if mem[_80]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _82 = mem[64]
        mem[mem[64] + 36] = address(arg1)
        mem[mem[64] + 68] = -1
        _85 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_85 + 32] = mem[_85 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[64] = _82 + 164
        mem[_82 + 100] = 32
        mem[_82 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if ext_code.size(sub_ad497447[idx]) <= 0:
            revert with 0, 'Address: call to non-contract'
        _91 = mem[_85]
        s = 0
        while s < _91:
            mem[_82 + s + 164] = mem[_85 + s + 32]
            s = s + 32
            continue 
        if ceil32(_91) > _91:
            mem[_82 + _91 + 164] = 0
        call sub_ad497447[idx].mem[_82 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_82 + 168 len _91 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96] > 0:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_82 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_82 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[_82 + idx + 232] = mem[_82 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_82 + 232]
            if mem[96] > 0:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _82 + ceil32(return_data.size) + 165
            mem[_82 + 164] = return_data.size
            mem[_82 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_82 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_82 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[_82 + ceil32(return_data.size) + idx + 233] = mem[_82 + idx + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_82 + ceil32(return_data.size) + 233]
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[_82 + 196] == bool(mem[_82 + 196])
                if not mem[_82 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        idx = idx + 1
        continue 
}

function sub_03f119b3(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    require ('cd', 4).length >= 160
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 67 < cd[4] + ('cd', 4).length + 36
    require cd[(cd[4] + ('cd', 4)[4] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576 <= test266151307() and (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576 >= 544
    mem[544] = cd[(cd[4] + ('cd', 4)[4] + 36)]
    require ('cd', 4)[4] + (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 68 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 68
    t = 576
    while idx < cd[(cd[4] + ('cd', 4)[4] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[384] = 544
    mem[192] = address(('cd', 4)[3])
    mem[160] = address(('cd', 4)[2])
    mem[128] = address(('cd', 4)[1])
    mem[96] = address(('cd', 4)[0])
    require ('cd', 36).length >= 128
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require ('cd', 36)[2] == address(('cd', 36)[2])
    require ('cd', 36)[3] <= test266151307()
    require cd[36] + ('cd', 36)[3] + 67 < cd[36] + ('cd', 36).length + 36
    require cd[(cd[36] + ('cd', 36)[3] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608 <= test266151307() and (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608 >= 576
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576] = cd[(cd[36] + ('cd', 36)[3] + 36)]
    require ('cd', 36)[3] + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 68 <= ('cd', 36).length + 36
    idx = 0
    s = cd[36] + ('cd', 36)[3] + 68
    t = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 608
    while idx < cd[(cd[36] + ('cd', 36)[3] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[352] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576
    mem[288] = address(('cd', 36)[2])
    mem[256] = address(('cd', 36)[1])
    mem[224] = address(('cd', 36)[0])
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608] = 2
    mem[320] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 640] = uint64(('cd', 4)[2]) << 96
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 672] = uint64(('cd', 4)[3]) << 96
    require 2 < cd[(cd[4] + ('cd', 4)[4] + 36)]
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 708] = mem[640]
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 740] = 64
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 772] = 2
    idx = 0
    s = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 640
    t = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 804
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[640], Array(len=2, data=mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 804 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 704
    require return_data.size >= 32
    _342 = mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28]
    require mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 735 < (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + return_data.size + 704
    _343 = mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]
    require mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]) + 736 <= test266151307() and (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]) + 32 >= 0
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]) + 736
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 704] = mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]
    require _342 + (32 * _343) + 32 <= return_data.size
    idx = 0
    s = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + _342 + 736
    t = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 736
    while idx < _343:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _343 - 1 < _343
    mem[416] = mem[(32 * _343 - 1) + (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 736]
    _540 = mem[(32 * _343 - 1) + (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 736]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _540
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = cd[(cd[36] + ('cd', 36)[3] + 36)]
    idx = 0
    s = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 608
    t = mem[64] + 100
    while idx < cd[(cd[36] + ('cd', 36)[3] + 36)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(('cd', 36)[2]))
    staticcall address(('cd', 36)[2]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _540, Array(len=cd[(cd[36] + ('cd', 36)[3] + 36)], data=mem[mem[64] + 100 len 32 * cd[(cd[36] + ('cd', 36)[3] + 36)]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _736 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _737 = mem[_736]
    require mem[_736] <= test266151307()
    require _736 + mem[_736] + 31 < _736 + return_data.size
    _738 = mem[_736 + mem[_736]]
    require mem[_736 + mem[_736]] <= test266151307()
    require _736 + ceil32(return_data.size) + (32 * mem[_736 + mem[_736]]) + 32 <= test266151307() and (32 * mem[_736 + mem[_736]]) + 32 >= 0
    mem[64] = _736 + ceil32(return_data.size) + (32 * mem[_736 + mem[_736]]) + 32
    mem[_736 + ceil32(return_data.size)] = _738
    require _737 + (32 * _738) + 32 <= return_data.size
    idx = 0
    s = _736 + _737 + 32
    t = _736 + ceil32(return_data.size) + 32
    while idx < _738:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _738 - 1 < _738
    mem[416] = mem[(32 * _738 - 1) + _736 + ceil32(return_data.size) + 32]
    require 2 < mem[mem[384]]
    if mem[(32 * _738 - 1) + _736 + ceil32(return_data.size) + 32] <= mem[mem[384] + 96]:
        revert with 0, 'noP1'
    require 2 < mem[mem[384]]
    if 10^10 * mem[(32 * _738 - 1) + _736 + ceil32(return_data.size) + 32] / 10^10 != mem[(32 * _738 - 1) + _736 + ceil32(return_data.size) + 32]:
        revert with 0, 'SafeMath: multiplication overflow'
    if mem[mem[384] + 96] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require mem[mem[384] + 96]
    mem[416] = 10^10 * mem[(32 * _738 - 1) + _736 + ceil32(return_data.size) + 32] / mem[mem[384] + 96]
    require 1 < mem[mem[384]]
    if 10^10 > mem[416]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not mem[416] - 10^10:
        if mem[mem[384] + 64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require mem[mem[384] + 64]
        mem[448] = 0 / mem[mem[384] + 64] / 2
        require 0 < mem[mem[384]]
        if 10^10 > mem[416]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not mem[416] - 10^10:
            mem[480] = 0
            _975 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = mem[172 len 20]
            mem[mem[64] + 128] = mem[204 len 20]
            mem[mem[64] + 160] = mem[236 len 20]
            mem[mem[64] + 192] = mem[268 len 20]
            mem[mem[64] + 224] = mem[300 len 20]
            mem[mem[64] + 256] = 448
            _1027 = mem[mem[320]]
            mem[mem[64] + 480] = mem[mem[320]]
            idx = 0
            s = mem[320] + 32
            t = mem[64] + 512
            while idx < _1027:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1119 = mem[352]
            mem[_975 + 288] = (32 * _1027) + 480
            _1125 = mem[_1119]
            mem[_975 + (32 * _1027) + 512] = mem[_1119]
            idx = 0
            s = _1119 + 32
            t = _975 + (32 * _1027) + 544
            while idx < _1125:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1191 = mem[384]
            mem[_975 + 320] = (32 * _1027) + (32 * _1125) + 512
            _1197 = mem[_1191]
            mem[_975 + (32 * _1027) + (32 * _1125) + 544] = mem[_1191]
            mem[_975 + (32 * _1027) + (32 * _1125) + 576 len 32 * _1197] = mem[_1191 + 32 len 32 * _1197]
            mem[_975 + 352] = mem[416]
            mem[_975 + 384] = mem[448]
            mem[_975 + 416] = mem[480]
            mem[_975 + 448] = bool(mem[512])
            return memory
              from mem[64]
               len _975 + (32 * _1027) + (32 * _1125) + (32 * _1197) + -mem[64] + 576
        require mem[416] - 10^10
        if (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) / mem[416] - 10^10 != mem[448]:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]):
            mem[480] = 0
            _978 = mem[64]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = mem[108 len 20]
            mem[mem[64] + 64] = mem[140 len 20]
            mem[mem[64] + 96] = mem[172 len 20]
            mem[mem[64] + 128] = mem[204 len 20]
            mem[mem[64] + 160] = mem[236 len 20]
            mem[mem[64] + 192] = mem[268 len 20]
            mem[mem[64] + 224] = mem[300 len 20]
            mem[mem[64] + 256] = 448
            _1031 = mem[mem[320]]
            mem[mem[64] + 480] = mem[mem[320]]
            idx = 0
            s = mem[320] + 32
            t = mem[64] + 512
            while idx < _1031:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1118 = mem[352]
            mem[_978 + 288] = (32 * _1031) + 480
            _1124 = mem[_1118]
            mem[_978 + (32 * _1031) + 512] = mem[_1118]
            idx = 0
            s = _1118 + 32
            t = _978 + (32 * _1031) + 544
            while idx < _1124:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _1190 = mem[384]
            mem[_978 + 320] = (32 * _1031) + (32 * _1124) + 512
            _1196 = mem[_1190]
            mem[_978 + (32 * _1031) + (32 * _1124) + 544] = mem[_1190]
            mem[_978 + (32 * _1031) + (32 * _1124) + 576 len 32 * _1196] = mem[_1190 + 32 len 32 * _1196]
            mem[_978 + 352] = mem[416]
            mem[_978 + 384] = mem[448]
            mem[_978 + 416] = mem[480]
            mem[_978 + 448] = bool(mem[512])
            return memory
              from mem[64]
               len _978 + (32 * _1031) + (32 * _1124) + (32 * _1196) + -mem[64] + 576
        require (-1 * 10^10 * mem[448]) + (mem[416] * mem[448])
        if (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) != mem[mem[384] + 32]:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[480] = (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / 100 * 10^18 / 2
        _982 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[108 len 20]
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = mem[172 len 20]
        mem[mem[64] + 128] = mem[204 len 20]
        mem[mem[64] + 160] = mem[236 len 20]
        mem[mem[64] + 192] = mem[268 len 20]
        mem[mem[64] + 224] = mem[300 len 20]
        mem[mem[64] + 256] = 448
        _1034 = mem[mem[320]]
        mem[mem[64] + 480] = mem[mem[320]]
        idx = 0
        s = mem[320] + 32
        t = mem[64] + 512
        while idx < _1034:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 288] = (32 * _1034) + 480
        _1123 = mem[mem[352]]
        mem[mem[64] + (32 * _1034) + 512] = mem[mem[352]]
        idx = 0
        s = mem[352] + 32
        t = mem[64] + (32 * _1034) + 544
        while idx < _1123:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1189 = mem[384]
        mem[_982 + 320] = (32 * _1034) + (32 * _1123) + 512
        _1195 = mem[_1189]
        mem[_982 + (32 * _1034) + (32 * _1123) + 544] = mem[_1189]
        mem[_982 + (32 * _1034) + (32 * _1123) + 576 len 32 * _1195] = mem[_1189 + 32 len 32 * _1195]
        mem[_982 + 352] = mem[416]
        mem[_982 + 384] = mem[448]
        mem[_982 + 416] = mem[480]
        mem[_982 + 448] = bool(mem[512])
        return memory
          from mem[64]
           len _982 + (32 * _1034) + (32 * _1123) + (32 * _1195) + -mem[64] + 576
    require mem[416] - 10^10
    if (10^10 * mem[416]) - 100 * 10^18 / mem[416] - 10^10 != 10^10:
        revert with 0, 'SafeMath: multiplication overflow'
    if mem[mem[384] + 64] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require mem[mem[384] + 64]
    mem[448] = (10^10 * mem[416]) - 100 * 10^18 / mem[mem[384] + 64] / 2
    require 0 < mem[mem[384]]
    if 10^10 > mem[416]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not mem[416] - 10^10:
        mem[480] = 0
        _977 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[108 len 20]
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = mem[172 len 20]
        mem[mem[64] + 128] = mem[204 len 20]
        mem[mem[64] + 160] = mem[236 len 20]
        mem[mem[64] + 192] = mem[268 len 20]
        mem[mem[64] + 224] = mem[300 len 20]
        mem[mem[64] + 256] = 448
        _1029 = mem[mem[320]]
        mem[mem[64] + 480] = mem[mem[320]]
        idx = 0
        s = mem[320] + 32
        t = mem[64] + 512
        while idx < _1029:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1116 = mem[352]
        mem[_977 + 288] = (32 * _1029) + 480
        _1122 = mem[_1116]
        mem[_977 + (32 * _1029) + 512] = mem[_1116]
        idx = 0
        s = _1116 + 32
        t = _977 + (32 * _1029) + 544
        while idx < _1122:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1188 = mem[384]
        mem[_977 + 320] = (32 * _1029) + (32 * _1122) + 512
        _1194 = mem[_1188]
        mem[_977 + (32 * _1029) + (32 * _1122) + 544] = mem[_1188]
        mem[_977 + (32 * _1029) + (32 * _1122) + 576 len 32 * _1194] = mem[_1188 + 32 len 32 * _1194]
        mem[_977 + 352] = mem[416]
        mem[_977 + 384] = mem[448]
        mem[_977 + 416] = mem[480]
        mem[_977 + 448] = bool(mem[512])
        return memory
          from mem[64]
           len _977 + (32 * _1029) + (32 * _1122) + (32 * _1194) + -mem[64] + 576
    require mem[416] - 10^10
    if (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) / mem[416] - 10^10 != mem[448]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]):
        mem[480] = 0
        _980 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[108 len 20]
        mem[mem[64] + 64] = mem[140 len 20]
        mem[mem[64] + 96] = mem[172 len 20]
        mem[mem[64] + 128] = mem[204 len 20]
        mem[mem[64] + 160] = mem[236 len 20]
        mem[mem[64] + 192] = mem[268 len 20]
        mem[mem[64] + 224] = mem[300 len 20]
        mem[mem[64] + 256] = 448
        _1033 = mem[mem[320]]
        mem[mem[64] + 480] = mem[mem[320]]
        idx = 0
        s = mem[320] + 32
        t = mem[64] + 512
        while idx < _1033:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1115 = mem[352]
        mem[_980 + 288] = (32 * _1033) + 480
        _1121 = mem[_1115]
        mem[_980 + (32 * _1033) + 512] = mem[_1115]
        idx = 0
        s = _1115 + 32
        t = _980 + (32 * _1033) + 544
        while idx < _1121:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _1187 = mem[384]
        mem[_980 + 320] = (32 * _1033) + (32 * _1121) + 512
        _1193 = mem[_1187]
        mem[_980 + (32 * _1033) + (32 * _1121) + 544] = mem[_1187]
        mem[_980 + (32 * _1033) + (32 * _1121) + 576 len 32 * _1193] = mem[_1187 + 32 len 32 * _1193]
        mem[_980 + 352] = mem[416]
        mem[_980 + 384] = mem[448]
        mem[_980 + 416] = mem[480]
        mem[_980 + 448] = bool(mem[512])
        return memory
          from mem[64]
           len _980 + (32 * _1033) + (32 * _1121) + (32 * _1193) + -mem[64] + 576
    require (-1 * 10^10 * mem[448]) + (mem[416] * mem[448])
    if (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) != mem[mem[384] + 32]:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[480] = (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / 100 * 10^18 / 2
    _984 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[108 len 20]
    mem[mem[64] + 64] = mem[140 len 20]
    mem[mem[64] + 96] = mem[172 len 20]
    mem[mem[64] + 128] = mem[204 len 20]
    mem[mem[64] + 160] = mem[236 len 20]
    mem[mem[64] + 192] = mem[268 len 20]
    mem[mem[64] + 224] = mem[300 len 20]
    mem[mem[64] + 256] = 448
    _1035 = mem[mem[320]]
    mem[mem[64] + 480] = mem[mem[320]]
    idx = 0
    s = mem[320] + 32
    t = mem[64] + 512
    while idx < _1035:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 288] = (32 * _1035) + 480
    _1120 = mem[mem[352]]
    mem[mem[64] + (32 * _1035) + 512] = mem[mem[352]]
    idx = 0
    s = mem[352] + 32
    t = mem[64] + (32 * _1035) + 544
    while idx < _1120:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _1186 = mem[384]
    mem[_984 + 320] = (32 * _1035) + (32 * _1120) + 512
    _1192 = mem[_1186]
    mem[_984 + (32 * _1035) + (32 * _1120) + 544] = mem[_1186]
    mem[_984 + (32 * _1035) + (32 * _1120) + 576 len 32 * _1192] = mem[_1186 + 32 len 32 * _1192]
    mem[_984 + 352] = mem[416]
    mem[_984 + 384] = mem[448]
    mem[_984 + 416] = mem[480]
    mem[_984 + 448] = bool(mem[512])
    return memory
      from mem[64]
       len _984 + (32 * _1035) + (32 * _1120) + (32 * _1192) + -mem[64] + 576
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _588 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _596 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _588 + (32 * _596) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _588 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _596:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _596 - 1 < _596
                mem[256] = mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1268 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1284 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1268 + 100] = 32
                mem[_1268 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1332 = mem[_1284]
                mem[_1268 + 164 len ceil32(mem[_1284])] = mem[_1284 + 32 len ceil32(mem[_1284])]
                if ceil32(_1332) > _1332:
                    mem[_1268 + _1332 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1268 + 168 len _1332 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1268 + 196] == bool(mem[_1268 + 196])
                        if not mem[_1268 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _589 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _597 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _589 + (32 * _597) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _589 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _597:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _597 - 1 < _597
                mem[256] = mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1269 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1286 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1269 + 100] = 32
                mem[_1269 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1334 = mem[_1286]
                mem[_1269 + 164 len ceil32(mem[_1286])] = mem[_1286 + 32 len ceil32(mem[_1286])]
                if ceil32(_1334) > _1334:
                    mem[_1269 + _1334 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1269 + 168 len _1334 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1269 + 196] == bool(mem[_1269 + 196])
                        if not mem[_1269 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _590 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _598 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _590 + (32 * _598) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _590 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _598:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _598 - 1 < _598
                mem[256] = mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1270 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1288 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1270 + 100] = 32
                mem[_1270 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1336 = mem[_1288]
                mem[_1270 + 164 len ceil32(mem[_1288])] = mem[_1288 + 32 len ceil32(mem[_1288])]
                if ceil32(_1336) > _1336:
                    mem[_1270 + _1336 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1270 + 168 len _1336 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1270 + 196] == bool(mem[_1270 + 196])
                        if not mem[_1270 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _591 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _599 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _591 + (32 * _599) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _591 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _599:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _599 - 1 < _599
                mem[256] = mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1271 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1290 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1271 + 100] = 32
                mem[_1271 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1338 = mem[_1290]
                mem[_1271 + 164 len ceil32(mem[_1290])] = mem[_1290 + 32 len ceil32(mem[_1290])]
                if ceil32(_1338) > _1338:
                    mem[_1271 + _1338 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1338 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg3:
            revert with 0, 'need zero'
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _592 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _600 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _592 + (32 * _600) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _592 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _600:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _600 - 1 < _600
                mem[256] = mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1272 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1292 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1272 + 100] = 32
                mem[_1272 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1340 = mem[_1292]
                mem[_1272 + 164 len ceil32(mem[_1292])] = mem[_1292 + 32 len ceil32(mem[_1292])]
                if ceil32(_1340) > _1340:
                    mem[_1272 + _1340 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1272 + 168 len _1340 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1272 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1272 + 196] == bool(mem[_1272 + 196])
                        if not mem[_1272 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _593 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _601 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _593 + (32 * _601) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _593 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _601 - 1 < _601
                mem[256] = mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1273 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1294 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1273 + 100] = 32
                mem[_1273 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1342 = mem[_1294]
                mem[_1273 + 164 len ceil32(mem[_1294])] = mem[_1294 + 32 len ceil32(mem[_1294])]
                if ceil32(_1342) > _1342:
                    mem[_1273 + _1342 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1273 + 168 len _1342 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1273 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1273 + 196] == bool(mem[_1273 + 196])
                        if not mem[_1273 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _594 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _602 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _594 + (32 * _602) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _594 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _602:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _602 - 1 < _602
                mem[256] = mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1274 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1296 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1274 + 100] = 32
                mem[_1274 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1344 = mem[_1296]
                mem[_1274 + 164 len ceil32(mem[_1296])] = mem[_1296 + 32 len ceil32(mem[_1296])]
                if ceil32(_1344) > _1344:
                    mem[_1274 + _1344 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1274 + 168 len _1344 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1274 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1274 + 196] == bool(mem[_1274 + 196])
                        if not mem[_1274 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _595 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _603 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _595 + (32 * _603) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _595 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _603:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _603 - 1 < _603
                mem[256] = mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1275 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1298 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1275 + 100] = 32
                mem[_1275 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1346 = mem[_1298]
                mem[_1275 + 164 len ceil32(mem[_1298])] = mem[_1298 + 32 len ceil32(mem[_1298])]
                if ceil32(_1346) > _1346:
                    mem[_1275 + _1346 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1275 + 168 len _1346 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1275 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1275 + 196] == bool(mem[_1275 + 196])
                        if not mem[_1275 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    count++
}

function swapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _588 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _596 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _588 + (32 * _596) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _588 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _596:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _596 - 1 < _596
                mem[256] = mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1268 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1284 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1268 + 100] = 32
                mem[_1268 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1332 = mem[_1284]
                mem[_1268 + 164 len ceil32(mem[_1284])] = mem[_1284 + 32 len ceil32(mem[_1284])]
                if ceil32(_1332) > _1332:
                    mem[_1268 + _1332 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1268 + 168 len _1332 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1268 + 196] == bool(mem[_1268 + 196])
                        if not mem[_1268 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _589 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _597 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _589 + (32 * _597) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _589 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _597:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _597 - 1 < _597
                mem[256] = mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1269 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1286 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1269 + 100] = 32
                mem[_1269 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1334 = mem[_1286]
                mem[_1269 + 164 len ceil32(mem[_1286])] = mem[_1286 + 32 len ceil32(mem[_1286])]
                if ceil32(_1334) > _1334:
                    mem[_1269 + _1334 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1269 + 168 len _1334 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1269 + 196] == bool(mem[_1269 + 196])
                        if not mem[_1269 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _590 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _598 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _590 + (32 * _598) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _590 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _598:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _598 - 1 < _598
                mem[256] = mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1270 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1288 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1270 + 100] = 32
                mem[_1270 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1336 = mem[_1288]
                mem[_1270 + 164 len ceil32(mem[_1288])] = mem[_1288 + 32 len ceil32(mem[_1288])]
                if ceil32(_1336) > _1336:
                    mem[_1270 + _1336 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1270 + 168 len _1336 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1270 + 196] == bool(mem[_1270 + 196])
                        if not mem[_1270 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _591 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _599 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _591 + (32 * _599) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _591 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _599:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _599 - 1 < _599
                mem[256] = mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1271 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1290 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1271 + 100] = 32
                mem[_1271 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1338 = mem[_1290]
                mem[_1271 + 164 len ceil32(mem[_1290])] = mem[_1290 + 32 len ceil32(mem[_1290])]
                if ceil32(_1338) > _1338:
                    mem[_1271 + _1338 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1338 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg3:
            revert with 0, 'need zero'
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _592 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _600 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _592 + (32 * _600) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _592 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _600:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _600 - 1 < _600
                mem[256] = mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1272 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1292 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1272 + 100] = 32
                mem[_1272 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1340 = mem[_1292]
                mem[_1272 + 164 len ceil32(mem[_1292])] = mem[_1292 + 32 len ceil32(mem[_1292])]
                if ceil32(_1340) > _1340:
                    mem[_1272 + _1340 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1272 + 168 len _1340 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1272 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1272 + 196] == bool(mem[_1272 + 196])
                        if not mem[_1272 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _593 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _601 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _593 + (32 * _601) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _593 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _601 - 1 < _601
                mem[256] = mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1273 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1294 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1273 + 100] = 32
                mem[_1273 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1342 = mem[_1294]
                mem[_1273 + 164 len ceil32(mem[_1294])] = mem[_1294 + 32 len ceil32(mem[_1294])]
                if ceil32(_1342) > _1342:
                    mem[_1273 + _1342 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1273 + 168 len _1342 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1273 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1273 + 196] == bool(mem[_1273 + 196])
                        if not mem[_1273 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _594 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _602 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _594 + (32 * _602) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _594 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _602:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _602 - 1 < _602
                mem[256] = mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1274 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1296 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1274 + 100] = 32
                mem[_1274 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1344 = mem[_1296]
                mem[_1274 + 164 len ceil32(mem[_1296])] = mem[_1296 + 32 len ceil32(mem[_1296])]
                if ceil32(_1344) > _1344:
                    mem[_1274 + _1344 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1274 + 168 len _1344 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1274 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1274 + 196] == bool(mem[_1274 + 196])
                        if not mem[_1274 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _595 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _603 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _595 + (32 * _603) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _595 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _603:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _603 - 1 < _603
                mem[256] = mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1275 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1298 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1275 + 100] = 32
                mem[_1275 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1346 = mem[_1298]
                mem[_1275 + 164 len ceil32(mem[_1298])] = mem[_1298 + 32 len ceil32(mem[_1298])]
                if ceil32(_1346) > _1346:
                    mem[_1275 + _1346 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1275 + 168 len _1346 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1275 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1275 + 196] == bool(mem[_1275 + 196])
                        if not mem[_1275 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    count++
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _588 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _596 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _588 + (32 * _596) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _588 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _596:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _596 - 1 < _596
                mem[256] = mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1268 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1284 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1268 + 100] = 32
                mem[_1268 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1332 = mem[_1284]
                mem[_1268 + 164 len ceil32(mem[_1284])] = mem[_1284 + 32 len ceil32(mem[_1284])]
                if ceil32(_1332) > _1332:
                    mem[_1268 + _1332 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1268 + 168 len _1332 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1268 + 196] == bool(mem[_1268 + 196])
                        if not mem[_1268 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _589 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _597 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _589 + (32 * _597) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _589 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _597:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _597 - 1 < _597
                mem[256] = mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1269 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1286 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1269 + 100] = 32
                mem[_1269 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1334 = mem[_1286]
                mem[_1269 + 164 len ceil32(mem[_1286])] = mem[_1286 + 32 len ceil32(mem[_1286])]
                if ceil32(_1334) > _1334:
                    mem[_1269 + _1334 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1269 + 168 len _1334 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1269 + 196] == bool(mem[_1269 + 196])
                        if not mem[_1269 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _590 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _598 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _590 + (32 * _598) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _590 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _598:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _598 - 1 < _598
                mem[256] = mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1270 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1288 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1270 + 100] = 32
                mem[_1270 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1336 = mem[_1288]
                mem[_1270 + 164 len ceil32(mem[_1288])] = mem[_1288 + 32 len ceil32(mem[_1288])]
                if ceil32(_1336) > _1336:
                    mem[_1270 + _1336 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1270 + 168 len _1336 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1270 + 196] == bool(mem[_1270 + 196])
                        if not mem[_1270 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _591 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _599 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _591 + (32 * _599) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _591 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _599:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _599 - 1 < _599
                mem[256] = mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1271 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1290 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1271 + 100] = 32
                mem[_1271 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1338 = mem[_1290]
                mem[_1271 + 164 len ceil32(mem[_1290])] = mem[_1290 + 32 len ceil32(mem[_1290])]
                if ceil32(_1338) > _1338:
                    mem[_1271 + _1338 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1338 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg3:
            revert with 0, 'need zero'
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _592 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _600 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _592 + (32 * _600) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _592 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _600:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _600 - 1 < _600
                mem[256] = mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1272 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1292 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1272 + 100] = 32
                mem[_1272 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1340 = mem[_1292]
                mem[_1272 + 164 len ceil32(mem[_1292])] = mem[_1292 + 32 len ceil32(mem[_1292])]
                if ceil32(_1340) > _1340:
                    mem[_1272 + _1340 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1272 + 168 len _1340 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1272 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1272 + 196] == bool(mem[_1272 + 196])
                        if not mem[_1272 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _593 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _601 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _593 + (32 * _601) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _593 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _601 - 1 < _601
                mem[256] = mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1273 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1294 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1273 + 100] = 32
                mem[_1273 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1342 = mem[_1294]
                mem[_1273 + 164 len ceil32(mem[_1294])] = mem[_1294 + 32 len ceil32(mem[_1294])]
                if ceil32(_1342) > _1342:
                    mem[_1273 + _1342 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1273 + 168 len _1342 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1273 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1273 + 196] == bool(mem[_1273 + 196])
                        if not mem[_1273 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _594 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _602 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _594 + (32 * _602) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _594 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _602:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _602 - 1 < _602
                mem[256] = mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1274 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1296 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1274 + 100] = 32
                mem[_1274 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1344 = mem[_1296]
                mem[_1274 + 164 len ceil32(mem[_1296])] = mem[_1296 + 32 len ceil32(mem[_1296])]
                if ceil32(_1344) > _1344:
                    mem[_1274 + _1344 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1274 + 168 len _1344 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1274 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1274 + 196] == bool(mem[_1274 + 196])
                        if not mem[_1274 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _595 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _603 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _595 + (32 * _603) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _595 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _603:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _603 - 1 < _603
                mem[256] = mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1275 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1298 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1275 + 100] = 32
                mem[_1275 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1346 = mem[_1298]
                mem[_1275 + 164 len ceil32(mem[_1298])] = mem[_1298 + 32 len ceil32(mem[_1298])]
                if ceil32(_1346) > _1346:
                    mem[_1275 + _1346 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1275 + 168 len _1346 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1275 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1275 + 196] == bool(mem[_1275 + 196])
                        if not mem[_1275 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    count++
}

function pangolinCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _588 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _596 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _588 + (32 * _596) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _588 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _596:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _596 - 1 < _596
                mem[256] = mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1268 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1284 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1268 + 100] = 32
                mem[_1268 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1332 = mem[_1284]
                mem[_1268 + 164 len ceil32(mem[_1284])] = mem[_1284 + 32 len ceil32(mem[_1284])]
                if ceil32(_1332) > _1332:
                    mem[_1268 + _1332 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1268 + 168 len _1332 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1268 + 196] == bool(mem[_1268 + 196])
                        if not mem[_1268 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _589 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _597 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _589 + (32 * _597) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _589 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _597:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _597 - 1 < _597
                mem[256] = mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1269 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1286 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1269 + 100] = 32
                mem[_1269 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1334 = mem[_1286]
                mem[_1269 + 164 len ceil32(mem[_1286])] = mem[_1286 + 32 len ceil32(mem[_1286])]
                if ceil32(_1334) > _1334:
                    mem[_1269 + _1334 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1269 + 168 len _1334 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1269 + 196] == bool(mem[_1269 + 196])
                        if not mem[_1269 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _590 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _598 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _590 + (32 * _598) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _590 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _598:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _598 - 1 < _598
                mem[256] = mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1270 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1288 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1270 + 100] = 32
                mem[_1270 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1336 = mem[_1288]
                mem[_1270 + 164 len ceil32(mem[_1288])] = mem[_1288 + 32 len ceil32(mem[_1288])]
                if ceil32(_1336) > _1336:
                    mem[_1270 + _1336 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1270 + 168 len _1336 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1270 + 196] == bool(mem[_1270 + 196])
                        if not mem[_1270 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _591 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _599 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _591 + (32 * _599) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _591 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _599:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _599 - 1 < _599
                mem[256] = mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1271 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1290 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1271 + 100] = 32
                mem[_1271 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1338 = mem[_1290]
                mem[_1271 + 164 len ceil32(mem[_1290])] = mem[_1290 + 32 len ceil32(mem[_1290])]
                if ceil32(_1338) > _1338:
                    mem[_1271 + _1338 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1338 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg3:
            revert with 0, 'need zero'
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _592 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _600 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _592 + (32 * _600) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _592 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _600:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _600 - 1 < _600
                mem[256] = mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1272 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1292 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1272 + 100] = 32
                mem[_1272 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1340 = mem[_1292]
                mem[_1272 + 164 len ceil32(mem[_1292])] = mem[_1292 + 32 len ceil32(mem[_1292])]
                if ceil32(_1340) > _1340:
                    mem[_1272 + _1340 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1272 + 168 len _1340 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1272 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1272 + 196] == bool(mem[_1272 + 196])
                        if not mem[_1272 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _593 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _601 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _593 + (32 * _601) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _593 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _601 - 1 < _601
                mem[256] = mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1273 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1294 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1273 + 100] = 32
                mem[_1273 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1342 = mem[_1294]
                mem[_1273 + 164 len ceil32(mem[_1294])] = mem[_1294 + 32 len ceil32(mem[_1294])]
                if ceil32(_1342) > _1342:
                    mem[_1273 + _1342 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1273 + 168 len _1342 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1273 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1273 + 196] == bool(mem[_1273 + 196])
                        if not mem[_1273 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _594 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _602 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _594 + (32 * _602) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _594 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _602:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _602 - 1 < _602
                mem[256] = mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1274 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1296 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1274 + 100] = 32
                mem[_1274 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1344 = mem[_1296]
                mem[_1274 + 164 len ceil32(mem[_1296])] = mem[_1296 + 32 len ceil32(mem[_1296])]
                if ceil32(_1344) > _1344:
                    mem[_1274 + _1344 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1274 + 168 len _1344 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1274 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1274 + 196] == bool(mem[_1274 + 196])
                        if not mem[_1274 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _595 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _603 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _595 + (32 * _603) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _595 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _603:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _603 - 1 < _603
                mem[256] = mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1275 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1298 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1275 + 100] = 32
                mem[_1275 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1346 = mem[_1298]
                mem[_1275 + 164 len ceil32(mem[_1298])] = mem[_1298 + 32 len ceil32(mem[_1298])]
                if ceil32(_1346) > _1346:
                    mem[_1275 + _1346 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1275 + 168 len _1346 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1275 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1275 + 196] == bool(mem[_1275 + 196])
                        if not mem[_1275 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    count++
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if workers[address(arg1)] != 1:
        revert with 0, 'worker reject'
    if not arg2:
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _588 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _596 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _588 + (32 * _596) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _588 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _596:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _596 - 1 < _596
                mem[256] = mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _596 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1268 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1284 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1268 + 100] = 32
                mem[_1268 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1332 = mem[_1284]
                mem[_1268 + 164 len ceil32(mem[_1284])] = mem[_1284 + 32 len ceil32(mem[_1284])]
                if ceil32(_1332) > _1332:
                    mem[_1268 + _1332 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1268 + 168 len _1332 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1268 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1268 + 196] == bool(mem[_1268 + 196])
                        if not mem[_1268 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _589 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _597 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _589 + (32 * _597) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _589 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _597:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _597 - 1 < _597
                mem[256] = mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _597 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1269 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1286 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1269 + 100] = 32
                mem[_1269 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1334 = mem[_1286]
                mem[_1269 + 164 len ceil32(mem[_1286])] = mem[_1286 + 32 len ceil32(mem[_1286])]
                if ceil32(_1334) > _1334:
                    mem[_1269 + _1334 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1269 + 168 len _1334 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1269 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1269 + 196] == bool(mem[_1269 + 196])
                        if not mem[_1269 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _590 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _598 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _590 + (32 * _598) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _590 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _598:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _598 - 1 < _598
                mem[256] = mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _598 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1270 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1288 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1270 + 100] = 32
                mem[_1270 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1336 = mem[_1288]
                mem[_1270 + 164 len ceil32(mem[_1288])] = mem[_1288 + 32 len ceil32(mem[_1288])]
                if ceil32(_1336) > _1336:
                    mem[_1270 + _1336 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1270 + 168 len _1336 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1270 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1270 + 196] == bool(mem[_1270 + 196])
                        if not mem[_1270 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _591 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _599 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _591 + (32 * _599) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _591 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _599:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _599 - 1 < _599
                mem[256] = mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _599 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1271 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1290 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1271 + 100] = 32
                mem[_1271 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1338 = mem[_1290]
                mem[_1271 + 164 len ceil32(mem[_1290])] = mem[_1290 + 32 len ceil32(mem[_1290])]
                if ceil32(_1338) > _1338:
                    mem[_1271 + _1338 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1271 + 168 len _1338 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1271 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1271 + 196] == bool(mem[_1271 + 196])
                        if not mem[_1271 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if arg3:
            revert with 0, 'need zero'
        require arg4.length >= 128
        require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
        require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
        require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
        require cd[(arg4 + 132)] <= test266151307()
        require arg4 + cd[(arg4 + 132)] + 67 < arg4 + arg4.length + 36
        require cd[(arg4 + cd[(arg4 + 132)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320 >= 288
        mem[288] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
        require cd[(arg4 + 132)] + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 68 <= arg4.length + 36
        idx = 0
        s = arg4 + cd[(arg4 + 132)] + 68
        t = 320
        while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        if sub_12109d52[address(cd[(arg4 + 36)])] <= 0:
            revert with 0, 'not allowed F'
        if sub_25bc368e[address(cd[(arg4 + 68)])] <= 0:
            revert with 0, 'not allowed R1'
        if sub_25bc368e[address(cd[(arg4 + 100)])] <= 0:
            revert with 0, 'not allowed R2'
        require ext_code.size(msg.sender)
        staticcall msg.sender.token0() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[96] = ext_call.return_data[12 len 20]
        require ext_code.size(msg.sender)
        staticcall msg.sender.token1() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[128] = ext_call.return_data[12 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324] = mem[108 len 20]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 356] = mem[140 len 20]
        require ext_code.size(address(cd[(arg4 + 36)]))
        staticcall address(cd[(arg4 + 36)]).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 324 len 64]
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (2 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'wrong LP sender'
        require ext_code.size(msg.sender)
        staticcall msg.sender.getReserves() with:
                gas gas_remaining wei
        mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (4 * ceil32(return_data.size)) + 320 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        mem[192] = ext_call.return_data[50 len 14]
        mem[160] = ext_call.return_data[18 len 14]
        mem[0] = address(cd[(arg4 + 68)])
        mem[32] = 9
        if arg2 <= 0:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg3
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = ext_call.return_data[50 len 14]
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _592 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _600 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _592 + (32 * _600) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _592 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _600:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _600 - 1 < _600
                mem[256] = mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _600 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1272 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1292 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1272 + 100] = 32
                mem[_1272 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1340 = mem[_1292]
                mem[_1272 + 164 len ceil32(mem[_1292])] = mem[_1292 + 32 len ceil32(mem[_1292])]
                if ceil32(_1340) > _1340:
                    mem[_1272 + _1340 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1272 + 168 len _1340 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1272 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1272 + 196] == bool(mem[_1272 + 196])
                        if not mem[_1272 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg3, ext_call.return_data[0] << 144, ext_call.return_data[50 len 14], address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg3
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _593 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _601 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
                require _593 + (32 * _601) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _593 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _601:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _601 - 1 < _601
                mem[256] = mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _601 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1273 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1294 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1273 + 100] = 32
                mem[_1273 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1342 = mem[_1294]
                mem[_1273 + 164 len ceil32(mem[_1294])] = mem[_1294 + 32 len ceil32(mem[_1294])]
                if ceil32(_1342) > _1342:
                    mem[_1273 + _1342 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1273 + 168 len _1342 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1273 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1273 + 196] == bool(mem[_1273 + 196])
                        if not mem[_1273 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 324] = arg2
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 356] = ext_call.return_data[50 len 14]
            mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 388] = Mask(112, 0, ext_call.return_data[0])
            if sub_25bc368e[address(cd[(arg4 + 68)])] != 2:
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _594 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _602 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _594 + (32 * _602) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _594 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _602:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _602 - 1 < _602
                mem[256] = mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _602 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1274 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1296 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1274 + 100] = 32
                mem[_1274 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1344 = mem[_1296]
                mem[_1274 + 164 len ceil32(mem[_1296])] = mem[_1296 + 32 len ceil32(mem[_1296])]
                if ceil32(_1344) > _1344:
                    mem[_1274 + _1344 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1274 + 168 len _1344 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1274 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1274 + 196] == bool(mem[_1274 + 196])
                        if not mem[_1274 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 420] = address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 452] = address(ext_call.return_data[12 len 20])
                require ext_code.size(address(cd[(arg4 + 68)]))
                staticcall address(cd[(arg4 + 68)]).getAmountIn(uint256 rg1, uint256 rg2, uint256 rg3, address rg4, address rg5) with:
                        gas gas_remaining wei
                       args arg2, ext_call.return_data[50 len 14], ext_call.return_data[0] << 144, address(ext_call.return_data[12 len 20]), address(ext_call.return_data[12 len 20])
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                mem[224] = ext_call.return_data[0]
                require 0 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[332 len 20] != mem[108 len 20]:
                    revert with 0, 'token incorrect'
                require cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1 < cd[(arg4 + cd[(arg4 + 132)] + 36)]
                if mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)] - 1) + 332 len 20] != mem[140 len 20]:
                    revert with 0, 'token incorrect'
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324] = arg2
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 388] = 160
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 484] = cd[(arg4 + cd[(arg4 + 132)] + 36)]
                idx = 0
                s = 320
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 516
                while idx < cd[(arg4 + cd[(arg4 + 132)] + 36)]:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 420] = this.address
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 452] = block.timestamp
                require ext_code.size(address(cd[(arg4 + 100)]))
                call address(cd[(arg4 + 100)]).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 324 len (96 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320
                require return_data.size >= 32
                _595 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 351 < (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + return_data.size + 320
                _603 = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320] <= test266151307()
                require (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352 <= test266151307() and (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 32 >= 0
                mem[64] = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + (32 * mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]) + 352
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + 320 len 4], Mask(224, 32, arg2) >> 32 + 320]
                require _595 + (32 * _603) + 32 <= return_data.size
                idx = 0
                s = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (7 * ceil32(return_data.size)) + _595 + 352
                t = (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352
                while idx < _603:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _603 - 1 < _603
                mem[256] = mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352]
                if mem[(32 * _603 - 1) + (32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 352] <= ext_call.return_data[0]:
                    revert with 0, 'no enough amount'
                _1275 = mem[64]
                mem[mem[64] + 36] = msg.sender
                mem[mem[64] + 68] = ext_call.return_data[0]
                _1298 = mem[64]
                mem[mem[64]] = 68
                mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
                mem[64] = mem[64] + 164
                mem[_1275 + 100] = 32
                mem[_1275 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if ext_code.size(address(ext_call.return_data[12 len 20])) <= 0:
                    revert with 0, 'Address: call to non-contract'
                _1346 = mem[_1298]
                mem[_1275 + 164 len ceil32(mem[_1298])] = mem[_1298 + 32 len ceil32(mem[_1298])]
                if ceil32(_1346) > _1346:
                    mem[_1275 + _1346 + 164] = 0
                call address(ext_call.return_data[12 len 20]) with:
                     gas gas_remaining wei
                    args mem[_1275 + 168 len _1346 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[12 len 20] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[12 len 20]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[12 len 20] > 0:
                        require ext_call.return_data[12 len 20] >= 32
                        require ext_call.return_data[12 len 20] == bool(ext_call.return_data[12 len 20])
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[_1275 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[_1275 + 196] == bool(mem[_1275 + 196])
                        if not mem[_1275 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    count++
}

function sub_4b20e534(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + ('cd', 36).length + 36 <= calldata.size
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    require ('cd', 4).length >= 160
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] <= test266151307()
    require cd[4] + ('cd', 4)[4] + 67 < cd[4] + ('cd', 4).length + 36
    require cd[(cd[4] + ('cd', 4)[4] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576 <= test266151307() and (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576 >= 544
    mem[544] = cd[(cd[4] + ('cd', 4)[4] + 36)]
    require ('cd', 4)[4] + (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 68 <= ('cd', 4).length + 36
    idx = 0
    s = cd[4] + ('cd', 4)[4] + 68
    t = 576
    while idx < cd[(cd[4] + ('cd', 4)[4] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[384] = 544
    mem[192] = address(('cd', 4)[3])
    mem[160] = address(('cd', 4)[2])
    mem[128] = address(('cd', 4)[1])
    mem[96] = address(('cd', 4)[0])
    require ('cd', 36).length >= 128
    require ('cd', 36)[0] == address(('cd', 36)[0])
    require ('cd', 36)[1] == address(('cd', 36)[1])
    require ('cd', 36)[2] == address(('cd', 36)[2])
    require ('cd', 36)[3] <= test266151307()
    require cd[36] + ('cd', 36)[3] + 67 < cd[36] + ('cd', 36).length + 36
    require cd[(cd[36] + ('cd', 36)[3] + 36)] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608 <= test266151307() and (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608 >= 576
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576] = cd[(cd[36] + ('cd', 36)[3] + 36)]
    require ('cd', 36)[3] + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 68 <= ('cd', 36).length + 36
    idx = 0
    s = cd[36] + ('cd', 36)[3] + 68
    t = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 608
    while idx < cd[(cd[36] + ('cd', 36)[3] + 36)]:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[352] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 576
    mem[288] = address(('cd', 36)[2])
    mem[256] = address(('cd', 36)[1])
    mem[224] = address(('cd', 36)[0])
    if sub_12109d52[address(('cd', 36)[0])] <= 0:
        revert with 0, 'not allowed F1'
    if sub_25bc368e[address(('cd', 36)[1])] <= 0:
        revert with 0, 'not allowed R1'
    mem[0] = address(('cd', 36)[2])
    mem[32] = 9
    if sub_25bc368e[address(('cd', 36)[2])] <= 0:
        revert with 0, 'not allowed R2'
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608] = 2
    mem[320] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 608
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 640] = uint64(('cd', 4)[2]) << 96
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 672] = uint64(('cd', 4)[3]) << 96
    require 2 < cd[(cd[4] + ('cd', 4)[4] + 36)]
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 708] = mem[640]
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 740] = 64
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 772] = 2
    idx = 0
    s = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 640
    t = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 804
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args mem[640], Array(len=2, data=mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 804 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 704
    require return_data.size >= 32
    _713 = mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28]
    require mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 735 < (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + return_data.size + 704
    _714 = mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]
    require mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704] <= test266151307()
    require (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]) + 736 <= test266151307() and (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]) + 32 >= 0
    mem[64] = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + (32 * mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]) + 736
    mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 704] = mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + mem[(32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + 704 len 4], mem[640 len 28] + 704]
    require _713 + (32 * _714) + 32 <= return_data.size
    idx = 0
    s = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + _713 + 736
    t = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 736
    while idx < _714:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _714 - 1 < _714
    mem[416] = mem[(32 * _714 - 1) + (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 736]
    _1430 = mem[(32 * _714 - 1) + (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + (32 * cd[(cd[36] + ('cd', 36)[3] + 36)]) + ceil32(return_data.size) + 736]
    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _1430
    mem[mem[64] + 36] = 64
    mem[mem[64] + 68] = cd[(cd[36] + ('cd', 36)[3] + 36)]
    idx = 0
    s = (32 * cd[(cd[4] + ('cd', 4)[4] + 36)]) + 608
    t = mem[64] + 100
    while idx < cd[(cd[36] + ('cd', 36)[3] + 36)]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(('cd', 36)[2]))
    staticcall address(('cd', 36)[2]).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args _1430, Array(len=cd[(cd[36] + ('cd', 36)[3] + 36)], data=mem[mem[64] + 100 len 32 * cd[(cd[36] + ('cd', 36)[3] + 36)]])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2178 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2179 = mem[_2178]
    require mem[_2178] <= test266151307()
    require _2178 + mem[_2178] + 31 < _2178 + return_data.size
    _2180 = mem[_2178 + mem[_2178]]
    require mem[_2178 + mem[_2178]] <= test266151307()
    require _2178 + ceil32(return_data.size) + (32 * mem[_2178 + mem[_2178]]) + 32 <= test266151307() and (32 * mem[_2178 + mem[_2178]]) + 32 >= 0
    mem[64] = _2178 + ceil32(return_data.size) + (32 * mem[_2178 + mem[_2178]]) + 32
    mem[_2178 + ceil32(return_data.size)] = _2180
    require _2179 + (32 * _2180) + 32 <= return_data.size
    idx = 0
    s = _2178 + _2179 + 32
    t = _2178 + ceil32(return_data.size) + 32
    while idx < _2180:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _2180 - 1 < _2180
    mem[416] = mem[(32 * _2180 - 1) + _2178 + ceil32(return_data.size) + 32]
    require 2 < mem[mem[384]]
    if mem[(32 * _2180 - 1) + _2178 + ceil32(return_data.size) + 32] <= mem[mem[384] + 96]:
        revert with 0, 'noP1'
    require 2 < mem[mem[384]]
    if 10^10 * mem[(32 * _2180 - 1) + _2178 + ceil32(return_data.size) + 32] / 10^10 != mem[(32 * _2180 - 1) + _2178 + ceil32(return_data.size) + 32]:
        revert with 0, 'SafeMath: multiplication overflow'
    if mem[mem[384] + 96] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require mem[mem[384] + 96]
    mem[416] = 10^10 * mem[(32 * _2180 - 1) + _2178 + ceil32(return_data.size) + 32] / mem[mem[384] + 96]
    require 1 < mem[mem[384]]
    if 10^10 > mem[416]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not mem[416] - 10^10:
        if mem[mem[384] + 64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require mem[mem[384] + 64]
        mem[448] = 0 / mem[mem[384] + 64] / 2
        require 0 < mem[mem[384]]
        if 10^10 > mem[416]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not mem[416] - 10^10:
            mem[480] = 0
            require 4 < mem[mem[384]]
            if 0 <= mem[mem[384] + 160]:
                revert with 0, 'noP2'
            require 0 < mem[mem[384]]
            if not mem[448]:
                mem[448] = 0
                _3338 = mem[256]
                _3340 = mem[320]
                _3343 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 64
                _3395 = mem[_3340]
                mem[mem[64] + 68] = mem[_3340]
                idx = 0
                s = _3340 + 32
                t = mem[64] + 100
                while idx < _3395:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(_3338))
                staticcall address(_3338).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3343 + (32 * _3395) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4459 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4471 = mem[_4459]
                require mem[_4459] <= test266151307()
                require _4459 + mem[_4459] + 31 < _4459 + return_data.size
                _4483 = mem[_4459 + mem[_4459]]
                require mem[_4459 + mem[_4459]] <= test266151307()
                require _4459 + ceil32(return_data.size) + (32 * mem[_4459 + mem[_4459]]) + 32 <= test266151307() and (32 * mem[_4459 + mem[_4459]]) + 32 >= 0
                mem[64] = _4459 + ceil32(return_data.size) + (32 * mem[_4459 + mem[_4459]]) + 32
                mem[_4459 + ceil32(return_data.size)] = _4483
                require _4471 + (32 * _4483) + 32 <= return_data.size
                idx = 0
                s = _4459 + _4471 + 32
                t = _4459 + ceil32(return_data.size) + 32
                while idx < _4483:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _4483 - 1 < _4483
                mem[448] = mem[(32 * _4483 - 1) + _4459 + ceil32(return_data.size) + 32]
                mem[512] = 0
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5551 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5551] == mem[_5551 + 12 len 20]
                if mem[204 len 20] != mem[_5551 + 12 len 20]:
                    _5609 = mem[160]
                    _5610 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5609))
                    staticcall address(_5609).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5610)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5683 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5683] == mem[_5683]
                    mem[480] = mem[_5683]
                    _5831 = mem[128]
                    _5832 = mem[448]
                    _5833 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _5832
                    mem[mem[64] + 68] = address(_5833)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5831))
                    call address(_5831).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _5832, address(_5833), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6072 = mem[480]
                    _6073 = mem[160]
                    _6074 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6073))
                    staticcall address(_6073).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6074)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6246 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6246] == mem[_6246]
                    if mem[_6246] <= _6072:
                        revert with 0, 'noP3'
                else:
                    mem[512] = 1
                    _5645 = mem[160]
                    _5646 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5645))
                    staticcall address(_5645).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5646)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5695 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5695] == mem[_5695]
                    mem[480] = mem[_5695]
                    _5932 = mem[128]
                    _5933 = mem[448]
                    _5934 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _5933
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_5934)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5932))
                    call address(_5932).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _5933, 0, address(_5934), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6172 = mem[480]
                    _6173 = mem[160]
                    _6174 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6173))
                    staticcall address(_6173).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6174)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6271] == mem[_6271]
                    if mem[_6271] <= _6172:
                        revert with 0, 'noP3'
            else:
                require mem[448]
                if mem[448] * mem[mem[384] + 32] / mem[448] != mem[mem[384] + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[448] = mem[448] * mem[mem[384] + 32] / 10^10
                _3351 = mem[256]
                _3352 = mem[448]
                _3353 = mem[320]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _3352
                mem[mem[64] + 36] = 64
                _3399 = mem[_3353]
                mem[mem[64] + 68] = mem[_3353]
                idx = 0
                s = _3353 + 32
                t = mem[64] + 100
                while idx < _3399:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(_3351))
                staticcall address(_3351).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args _3352, 64, mem[mem[64] + 68 len (32 * _3399) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4458 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4470 = mem[_4458]
                require mem[_4458] <= test266151307()
                require _4458 + mem[_4458] + 31 < _4458 + return_data.size
                _4482 = mem[_4458 + mem[_4458]]
                require mem[_4458 + mem[_4458]] <= test266151307()
                require _4458 + ceil32(return_data.size) + (32 * mem[_4458 + mem[_4458]]) + 32 <= test266151307() and (32 * mem[_4458 + mem[_4458]]) + 32 >= 0
                mem[64] = _4458 + ceil32(return_data.size) + (32 * mem[_4458 + mem[_4458]]) + 32
                mem[_4458 + ceil32(return_data.size)] = _4482
                require _4470 + (32 * _4482) + 32 <= return_data.size
                idx = 0
                s = _4458 + _4470 + 32
                t = _4458 + ceil32(return_data.size) + 32
                while idx < _4482:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _4482 - 1 < _4482
                mem[448] = mem[(32 * _4482 - 1) + _4458 + ceil32(return_data.size) + 32]
                mem[512] = 0
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5550 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5550] == mem[_5550 + 12 len 20]
                if mem[204 len 20] != mem[_5550 + 12 len 20]:
                    _5606 = mem[160]
                    _5607 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5606))
                    staticcall address(_5606).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5607)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5682 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5682] == mem[_5682]
                    mem[480] = mem[_5682]
                    _5822 = mem[128]
                    _5823 = mem[448]
                    _5824 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _5823
                    mem[mem[64] + 68] = address(_5824)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5822))
                    call address(_5822).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _5823, address(_5824), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6064 = mem[480]
                    _6065 = mem[160]
                    _6066 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6065))
                    staticcall address(_6065).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6066)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6244 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6244] == mem[_6244]
                    if mem[_6244] <= _6064:
                        revert with 0, 'noP3'
                else:
                    mem[512] = 1
                    _5642 = mem[160]
                    _5643 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5642))
                    staticcall address(_5642).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5643)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5694 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5694] == mem[_5694]
                    mem[480] = mem[_5694]
                    _5924 = mem[128]
                    _5925 = mem[448]
                    _5926 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _5925
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_5926)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5924))
                    call address(_5924).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _5925, 0, address(_5926), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6164 = mem[480]
                    _6165 = mem[160]
                    _6166 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6165))
                    staticcall address(_6165).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6166)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6269 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6269] == mem[_6269]
                    if mem[_6269] <= _6164:
                        revert with 0, 'noP3'
        else:
            require mem[416] - 10^10
            if (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) / mem[416] - 10^10 != mem[448]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]):
                mem[480] = 0
                require 4 < mem[mem[384]]
                if 0 <= mem[mem[384] + 160]:
                    revert with 0, 'noP2'
                require 0 < mem[mem[384]]
                if not mem[448]:
                    mem[448] = 0
                    _3348 = mem[256]
                    _3350 = mem[320]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 64
                    _3398 = mem[_3350]
                    mem[mem[64] + 68] = mem[_3350]
                    idx = 0
                    s = _3350 + 32
                    t = mem[64] + 100
                    while idx < _3398:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3348))
                    staticcall address(_3348).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args 0, 64, mem[mem[64] + 68 len (32 * _3398) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4457 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4469 = mem[_4457]
                    require mem[_4457] <= test266151307()
                    require _4457 + mem[_4457] + 31 < _4457 + return_data.size
                    _4481 = mem[_4457 + mem[_4457]]
                    require mem[_4457 + mem[_4457]] <= test266151307()
                    require _4457 + ceil32(return_data.size) + (32 * mem[_4457 + mem[_4457]]) + 32 <= test266151307() and (32 * mem[_4457 + mem[_4457]]) + 32 >= 0
                    mem[64] = _4457 + ceil32(return_data.size) + (32 * mem[_4457 + mem[_4457]]) + 32
                    mem[_4457 + ceil32(return_data.size)] = _4481
                    require _4469 + (32 * _4481) + 32 <= return_data.size
                    idx = 0
                    s = _4457 + _4469 + 32
                    t = _4457 + ceil32(return_data.size) + 32
                    while idx < _4481:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4481 - 1 < _4481
                    mem[448] = mem[(32 * _4481 - 1) + _4457 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5549] == mem[_5549 + 12 len 20]
                    if mem[204 len 20] != mem[_5549 + 12 len 20]:
                        _5603 = mem[160]
                        _5604 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5603))
                        staticcall address(_5603).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5604)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5681 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5681] == mem[_5681]
                        mem[480] = mem[_5681]
                        _5813 = mem[128]
                        _5814 = mem[448]
                        _5815 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5814
                        mem[mem[64] + 68] = address(_5815)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5813))
                        call address(_5813).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5814, address(_5815), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6056 = mem[480]
                        _6057 = mem[160]
                        _6058 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6057))
                        staticcall address(_6057).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6058)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6242] == mem[_6242]
                        if mem[_6242] <= _6056:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5639 = mem[160]
                        _5640 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5639))
                        staticcall address(_5639).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5640)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5693 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5693] == mem[_5693]
                        mem[480] = mem[_5693]
                        _5916 = mem[128]
                        _5917 = mem[448]
                        _5918 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5917
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5918)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5916))
                        call address(_5916).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5917, 0, address(_5918), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6156 = mem[480]
                        _6157 = mem[160]
                        _6158 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6157))
                        staticcall address(_6157).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6158)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6267 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6267] == mem[_6267]
                        if mem[_6267] <= _6156:
                            revert with 0, 'noP3'
                else:
                    require mem[448]
                    if mem[448] * mem[mem[384] + 32] / mem[448] != mem[mem[384] + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[448] = mem[448] * mem[mem[384] + 32] / 10^10
                    _3369 = mem[256]
                    _3370 = mem[448]
                    _3371 = mem[320]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3370
                    mem[mem[64] + 36] = 64
                    _3403 = mem[_3371]
                    mem[mem[64] + 68] = mem[_3371]
                    idx = 0
                    s = _3371 + 32
                    t = mem[64] + 100
                    while idx < _3403:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3369))
                    staticcall address(_3369).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _3370, 64, mem[mem[64] + 68 len (32 * _3403) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4456 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4468 = mem[_4456]
                    require mem[_4456] <= test266151307()
                    require _4456 + mem[_4456] + 31 < _4456 + return_data.size
                    _4480 = mem[_4456 + mem[_4456]]
                    require mem[_4456 + mem[_4456]] <= test266151307()
                    require _4456 + ceil32(return_data.size) + (32 * mem[_4456 + mem[_4456]]) + 32 <= test266151307() and (32 * mem[_4456 + mem[_4456]]) + 32 >= 0
                    mem[64] = _4456 + ceil32(return_data.size) + (32 * mem[_4456 + mem[_4456]]) + 32
                    mem[_4456 + ceil32(return_data.size)] = _4480
                    require _4468 + (32 * _4480) + 32 <= return_data.size
                    idx = 0
                    s = _4456 + _4468 + 32
                    t = _4456 + ceil32(return_data.size) + 32
                    while idx < _4480:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4480 - 1 < _4480
                    mem[448] = mem[(32 * _4480 - 1) + _4456 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5548 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5548] == mem[_5548 + 12 len 20]
                    if mem[204 len 20] != mem[_5548 + 12 len 20]:
                        _5600 = mem[160]
                        _5601 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5600))
                        staticcall address(_5600).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5601)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5680 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5680] == mem[_5680]
                        mem[480] = mem[_5680]
                        _5804 = mem[128]
                        _5805 = mem[448]
                        _5806 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5805
                        mem[mem[64] + 68] = address(_5806)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5804))
                        call address(_5804).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5805, address(_5806), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6048 = mem[480]
                        _6049 = mem[160]
                        _6050 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6049))
                        staticcall address(_6049).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6050)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6240] == mem[_6240]
                        if mem[_6240] <= _6048:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5636 = mem[160]
                        _5637 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5636))
                        staticcall address(_5636).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5637)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5692 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5692] == mem[_5692]
                        mem[480] = mem[_5692]
                        _5908 = mem[128]
                        _5909 = mem[448]
                        _5910 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5909
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5910)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5908))
                        call address(_5908).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5909, 0, address(_5910), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6148 = mem[480]
                        _6149 = mem[160]
                        _6150 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6149))
                        staticcall address(_6149).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6150)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6265] == mem[_6265]
                        if mem[_6265] <= _6148:
                            revert with 0, 'noP3'
            else:
                require (-1 * 10^10 * mem[448]) + (mem[416] * mem[448])
                if (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) != mem[mem[384] + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[480] = (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / 100 * 10^18 / 2
                require 4 < mem[mem[384]]
                if mem[480] <= mem[mem[384] + 160]:
                    revert with 0, 'noP2'
                require 0 < mem[mem[384]]
                if not mem[448]:
                    mem[448] = 0
                    _3366 = mem[256]
                    _3368 = mem[320]
                    _3375 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 64
                    _3402 = mem[_3368]
                    mem[mem[64] + 68] = mem[_3368]
                    idx = 0
                    s = _3368 + 32
                    t = mem[64] + 100
                    while idx < _3402:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3366))
                    staticcall address(_3366).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3375 + (32 * _3402) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4455 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4467 = mem[_4455]
                    require mem[_4455] <= test266151307()
                    require _4455 + mem[_4455] + 31 < _4455 + return_data.size
                    _4479 = mem[_4455 + mem[_4455]]
                    require mem[_4455 + mem[_4455]] <= test266151307()
                    require _4455 + ceil32(return_data.size) + (32 * mem[_4455 + mem[_4455]]) + 32 <= test266151307() and (32 * mem[_4455 + mem[_4455]]) + 32 >= 0
                    mem[64] = _4455 + ceil32(return_data.size) + (32 * mem[_4455 + mem[_4455]]) + 32
                    mem[_4455 + ceil32(return_data.size)] = _4479
                    require _4467 + (32 * _4479) + 32 <= return_data.size
                    idx = 0
                    s = _4455 + _4467 + 32
                    t = _4455 + ceil32(return_data.size) + 32
                    while idx < _4479:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4479 - 1 < _4479
                    mem[448] = mem[(32 * _4479 - 1) + _4455 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5547] == mem[_5547 + 12 len 20]
                    if mem[204 len 20] != mem[_5547 + 12 len 20]:
                        _5597 = mem[160]
                        _5598 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5597))
                        staticcall address(_5597).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5598)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5679 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5679] == mem[_5679]
                        mem[480] = mem[_5679]
                        _5795 = mem[128]
                        _5796 = mem[448]
                        _5797 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5796
                        mem[mem[64] + 68] = address(_5797)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5795))
                        call address(_5795).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5796, address(_5797), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6040 = mem[480]
                        _6041 = mem[160]
                        _6042 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6041))
                        staticcall address(_6041).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6042)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6238 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6238] == mem[_6238]
                        if mem[_6238] <= _6040:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5633 = mem[160]
                        _5634 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5633))
                        staticcall address(_5633).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5634)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5691] == mem[_5691]
                        mem[480] = mem[_5691]
                        _5900 = mem[128]
                        _5901 = mem[448]
                        _5902 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5901
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5902)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5900))
                        call address(_5900).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5901, 0, address(_5902), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6140 = mem[480]
                        _6141 = mem[160]
                        _6142 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6141))
                        staticcall address(_6141).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6142)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6263] == mem[_6263]
                        if mem[_6263] <= _6140:
                            revert with 0, 'noP3'
                else:
                    require mem[448]
                    if mem[448] * mem[mem[384] + 32] / mem[448] != mem[mem[384] + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[448] = mem[448] * mem[mem[384] + 32] / 10^10
                    _3384 = mem[256]
                    _3385 = mem[448]
                    _3386 = mem[320]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3385
                    mem[mem[64] + 36] = 64
                    _3406 = mem[_3386]
                    mem[mem[64] + 68] = mem[_3386]
                    idx = 0
                    s = _3386 + 32
                    t = mem[64] + 100
                    while idx < _3406:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3384))
                    staticcall address(_3384).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _3385, 64, mem[mem[64] + 68 len (32 * _3406) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4454 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4466 = mem[_4454]
                    require mem[_4454] <= test266151307()
                    require _4454 + mem[_4454] + 31 < _4454 + return_data.size
                    _4478 = mem[_4454 + mem[_4454]]
                    require mem[_4454 + mem[_4454]] <= test266151307()
                    require _4454 + ceil32(return_data.size) + (32 * mem[_4454 + mem[_4454]]) + 32 <= test266151307() and (32 * mem[_4454 + mem[_4454]]) + 32 >= 0
                    mem[64] = _4454 + ceil32(return_data.size) + (32 * mem[_4454 + mem[_4454]]) + 32
                    mem[_4454 + ceil32(return_data.size)] = _4478
                    require _4466 + (32 * _4478) + 32 <= return_data.size
                    idx = 0
                    s = _4454 + _4466 + 32
                    t = _4454 + ceil32(return_data.size) + 32
                    while idx < _4478:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4478 - 1 < _4478
                    mem[448] = mem[(32 * _4478 - 1) + _4454 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5546] == mem[_5546 + 12 len 20]
                    if mem[204 len 20] != mem[_5546 + 12 len 20]:
                        _5594 = mem[160]
                        _5595 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5594))
                        staticcall address(_5594).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5595)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5678 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5678] == mem[_5678]
                        mem[480] = mem[_5678]
                        _5786 = mem[128]
                        _5787 = mem[448]
                        _5788 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5787
                        mem[mem[64] + 68] = address(_5788)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5786))
                        call address(_5786).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5787, address(_5788), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6032 = mem[480]
                        _6033 = mem[160]
                        _6034 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6033))
                        staticcall address(_6033).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6034)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6236 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6236] == mem[_6236]
                        if mem[_6236] <= _6032:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5630 = mem[160]
                        _5631 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5630))
                        staticcall address(_5630).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5631)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5690 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5690] == mem[_5690]
                        mem[480] = mem[_5690]
                        _5892 = mem[128]
                        _5893 = mem[448]
                        _5894 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5893
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5894)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5892))
                        call address(_5892).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5893, 0, address(_5894), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6132 = mem[480]
                        _6133 = mem[160]
                        _6134 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6133))
                        staticcall address(_6133).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6134)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6261] == mem[_6261]
                        if mem[_6261] <= _6132:
                            revert with 0, 'noP3'
    else:
        require mem[416] - 10^10
        if (10^10 * mem[416]) - 100 * 10^18 / mem[416] - 10^10 != 10^10:
            revert with 0, 'SafeMath: multiplication overflow'
        if mem[mem[384] + 64] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require mem[mem[384] + 64]
        mem[448] = (10^10 * mem[416]) - 100 * 10^18 / mem[mem[384] + 64] / 2
        require 0 < mem[mem[384]]
        if 10^10 > mem[416]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not mem[416] - 10^10:
            mem[480] = 0
            require 4 < mem[mem[384]]
            if 0 <= mem[mem[384] + 160]:
                revert with 0, 'noP2'
            require 0 < mem[mem[384]]
            if not mem[448]:
                mem[448] = 0
                _3345 = mem[256]
                _3347 = mem[320]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0
                mem[mem[64] + 36] = 64
                _3397 = mem[_3347]
                mem[mem[64] + 68] = mem[_3347]
                idx = 0
                s = _3347 + 32
                t = mem[64] + 100
                while idx < _3397:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(_3345))
                staticcall address(_3345).getAmountsOut(uint256 rg1, address[] rg2) with:
                        gas gas_remaining wei
                       args 0, 64, mem[mem[64] + 68 len (32 * _3397) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4453 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4465 = mem[_4453]
                require mem[_4453] <= test266151307()
                require _4453 + mem[_4453] + 31 < _4453 + return_data.size
                _4477 = mem[_4453 + mem[_4453]]
                require mem[_4453 + mem[_4453]] <= test266151307()
                require _4453 + ceil32(return_data.size) + (32 * mem[_4453 + mem[_4453]]) + 32 <= test266151307() and (32 * mem[_4453 + mem[_4453]]) + 32 >= 0
                mem[64] = _4453 + ceil32(return_data.size) + (32 * mem[_4453 + mem[_4453]]) + 32
                mem[_4453 + ceil32(return_data.size)] = _4477
                require _4465 + (32 * _4477) + 32 <= return_data.size
                idx = 0
                s = _4453 + _4465 + 32
                t = _4453 + ceil32(return_data.size) + 32
                while idx < _4477:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _4477 - 1 < _4477
                mem[448] = mem[(32 * _4477 - 1) + _4453 + ceil32(return_data.size) + 32]
                mem[512] = 0
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5545] == mem[_5545 + 12 len 20]
                if mem[204 len 20] != mem[_5545 + 12 len 20]:
                    _5591 = mem[160]
                    _5592 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5591))
                    staticcall address(_5591).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5592)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5677] == mem[_5677]
                    mem[480] = mem[_5677]
                    _5777 = mem[128]
                    _5778 = mem[448]
                    _5779 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _5778
                    mem[mem[64] + 68] = address(_5779)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5777))
                    call address(_5777).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _5778, address(_5779), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6024 = mem[480]
                    _6025 = mem[160]
                    _6026 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6025))
                    staticcall address(_6025).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6026)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6234 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6234] == mem[_6234]
                    if mem[_6234] <= _6024:
                        revert with 0, 'noP3'
                else:
                    mem[512] = 1
                    _5627 = mem[160]
                    _5628 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5627))
                    staticcall address(_5627).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5628)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5689] == mem[_5689]
                    mem[480] = mem[_5689]
                    _5884 = mem[128]
                    _5885 = mem[448]
                    _5886 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _5885
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_5886)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5884))
                    call address(_5884).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _5885, 0, address(_5886), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6124 = mem[480]
                    _6125 = mem[160]
                    _6126 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6125))
                    staticcall address(_6125).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6126)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6259] == mem[_6259]
                    if mem[_6259] <= _6124:
                        revert with 0, 'noP3'
            else:
                require mem[448]
                if mem[448] * mem[mem[384] + 32] / mem[448] != mem[mem[384] + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[448] = mem[448] * mem[mem[384] + 32] / 10^10
                _3362 = mem[256]
                _3363 = mem[448]
                _3364 = mem[320]
                _3374 = mem[64]
                mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _3363
                mem[mem[64] + 36] = 64
                _3401 = mem[_3364]
                mem[mem[64] + 68] = mem[_3364]
                idx = 0
                s = _3364 + 32
                t = mem[64] + 100
                while idx < _3401:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(_3362))
                staticcall address(_3362).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _3374 + (32 * _3401) + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4452 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4464 = mem[_4452]
                require mem[_4452] <= test266151307()
                require _4452 + mem[_4452] + 31 < _4452 + return_data.size
                _4476 = mem[_4452 + mem[_4452]]
                require mem[_4452 + mem[_4452]] <= test266151307()
                require _4452 + ceil32(return_data.size) + (32 * mem[_4452 + mem[_4452]]) + 32 <= test266151307() and (32 * mem[_4452 + mem[_4452]]) + 32 >= 0
                mem[64] = _4452 + ceil32(return_data.size) + (32 * mem[_4452 + mem[_4452]]) + 32
                mem[_4452 + ceil32(return_data.size)] = _4476
                require _4464 + (32 * _4476) + 32 <= return_data.size
                idx = 0
                s = _4452 + _4464 + 32
                t = _4452 + ceil32(return_data.size) + 32
                while idx < _4476:
                    require mem[s] == mem[s]
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require _4476 - 1 < _4476
                mem[448] = mem[(32 * _4476 - 1) + _4452 + ceil32(return_data.size) + 32]
                mem[512] = 0
                require ext_code.size(mem[140 len 20])
                staticcall mem[140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5544] == mem[_5544 + 12 len 20]
                if mem[204 len 20] != mem[_5544 + 12 len 20]:
                    _5588 = mem[160]
                    _5589 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5588))
                    staticcall address(_5588).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5589)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5676 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5676] == mem[_5676]
                    mem[480] = mem[_5676]
                    _5768 = mem[128]
                    _5769 = mem[448]
                    _5770 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = _5769
                    mem[mem[64] + 68] = address(_5770)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5768))
                    call address(_5768).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, _5769, address(_5770), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6016 = mem[480]
                    _6017 = mem[160]
                    _6018 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6017))
                    staticcall address(_6017).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6018)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6232 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6232] == mem[_6232]
                    if mem[_6232] <= _6016:
                        revert with 0, 'noP3'
                else:
                    mem[512] = 1
                    _5624 = mem[160]
                    _5625 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_5624))
                    staticcall address(_5624).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_5625)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5688] == mem[_5688]
                    mem[480] = mem[_5688]
                    _5876 = mem[128]
                    _5877 = mem[448]
                    _5878 = mem[96]
                    mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _5877
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = address(_5878)
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = ('cd', 36).length
                    mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                    mem[mem[64] + ('cd', 36).length + 164] = 0
                    require ext_code.size(address(_5876))
                    call address(_5876).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args _5877, 0, address(_5878), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6116 = mem[480]
                    _6117 = mem[160]
                    _6118 = mem[96]
                    mem[mem[64] + 4] = mem[108 len 20]
                    require ext_code.size(address(_6117))
                    staticcall address(_6117).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_6118)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6257] == mem[_6257]
                    if mem[_6257] <= _6116:
                        revert with 0, 'noP3'
        else:
            require mem[416] - 10^10
            if (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) / mem[416] - 10^10 != mem[448]:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]):
                mem[480] = 0
                require 4 < mem[mem[384]]
                if 0 <= mem[mem[384] + 160]:
                    revert with 0, 'noP2'
                require 0 < mem[mem[384]]
                if not mem[448]:
                    mem[448] = 0
                    _3359 = mem[256]
                    _3361 = mem[320]
                    _3373 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 64
                    _3400 = mem[_3361]
                    mem[mem[64] + 68] = mem[_3361]
                    idx = 0
                    s = _3361 + 32
                    t = mem[64] + 100
                    while idx < _3400:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3359))
                    staticcall address(_3359).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3373 + (32 * _3400) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4451 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4463 = mem[_4451]
                    require mem[_4451] <= test266151307()
                    require _4451 + mem[_4451] + 31 < _4451 + return_data.size
                    _4475 = mem[_4451 + mem[_4451]]
                    require mem[_4451 + mem[_4451]] <= test266151307()
                    require _4451 + ceil32(return_data.size) + (32 * mem[_4451 + mem[_4451]]) + 32 <= test266151307() and (32 * mem[_4451 + mem[_4451]]) + 32 >= 0
                    mem[64] = _4451 + ceil32(return_data.size) + (32 * mem[_4451 + mem[_4451]]) + 32
                    mem[_4451 + ceil32(return_data.size)] = _4475
                    require _4463 + (32 * _4475) + 32 <= return_data.size
                    idx = 0
                    s = _4451 + _4463 + 32
                    t = _4451 + ceil32(return_data.size) + 32
                    while idx < _4475:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4475 - 1 < _4475
                    mem[448] = mem[(32 * _4475 - 1) + _4451 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5543] == mem[_5543 + 12 len 20]
                    if mem[204 len 20] != mem[_5543 + 12 len 20]:
                        _5585 = mem[160]
                        _5586 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5585))
                        staticcall address(_5585).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5586)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5675 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5675] == mem[_5675]
                        mem[480] = mem[_5675]
                        _5759 = mem[128]
                        _5760 = mem[448]
                        _5761 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5760
                        mem[mem[64] + 68] = address(_5761)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5759))
                        call address(_5759).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5760, address(_5761), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6008 = mem[480]
                        _6009 = mem[160]
                        _6010 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6009))
                        staticcall address(_6009).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6010)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6230 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6230] == mem[_6230]
                        if mem[_6230] <= _6008:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5621 = mem[160]
                        _5622 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5621))
                        staticcall address(_5621).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5622)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5687 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5687] == mem[_5687]
                        mem[480] = mem[_5687]
                        _5868 = mem[128]
                        _5869 = mem[448]
                        _5870 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5869
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5870)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5868))
                        call address(_5868).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5869, 0, address(_5870), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6108 = mem[480]
                        _6109 = mem[160]
                        _6110 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6109))
                        staticcall address(_6109).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6110)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6255] == mem[_6255]
                        if mem[_6255] <= _6108:
                            revert with 0, 'noP3'
                else:
                    require mem[448]
                    if mem[448] * mem[mem[384] + 32] / mem[448] != mem[mem[384] + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[448] = mem[448] * mem[mem[384] + 32] / 10^10
                    _3380 = mem[256]
                    _3381 = mem[448]
                    _3382 = mem[320]
                    _3389 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3381
                    mem[mem[64] + 36] = 64
                    _3405 = mem[_3382]
                    mem[mem[64] + 68] = mem[_3382]
                    idx = 0
                    s = _3382 + 32
                    t = mem[64] + 100
                    while idx < _3405:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3380))
                    staticcall address(_3380).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3389 + (32 * _3405) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4450 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4462 = mem[_4450]
                    require mem[_4450] <= test266151307()
                    require _4450 + mem[_4450] + 31 < _4450 + return_data.size
                    _4474 = mem[_4450 + mem[_4450]]
                    require mem[_4450 + mem[_4450]] <= test266151307()
                    require _4450 + ceil32(return_data.size) + (32 * mem[_4450 + mem[_4450]]) + 32 <= test266151307() and (32 * mem[_4450 + mem[_4450]]) + 32 >= 0
                    mem[64] = _4450 + ceil32(return_data.size) + (32 * mem[_4450 + mem[_4450]]) + 32
                    mem[_4450 + ceil32(return_data.size)] = _4474
                    require _4462 + (32 * _4474) + 32 <= return_data.size
                    idx = 0
                    s = _4450 + _4462 + 32
                    t = _4450 + ceil32(return_data.size) + 32
                    while idx < _4474:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4474 - 1 < _4474
                    mem[448] = mem[(32 * _4474 - 1) + _4450 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5542] == mem[_5542 + 12 len 20]
                    if mem[204 len 20] != mem[_5542 + 12 len 20]:
                        _5582 = mem[160]
                        _5583 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5582))
                        staticcall address(_5582).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5583)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5674 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5674] == mem[_5674]
                        mem[480] = mem[_5674]
                        _5750 = mem[128]
                        _5751 = mem[448]
                        _5752 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5751
                        mem[mem[64] + 68] = address(_5752)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5750))
                        call address(_5750).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5751, address(_5752), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6000 = mem[480]
                        _6001 = mem[160]
                        _6002 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6001))
                        staticcall address(_6001).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6002)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6228 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6228] == mem[_6228]
                        if mem[_6228] <= _6000:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5618 = mem[160]
                        _5619 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5618))
                        staticcall address(_5618).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5619)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5686 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5686] == mem[_5686]
                        mem[480] = mem[_5686]
                        _5860 = mem[128]
                        _5861 = mem[448]
                        _5862 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5861
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5862)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5860))
                        call address(_5860).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5861, 0, address(_5862), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6100 = mem[480]
                        _6101 = mem[160]
                        _6102 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6101))
                        staticcall address(_6101).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6102)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6253] == mem[_6253]
                        if mem[_6253] <= _6100:
                            revert with 0, 'noP3'
            else:
                require (-1 * 10^10 * mem[448]) + (mem[416] * mem[448])
                if (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / (-1 * 10^10 * mem[448]) + (mem[416] * mem[448]) != mem[mem[384] + 32]:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[480] = (-1 * 10^10 * mem[448] * mem[mem[384] + 32]) + (mem[416] * mem[448] * mem[mem[384] + 32]) / 100 * 10^18 / 2
                require 4 < mem[mem[384]]
                if mem[480] <= mem[mem[384] + 160]:
                    revert with 0, 'noP2'
                require 0 < mem[mem[384]]
                if not mem[448]:
                    mem[448] = 0
                    _3377 = mem[256]
                    _3379 = mem[320]
                    _3388 = mem[64]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0
                    mem[mem[64] + 36] = 64
                    _3404 = mem[_3379]
                    mem[mem[64] + 68] = mem[_3379]
                    idx = 0
                    s = _3379 + 32
                    t = mem[64] + 100
                    while idx < _3404:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3377))
                    staticcall address(_3377).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _3388 + (32 * _3404) + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4449 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4461 = mem[_4449]
                    require mem[_4449] <= test266151307()
                    require _4449 + mem[_4449] + 31 < _4449 + return_data.size
                    _4473 = mem[_4449 + mem[_4449]]
                    require mem[_4449 + mem[_4449]] <= test266151307()
                    require _4449 + ceil32(return_data.size) + (32 * mem[_4449 + mem[_4449]]) + 32 <= test266151307() and (32 * mem[_4449 + mem[_4449]]) + 32 >= 0
                    mem[64] = _4449 + ceil32(return_data.size) + (32 * mem[_4449 + mem[_4449]]) + 32
                    mem[_4449 + ceil32(return_data.size)] = _4473
                    require _4461 + (32 * _4473) + 32 <= return_data.size
                    idx = 0
                    s = _4449 + _4461 + 32
                    t = _4449 + ceil32(return_data.size) + 32
                    while idx < _4473:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4473 - 1 < _4473
                    mem[448] = mem[(32 * _4473 - 1) + _4449 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5541] == mem[_5541 + 12 len 20]
                    if mem[204 len 20] != mem[_5541 + 12 len 20]:
                        _5579 = mem[160]
                        _5580 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5579))
                        staticcall address(_5579).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5580)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5673 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5673] == mem[_5673]
                        mem[480] = mem[_5673]
                        _5741 = mem[128]
                        _5742 = mem[448]
                        _5743 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5742
                        mem[mem[64] + 68] = address(_5743)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5741))
                        call address(_5741).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5742, address(_5743), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5992 = mem[480]
                        _5993 = mem[160]
                        _5994 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5993))
                        staticcall address(_5993).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5994)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6226 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6226] == mem[_6226]
                        if mem[_6226] <= _5992:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5615 = mem[160]
                        _5616 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5615))
                        staticcall address(_5615).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5616)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5685 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5685] == mem[_5685]
                        mem[480] = mem[_5685]
                        _5852 = mem[128]
                        _5853 = mem[448]
                        _5854 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5853
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5854)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5852))
                        call address(_5852).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5853, 0, address(_5854), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6092 = mem[480]
                        _6093 = mem[160]
                        _6094 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6093))
                        staticcall address(_6093).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6094)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6251] == mem[_6251]
                        if mem[_6251] <= _6092:
                            revert with 0, 'noP3'
                else:
                    require mem[448]
                    if mem[448] * mem[mem[384] + 32] / mem[448] != mem[mem[384] + 32]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[448] = mem[448] * mem[mem[384] + 32] / 10^10
                    _3391 = mem[256]
                    _3392 = mem[448]
                    _3393 = mem[320]
                    mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _3392
                    mem[mem[64] + 36] = 64
                    _3408 = mem[_3393]
                    mem[mem[64] + 68] = mem[_3393]
                    idx = 0
                    s = _3393 + 32
                    t = mem[64] + 100
                    while idx < _3408:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(_3391))
                    staticcall address(_3391).getAmountsOut(uint256 rg1, address[] rg2) with:
                            gas gas_remaining wei
                           args _3392, 64, mem[mem[64] + 68 len (32 * _3408) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4448 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4460 = mem[_4448]
                    require mem[_4448] <= test266151307()
                    require _4448 + mem[_4448] + 31 < _4448 + return_data.size
                    _4472 = mem[_4448 + mem[_4448]]
                    require mem[_4448 + mem[_4448]] <= test266151307()
                    require _4448 + ceil32(return_data.size) + (32 * mem[_4448 + mem[_4448]]) + 32 <= test266151307() and (32 * mem[_4448 + mem[_4448]]) + 32 >= 0
                    mem[64] = _4448 + ceil32(return_data.size) + (32 * mem[_4448 + mem[_4448]]) + 32
                    mem[_4448 + ceil32(return_data.size)] = _4472
                    require _4460 + (32 * _4472) + 32 <= return_data.size
                    idx = 0
                    s = _4448 + _4460 + 32
                    t = _4448 + ceil32(return_data.size) + 32
                    while idx < _4472:
                        require mem[s] == mem[s]
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require _4472 - 1 < _4472
                    mem[448] = mem[(32 * _4472 - 1) + _4448 + ceil32(return_data.size) + 32]
                    mem[512] = 0
                    require ext_code.size(mem[140 len 20])
                    staticcall mem[140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5540 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5540] == mem[_5540 + 12 len 20]
                    if mem[204 len 20] != mem[_5540 + 12 len 20]:
                        _5576 = mem[160]
                        _5577 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5576))
                        staticcall address(_5576).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5577)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5672 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5672] == mem[_5672]
                        mem[480] = mem[_5672]
                        _5732 = mem[128]
                        _5733 = mem[448]
                        _5734 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = _5733
                        mem[mem[64] + 68] = address(_5734)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5732))
                        call address(_5732).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, _5733, address(_5734), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5984 = mem[480]
                        _5985 = mem[160]
                        _5986 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5985))
                        staticcall address(_5985).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5986)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6224 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6224] == mem[_6224]
                        if mem[_6224] <= _5984:
                            revert with 0, 'noP3'
                    else:
                        mem[512] = 1
                        _5612 = mem[160]
                        _5613 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_5612))
                        staticcall address(_5612).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_5613)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5684 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5684] == mem[_5684]
                        mem[480] = mem[_5684]
                        _5844 = mem[128]
                        _5845 = mem[448]
                        _5846 = mem[96]
                        mem[mem[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _5845
                        mem[mem[64] + 36] = 0
                        mem[mem[64] + 68] = address(_5846)
                        mem[mem[64] + 100] = 128
                        mem[mem[64] + 132] = ('cd', 36).length
                        mem[mem[64] + 164 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
                        mem[mem[64] + ('cd', 36).length + 164] = 0
                        require ext_code.size(address(_5844))
                        call address(_5844).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args _5845, 0, address(_5846), 128, ('cd', 36).length, call.data[cd[36] + 36 len ('cd', 36).length], mem[mem[64] + ('cd', 36).length + 164 len ceil32(('cd', 36).length) - ('cd', 36).length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6084 = mem[480]
                        _6085 = mem[160]
                        _6086 = mem[96]
                        mem[mem[64] + 4] = mem[108 len 20]
                        require ext_code.size(address(_6085))
                        staticcall address(_6085).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_6086)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_6249] == mem[_6249]
                        if mem[_6249] <= _6084:
                            revert with 0, 'noP3'
}



}
