contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_271c4279;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function sub_271c4279(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_271c4279[arg1]
}

function vaultsLength() payable {
    return sub_929060d8.length
}

function owner() payable {
    return owner
}

function sub_929060d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_929060d8.length
    return sub_929060d8[arg1].field_0, sub_929060d8[arg1].field_256, sub_929060d8[arg1].field_512
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

function sub_ab0c3f94(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 len 10797] = code.data[2813 len 10797]
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 10895] = 192
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11087] = arg1.length
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11119 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) <= arg1.length:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 10927] = ceil32(arg1.length) + 224
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11119] = arg2.length
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 10959] = address(arg3)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 10991] = address(arg4)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11023] = address(arg5)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11055] = arg6
        create contract with 0 wei
                        code: code.data[2813 len 10797], Array(len=arg6, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 2844 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 224, address(arg3), address(arg4), address(arg5)
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 11119] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 10927] = ceil32(arg1.length) + 224
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11119] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11151 len ceil32(arg2.length)] = arg2[all], code.data[arg2.length + -ceil32(ceil32(arg2.length)) + 2844 len ceil32(arg2.length) - arg2.length]
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 11151] = 0
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 10959] = address(arg3)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 10991] = address(arg4)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11023] = address(arg5)
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 11055] = arg6
        create contract with 0 wei
                        code: code.data[2813 len 10797], Array(len=arg6, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 11151 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 224, address(arg3), address(arg4), address(arg5)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_271c4279[address(create.new_address)] = sub_929060d8.length
    sub_929060d8.length++
    sub_929060d8[sub_929060d8.length].field_0 = address(create.new_address)
    storB10E[stor1.length] = block.number
    storB10E[stor1.length] = block.timestamp
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ceil32(arg1.length) <= arg1.length:
        emit 0xd81bf987: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], 0) << (8 * ceil32(arg2.length)) - 256), ceil32(arg1.length) + 128, arg6, address(create.new_address)
    else:
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 322] = arg2.length
        mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 354 len ceil32(arg2.length)] = arg2[all], 0
        if ceil32(arg2.length) > arg2.length:
            mem[ceil32(arg1.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg2.length + 354] = 0
        emit 0xd81bf987: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + arg1.length + 354 len ceil32(arg2.length) - arg1.length + ceil32(arg1.length)]), ceil32(arg1.length) + 128, arg6, address(create.new_address)
}

function sub_19c74c0d(?) payable {
    require calldata.size - 4 >= 64
    if sub_929060d8.length < arg1:
        revert with 0, 17
    if arg2 <= sub_929060d8.length - arg1:
        if arg2 > test266151307():
            revert with 0, 65
        mem[96] = arg2
        mem[64] = (32 * arg2) + 128
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_929060d8.length:
                    revert with 0, 50
                mem[0] = 1
                _49 = mem[64]
                mem[64] = mem[64] + 96
                mem[_49] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_0
                mem[_49 + 32] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_256
                mem[_49 + 64] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_512
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _49
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1 > !arg2:
                revert with 0, 17
            _47 = mem[64]
            mem[mem[64]] = 64
            _55 = mem[96]
            mem[mem[64] + 64] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while arg2 < _55:
                _89 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_89 + 32]
                mem[t + 64] = mem[_89 + 64]
                s = arg2 + 1
                s = s + 32
                t = t + 96
                continue 
            mem[_47 + 32] = arg1 + arg2
        else:
            mem[64] = (32 * arg2) + 224
            mem[(32 * arg2) + 128] = 0
            mem[(32 * arg2) + 160] = 0
            mem[(32 * arg2) + 192] = 0
            mem[var15001] = (32 * arg2) + 128
            s = var15001
            idx = var15002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * arg2) + 128] = 0
                mem[(32 * arg2) + 160] = 0
                mem[(32 * arg2) + 192] = 0
                mem[s + 32] = (32 * arg2) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_929060d8.length:
                    revert with 0, 50
                mem[0] = 1
                _121 = mem[64]
                mem[64] = mem[64] + 96
                mem[_121] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_0
                mem[_121 + 32] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_256
                mem[_121 + 64] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_512
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _121
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1 > !arg2:
                revert with 0, 17
            _119 = mem[64]
            mem[mem[64]] = 64
            _127 = mem[96]
            mem[mem[64] + 64] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while arg2 < _127:
                _139 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_139 + 32]
                mem[t + 64] = mem[_139 + 64]
                s = arg2 + 1
                s = s + 32
                t = t + 96
                continue 
            mem[_119 + 32] = arg1 + arg2
    else:
        if sub_929060d8.length < arg1:
            revert with 0, 17
        if sub_929060d8.length - arg1 > test266151307():
            revert with 0, 65
        mem[96] = sub_929060d8.length - arg1
        mem[64] = (32 * sub_929060d8.length - arg1) + 128
        if not sub_929060d8.length - arg1:
            idx = 0
            while idx < sub_929060d8.length - arg1:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_929060d8.length:
                    revert with 0, 50
                mem[0] = 1
                _53 = mem[64]
                mem[64] = mem[64] + 96
                mem[_53] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_0
                mem[_53 + 32] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_256
                mem[_53 + 64] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_512
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _53
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1 > !(sub_929060d8.length - arg1):
                revert with 0, 17
            _51 = mem[64]
            mem[mem[64]] = 64
            _56 = mem[96]
            mem[mem[64] + 64] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while sub_929060d8.length - arg1 < _56:
                _93 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_93 + 32]
                mem[t + 64] = mem[_93 + 64]
                s = sub_929060d8.length + -arg1 + 1
                s = s + 32
                t = t + 96
                continue 
            mem[_51 + 32] = sub_929060d8.length
        else:
            mem[64] = (32 * sub_929060d8.length - arg1) + 224
            mem[(32 * sub_929060d8.length - arg1) + 128] = 0
            mem[(32 * sub_929060d8.length - arg1) + 160] = 0
            mem[(32 * sub_929060d8.length - arg1) + 192] = 0
            mem[var19001] = (32 * sub_929060d8.length - arg1) + 128
            s = var19001
            idx = var19002
            while idx - 1:
                mem[64] = mem[64] + 96
                mem[(32 * sub_929060d8.length - arg1) + 128] = 0
                mem[(32 * sub_929060d8.length - arg1) + 160] = 0
                mem[(32 * sub_929060d8.length - arg1) + 192] = 0
                mem[s + 32] = (32 * sub_929060d8.length - arg1) + 128
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < sub_929060d8.length - arg1:
                if arg1 > !idx:
                    revert with 0, 17
                if arg1 + idx >= sub_929060d8.length:
                    revert with 0, 50
                mem[0] = 1
                _125 = mem[64]
                mem[64] = mem[64] + 96
                mem[_125] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_0
                mem[_125 + 32] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_256
                mem[_125 + 64] = stor[('name', 'sub_929060d8', 1) + (3 * arg1) + (3 * idx)].field_512
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _125
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg1 > !(sub_929060d8.length - arg1):
                revert with 0, 17
            _123 = mem[64]
            mem[mem[64]] = 64
            _128 = mem[96]
            mem[mem[64] + 64] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while sub_929060d8.length - arg1 < _128:
                _143 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_143 + 32]
                mem[t + 64] = mem[_143 + 64]
                s = sub_929060d8.length + -arg1 + 1
                s = s + 32
                t = t + 96
                continue 
            mem[_123 + 32] = sub_929060d8.length
    return memory
      from mem[64]
       len t - mem[64]
}



}
