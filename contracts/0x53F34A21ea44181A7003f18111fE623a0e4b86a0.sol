contract main {




// =====================  Runtime code  =====================


#
#  - sub_03f119b3(?)
#  - sub_4b20e534(?)
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

function sub_13794211(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if sub_eeb98d9c[address(msg.sender)] != 1:
        revert with 0, '4'
    if sub_ac055fe7[address(arg2)] != 1:
        revert with 0, 'not allowed'
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
    if _34 - 1 < _34:
        return memory
          from (32 * _34 - 1) + (32 * ('cd', 68).length) + ceil32(return_data.size) + 160
           len 32
    revert
}

function sub_47cc559a(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if 400 * 10^18 * arg1 / 400 * 10^18 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 400 * 10^18 * arg1:
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        if 0 / arg2 / arg2 > 100 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 10^9
        s = 10^10
        s = 2500000 * 3600
        while idx > 100000:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if (-(0 / arg2 / arg2) + 100 * 10^18 / s) + s < -(0 / arg2 / arg2) + 100 * 10^18 / s:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (-(0 / arg2 / arg2) + 100 * 10^18 / s) + s / 2:
                idx = ((-(0 / arg2 / arg2) + 100 * 10^18 / s) + s / 2) - s
                s = s
                s = (-(0 / arg2 / arg2) + 100 * 10^18 / s) + s / 2
                continue 
            if (-(0 / arg2 / arg2) + 100 * 10^18 / s) + s / 2 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = s - ((-(0 / arg2 / arg2) + 100 * 10^18 / s) + s / 2)
            s = s
            s = (-(0 / arg2 / arg2) + 100 * 10^18 / s) + s / 2
            continue 
    else:
        require 400 * 10^18 * arg1
        if (400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / 400 * 10^18 * arg1 != arg3 - arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        if (400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2 > 100 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 10^9
        s = 10^10
        s = 2500000 * 3600
        while idx > 100000:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if (-((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s) + s < -((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (-((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s) + s / 2:
                idx = ((-((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s) + s / 2) - s
                s = s
                s = (-((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s) + s / 2
                continue 
            if (-((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s) + s / 2 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = s - ((-((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s) + s / 2)
            s = s
            s = (-((400 * 10^18 * arg3 * arg1) - (400 * 10^18 * arg4 * arg1) / arg2 / arg2) + 100 * 10^18 / s) + s / 2
            continue 
    return s
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

function sub_3bfcc5fb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not arg2:
        if not arg3:
            if not arg1:
                return 0
            require arg1
            if arg1 * arg4 / arg1 != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not arg1 * arg4:
                return 0
            require arg1 * arg4
            if arg1 * arg4 * arg4 / arg1 * arg4 != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg1 * arg4 * arg4 < arg1 * arg4 * arg4:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > arg1 * arg4 * arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * arg4 * arg4 / 100 * 10^18)
        require arg3
        if 100 * 10^18 * arg3 / arg3 != 100 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg1:
            if 100 * 10^18 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 100 * 10^18 * arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            return (100 * 10^18 * arg3 / 100 * 10^18)
        require arg1
        if arg1 * arg4 / arg1 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg1 * arg4:
            if 100 * 10^18 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 100 * 10^18 * arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            return (100 * 10^18 * arg3 / 100 * 10^18)
        require arg1 * arg4
        if arg1 * arg4 * arg4 / arg1 * arg4 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (arg1 * arg4 * arg4) + (100 * 10^18 * arg3) < arg1 * arg4 * arg4:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (arg1 * arg4 * arg4) + (100 * 10^18 * arg3):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * arg4 * arg4) + (100 * 10^18 * arg3) / 100 * 10^18)
    require arg2
    if arg2 * arg4 / arg2 != arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg2 * arg4:
        if not arg3:
            if not arg1:
                return 0
            require arg1
            if arg1 * arg4 / arg1 != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not arg1 * arg4:
                return 0
            require arg1 * arg4
            if arg1 * arg4 * arg4 / arg1 * arg4 != arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg1 * arg4 * arg4 < arg1 * arg4 * arg4:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > arg1 * arg4 * arg4:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * arg4 * arg4 / 100 * 10^18)
        require arg3
        if 100 * 10^18 * arg3 / arg3 != 100 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg1:
            if 100 * 10^18 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 100 * 10^18 * arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            return (100 * 10^18 * arg3 / 100 * 10^18)
        require arg1
        if arg1 * arg4 / arg1 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg1 * arg4:
            if 100 * 10^18 * arg3 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > 100 * 10^18 * arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            return (100 * 10^18 * arg3 / 100 * 10^18)
        require arg1 * arg4
        if arg1 * arg4 * arg4 / arg1 * arg4 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (arg1 * arg4 * arg4) + (100 * 10^18 * arg3) < arg1 * arg4 * arg4:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > (arg1 * arg4 * arg4) + (100 * 10^18 * arg3):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * arg4 * arg4) + (100 * 10^18 * arg3) / 100 * 10^18)
    require arg2 * arg4
    if 10^10 * arg2 * arg4 / arg2 * arg4 != 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg3:
        if not arg1:
            if 10^10 * arg2 * arg4 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * 10^10 * arg2 * arg4 / 100 * 10^18)
        require arg1
        if arg1 * arg4 / arg1 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not arg1 * arg4:
            if 10^10 * arg2 * arg4 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * 10^10 * arg2 * arg4 / 100 * 10^18)
        require arg1 * arg4
        if arg1 * arg4 * arg4 / arg1 * arg4 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if arg1 * arg4 * arg4 < arg1 * arg4 * arg4:
            revert with 0, 'SafeMath: addition overflow'
        if 10^10 * arg2 * arg4 > arg1 * arg4 * arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * arg4 * arg4) - (10^10 * arg2 * arg4) / 100 * 10^18)
    require arg3
    if 100 * 10^18 * arg3 / arg3 != 100 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg1:
        if 100 * 10^18 * arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^10 * arg2 * arg4 > 100 * 10^18 * arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((100 * 10^18 * arg3) - (10^10 * arg2 * arg4) / 100 * 10^18)
    require arg1
    if arg1 * arg4 / arg1 != arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg1 * arg4:
        if 100 * 10^18 * arg3 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 10^10 * arg2 * arg4 > 100 * 10^18 * arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((100 * 10^18 * arg3) - (10^10 * arg2 * arg4) / 100 * 10^18)
    require arg1 * arg4
    if arg1 * arg4 * arg4 / arg1 * arg4 != arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if (arg1 * arg4 * arg4) + (100 * 10^18 * arg3) < arg1 * arg4 * arg4:
        revert with 0, 'SafeMath: addition overflow'
    if 10^10 * arg2 * arg4 > (arg1 * arg4 * arg4) + (100 * 10^18 * arg3):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((arg1 * arg4 * arg4) + (100 * 10^18 * arg3) - (10^10 * arg2 * arg4) / 100 * 10^18)
}

function sub_6b639663(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not arg1:
        if not arg2:
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg2
            if 2 * arg2 / arg2 != 2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if arg4 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 2 * arg2 > 0:
                require 2 * arg2
                if 2 * arg2 > 0:
                    require 2 * arg2
                    if 0 / 2 * arg2 / 2 * arg2 > 100 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    idx = 10^9
                    s = 10^10
                    s = 2500000 * 3600
                    while idx > 100000:
                        if s <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require s
                        if (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s < -(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2:
                            idx = ((-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2) - s
                            s = s
                            s = (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2
                            continue 
                        if (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        idx = s - ((-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2)
                        s = s
                        s = (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2
                        continue 
                    if 10^10 * 2 * arg2 / 10^10 != 2 * arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        revert with 0, 'SafeMath: division by zero'
    require arg1
    if 3 * arg1 / arg1 != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not arg2:
        if arg4 > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if 1200 * 10^18 * arg1 / 400 * 10^18 != 3 * arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 1200 * 10^18 * arg1:
            require 1200 * 10^18 * arg1
            if (1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 1200 * 10^18 * arg1 != arg3 - arg4:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        revert with 0, 'SafeMath: division by zero'
    require arg2
    if 2 * arg2 / arg2 != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if arg4 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if 1200 * 10^18 * arg1 / 400 * 10^18 != 3 * arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not 1200 * 10^18 * arg1:
        if 2 * arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * arg2
        if 2 * arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * arg2
        if 0 / 2 * arg2 / 2 * arg2 > 100 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 10^9
        s = 10^10
        s = 2500000 * 3600
        while idx > 100000:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s < -(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2:
                idx = ((-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2) - s
                s = s
                s = (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2
                continue 
            if (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = s - ((-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2)
            s = s
            s = (-(0 / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2
            continue 
    else:
        require 1200 * 10^18 * arg1
        if (1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 1200 * 10^18 * arg1 != arg3 - arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if 2 * arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * arg2
        if 2 * arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require 2 * arg2
        if (1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2 > 100 * 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 10^9
        s = 10^10
        s = 2500000 * 3600
        while idx > 100000:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if (-((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s < -((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (-((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2:
                idx = ((-((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2) - s
                s = s
                s = (-((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2
                continue 
            if (-((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2 > s:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = s - ((-((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2)
            s = s
            s = (-((1200 * 10^18 * arg3 * arg1) - (1200 * 10^18 * arg4 * arg1) / 2 * arg2 / 2 * arg2) + 100 * 10^18 / s) + s / 2
            continue 
    if 10^10 * 2 * arg2 / 10^10 != 2 * arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if 3 * arg1 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require 3 * arg1
    if s > 10^10:
        revert with 0, 'SafeMath: subtraction overflow'
    if not Mask(255, 1, 10^10 * 2 * arg2 / 3 * arg1):
        return 0
    require 10^10 * 2 * arg2 / 3 * arg1 / 2
    if (10^10 * 10^10 * 2 * arg2 / 3 * arg1 / 2) - (s * 10^10 * 2 * arg2 / 3 * arg1 / 2) / 10^10 * 2 * arg2 / 3 * arg1 / 2 != -s + 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    return ((10^10 * 10^10 * 2 * arg2 / 3 * arg1 / 2) - (s * 10^10 * 2 * arg2 / 3 * arg1 / 2) / 10^10)
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _596
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _597
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _598
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _599
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _600
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _601
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _602
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _603
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _596
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _597
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _598
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _599
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _600
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _601
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _602
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _603
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _596
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _597
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _598
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _599
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _600
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _601
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _602
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _603
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _596
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _597
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _598
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _599
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _600
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _601
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _602
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _603
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _596
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _597
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _598
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _599
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
        mem[256] = 0
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _600
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _601
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _602
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
                mem[(32 * cd[(arg4 + cd[(arg4 + 132)] + 36)]) + (8 * ceil32(return_data.size)) + 320] = _603
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



}
