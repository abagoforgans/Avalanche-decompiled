contract main {




// =====================  Runtime code  =====================


#
#  - sub_36b50c04(?)
#
uint32 stor0;
address owner;
uint256 stor0;

function owner() payable {
    return address(owner)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function sub_d7e74b3c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_976c03f5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 256
    mem[128] = 32
    require ('cd', 4).length == address(('cd', 4).length)
    mem[160] = address(('cd', 4).length)
    require ('cd', 4)[0] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= test266151307()
    require cd[4] + 4 <= calldata.size - (32 * cd[(cd[4] + ('cd', 4)[0] + 4)])
    mem[192] = 256
    mem[416] = cd[(cd[4] + ('cd', 4)[0] + 4)]
    require cd[(cd[4] + ('cd', 4)[0] + 4)] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[448 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]] = call.data[cd[4] + ('cd', 4)[0] + 36 len 32 * cd[(cd[4] + ('cd', 4)[0] + 4)]]
    require ('cd', 4)[1] == address(('cd', 4)[1])
    mem[224] = address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    mem[256] = address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    mem[288] = address(('cd', 4)[3])
    mem[320] = ('cd', 4)[4]
    mem[352] = ('cd', 4)[5]
    mem[384] = ('cd', 4)[6]
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ext_code.size(address(('cd', 4)[3]))
    call address(('cd', 4)[3]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args ('cd', 4)[4], ('cd', 4)[5], address(this.address), Array(len=(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 320, data=mem[128 len ceil32(32 * cd[(cd[4] + ('cd', 4)[0] + 4)]) + 10])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rugPull(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 132] = address(owner)
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor0)
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
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
}

function sub_9a25ac73(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _144 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_144))
        staticcall address(_144).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _148 = mem[_147]
        if mem[_147]:
            _149 = mem[64]
            mem[mem[64] + 36] = address(owner)
            mem[mem[64] + 68] = _148
            _150 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_150 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_150 + 36 len 28]
            mem[64] = _149 + 164
            mem[_149 + 100] = 32
            mem[_149 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_144)):
                revert with 0, 'Address: call to non-contract'
            _157 = mem[_150]
            s = 0
            while s < _157:
                mem[s + _149 + 164] = mem[s + _150 + 32]
                s = s + 32
                continue 
            if ceil32(_157) > _157:
                mem[_149 + _157 + 164] = 0
            call address(_144).mem[_149 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_149 + 168 len _157 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_149 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_149 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _149 + 232] = mem[idx + _149 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_149 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _149 + ceil32(return_data.size) + 165
                mem[_149 + 164] = return_data.size
                mem[_149 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_149 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_149 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _149 + ceil32(return_data.size) + 233] = mem[idx + _149 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_149 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_149 + 196] == bool(mem[_149 + 196])
                    if not mem[_149 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 32
    require cd[(arg4 + 36)] <= test266151307()
    require arg4.length - cd[(arg4 + 36)] >= 256
    require cd[(arg4 + cd[(arg4 + 36)] + 36)] == address(cd[(arg4 + cd[(arg4 + 36)] + 36)])
    require cd[(arg4 + cd[(arg4 + 36)] + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 353 < 352 or ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 353 > test266151307():
        revert with 0, 65
    mem[352] = cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]
    require cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + (32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 68
    t = 384
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[128] = 352
    require cd[(arg4 + cd[(arg4 + 36)] + 100)] == address(cd[(arg4 + cd[(arg4 + 36)] + 100)])
    mem[160] = cd[(arg4 + cd[(arg4 + 36)] + 100)]
    require cd[(arg4 + cd[(arg4 + 36)] + 132)] == address(cd[(arg4 + cd[(arg4 + 36)] + 132)])
    mem[192] = cd[(arg4 + cd[(arg4 + 36)] + 132)]
    require cd[(arg4 + cd[(arg4 + 36)] + 164)] == address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[224] = cd[(arg4 + cd[(arg4 + 36)] + 164)]
    mem[256] = cd[(arg4 + cd[(arg4 + 36)] + 196)]
    mem[288] = cd[(arg4 + cd[(arg4 + 36)] + 228)]
    mem[320] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]:
        if idx >= mem[352]:
            revert with 0, 50
        _1275 = mem[(32 * idx) + 384]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 353] = 0x90cf0bba00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 357] = _1275
        require ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 36)]))
        call address(cd[(arg4 + cd[(arg4 + 36)] + 36)]).liquidateVault(uint256 arg1) with:
             gas gas_remaining wei
            args _1275
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 36)]))
    call address(cd[(arg4 + cd[(arg4 + 36)] + 36)]).getPaid() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 36)]))
    staticcall address(cd[(arg4 + cd[(arg4 + 36)] + 36)]).collateral() with:
            gas gas_remaining wei
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + 353] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(return_data.size) + 357] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + ceil32(return_data.size) + 353] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 389] = address(cd[(arg4 + cd[(arg4 + 36)] + 164)])
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 421] = cd[(arg4 + cd[(arg4 + 36)] + 260)]
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 353] = 68
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 385 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 453] = 32
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 485] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 132)])):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 517 len 96] = 0, address(cd[(arg4 + cd[(arg4 + 36)] + 164)]), cd[(arg4 + cd[(arg4 + 36)] + 260)], 0
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 585] = 0
    call address(cd[(arg4 + cd[(arg4 + 36)] + 132)]) with:
       funct Mask(32, 224, 0, address(cd[(arg4 + cd[(arg4 + 36)] + 164)]), cd[(arg4 + cd[(arg4 + 36)] + 260)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(cd[(arg4 + cd[(arg4 + 36)] + 164)]), cd[(arg4 + cd[(arg4 + 36)] + 260)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                revert with memory
                  from 128
                   len cd[(arg4 + cd[(arg4 + 36)] + 36)]
            revert with 0, 'SafeERC20: low-level call failed'
        require not cd[(arg4 + cd[(arg4 + 36)] + 36)]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 521] = this.address
        require ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 132)]))
        staticcall address(cd[(arg4 + cd[(arg4 + 36)] + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 517] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 553] = address(owner)
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 585] = ext_call.return_data[0]
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 517] = 68
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 549 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 617] = 32
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 649] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 132)])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 681 len 96] = 0, address(owner), ext_call.return_data[0], 0
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 749] = 0
            call address(cd[(arg4 + cd[(arg4 + 36)] + 132)]) with:
               funct Mask(32, 224, 0, address(owner), ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, address(owner), ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                        revert with memory
                          from 128
                           len cd[(arg4 + cd[(arg4 + 36)] + 36)]
                    revert with 0, 'SafeERC20: low-level call failed'
                require not cd[(arg4 + cd[(arg4 + 36)] + 36)]
            mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 713 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 713] == bool(mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 713])
                if not mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + 713]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 517] = return_data.size
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 549 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 549] == bool(mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 549])
        if not mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 549]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 522] = this.address
    require ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 132)]))
    staticcall address(cd[(arg4 + cd[(arg4 + 36)] + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 518] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 554] = address(owner)
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 586] = ext_call.return_data[0]
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 518] = 68
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 550 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 618] = 32
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 650] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(cd[(arg4 + cd[(arg4 + 36)] + 132)])):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 682 len 96] = 0, address(owner), ext_call.return_data[0], 0
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 750] = 0
    call address(cd[(arg4 + cd[(arg4 + 36)] + 132)]) with:
       funct Mask(32, 224, 0, address(owner), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(owner), ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if cd[(arg4 + cd[(arg4 + 36)] + 36)]:
                revert with memory
                  from 128
                   len cd[(arg4 + cd[(arg4 + 36)] + 36)]
            revert with 0, 'SafeERC20: low-level call failed'
        require not cd[(arg4 + cd[(arg4 + 36)] + 36)]
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 682] = return_data.size
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 714 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 683] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 687] = 32
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 719] = 32
        mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 751] = 'SafeERC20: low-level call failed'
        revert with memory
          from ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 683
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
    require return_data.size >= 32
    require mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 714] == bool(mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 714])
    if mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 714]:
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 683] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 687] = 32
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 719] = 42
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 751] = 'SafeERC20: ERC20 operation did n'
    mem[ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 783] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from ceil32(32 * cd[(arg4 + cd[(arg4 + 36)] + cd[(arg4 + cd[(arg4 + 36)] + 68)] + 36)]) + (8 * ceil32(return_data.size)) + 683
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
