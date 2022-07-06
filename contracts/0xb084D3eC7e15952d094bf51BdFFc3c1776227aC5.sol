contract main {




// =====================  Runtime code  =====================


#
#  - stakeAll()
#
const sub_1958f8dc(?) = (24 * 3600)

const sub_3609b8ef(?) = 1

const sub_4e088b3c(?) = 9686 * 10^16

const sub_7c7fae86(?) = 3657 * 10^16

const sub_d4567893(?) = 199


address owner;
array of uint256 stor1;
array of uint8 stor2;
array of uint256 stor3;
array of uint8 stor4;
mapping of struct stakes;
mapping of struct sub_ca7ef303;
mapping of struct sub_8c13bb07;
mapping of uint256 stor8;
mapping of uint256 sub_4b63a04b;
mapping of uint256 sub_723498c6;
mapping of uint256 sub_3244dec9;
uint8 isPaused;
uint256 stor13;

function sub_3244dec9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3244dec9[arg1]
}

function nft() payable {
    return address(stor1.length)
}

function sub_4b63a04b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b63a04b[arg1]
}

function sub_723498c6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= sub_3244dec9[address(arg1)]:
        revert with 0, 'owner index out of bounds'
    return sub_723498c6[address(arg1)][arg2]
}

function sub_8c13bb07(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if arg2 >= sub_4b63a04b[address(arg1)]:
        revert with 0, 'owner index out of bounds'
    return sub_8c13bb07[address(arg1)][arg2].field_0
}

function owner() payable {
    return owner
}

function sub_b1400b91(?) payable {
    return address(stor2.length)
}

function isPaused() payable {
    return bool(uint8(isPaused))
}

function sub_ca7ef303(?) payable {
    require calldata.size - 4 >= 32
    return sub_ca7ef303[arg1].field_0, 
           sub_ca7ef303[arg1].field_256,
           sub_ca7ef303[arg1].field_512,
           bool(sub_ca7ef303[arg1].field_768)
}

function stakes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return stakes[arg1].field_0, 
           stakes[arg1].field_256,
           bool(stakes[arg1].field_512),
           stakes[arg1].field_768,
           bool(stakes[arg1].field_1024)
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

function flipPauseStatus() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor13) = not uint8(isPaused) or Mask(248, 8, uint256(stor13))
}

function sub_e6cee3eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor3.length) = address(arg1)
}

function sub_eb183bf6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor4.length) = address(arg1)
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_5ef13430(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor2.length))
    call address(stor2.length).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(isPaused):
        revert with 0, 'Staking is not active.'
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own this token'
    require ext_code.size(address(stor1.length))
    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x711173fb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stakes[arg1].field_0 = msg.sender
    stakes[arg1].field_256 = arg1
    stakes[arg1].field_512 = uint8(bool(ext_call.return_data[0]))
    stakes[arg1].field_768 = block.timestamp
    stakes[arg1].field_1024 = 1
    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)]].field_0 = arg1
    stor8[arg1] = sub_4b63a04b[address(msg.sender)]
    if sub_4b63a04b[address(msg.sender)] == -1:
        revert with 0, 17
    sub_4b63a04b[address(msg.sender)]++
}

function batchStake(uint256[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if uint8(isPaused):
        revert with 0, 'Staking is not active.'
    idx = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_28] == mem[_28 + 12 len 20]
        if mem[_28 + 12 len 20] != msg.sender:
            revert with 0, 'You don't own this token'
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(address(stor1.length))
        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _34 = mem[64]
        mem[64] = mem[64] + 160
        mem[_34] = msg.sender
        mem[_34 + 32] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 4] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(address(stor1.length))
        staticcall address(stor1.length).0x711173fb with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_37] == bool(mem[_37])
        mem[_34 + 64] = bool(mem[_37])
        mem[_34 + 96] = block.timestamp
        mem[_34 + 128] = 1
        stakes[cd[((32 * idx) + arg1 + 36)]].field_0 = msg.sender
        stakes[cd[((32 * idx) + arg1 + 36)]].field_256 = cd[((32 * idx) + arg1 + 36)]
        stakes[cd[((32 * idx) + arg1 + 36)]].field_512 = uint8(bool(mem[_34 + 64]))
        stakes[cd[((32 * idx) + arg1 + 36)]].field_768 = block.timestamp
        stakes[cd[((32 * idx) + arg1 + 36)]].field_1024 = 1
        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)]].field_0 = cd[((32 * idx) + arg1 + 36)]
        stor8[cd[((32 * idx) + arg1 + 36)]] = sub_4b63a04b[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 9
        if sub_4b63a04b[address(msg.sender)] == -1:
            revert with 0, 17
        sub_4b63a04b[address(msg.sender)]++
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_ef8baa30(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 5
            _36 = mem[64]
            mem[64] = mem[64] + 160
            mem[_36] = stakes[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_36 + 32] = stakes[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_36 + 64] = bool(stakes[cd[((32 * idx) + cd[4] + 36)]].field_512)
            mem[_36 + 96] = stakes[cd[((32 * idx) + cd[4] + 36)]].field_768
            mem[_36 + 128] = bool(stakes[cd[((32 * idx) + cd[4] + 36)]].field_1024)
            if not stakes[cd[((32 * idx) + cd[4] + 36)]].field_1024:
                revert with 0, 'This token isn't staked'
            if block.timestamp < stakes[cd[((32 * idx) + cd[4] + 36)]].field_768:
                revert with 0, 17
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _54 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_54] == bool(mem[_54])
            if not mem[_54]:
                if block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 3657 * 10^16 * block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600
            else:
                if block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 9686 * 10^16 * block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 5
            _39 = mem[64]
            mem[64] = mem[64] + 160
            mem[_39] = stakes[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_39 + 32] = stakes[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_39 + 64] = bool(stakes[cd[((32 * idx) + cd[4] + 36)]].field_512)
            mem[_39 + 96] = stakes[cd[((32 * idx) + cd[4] + 36)]].field_768
            mem[_39 + 128] = bool(stakes[cd[((32 * idx) + cd[4] + 36)]].field_1024)
            if not stakes[cd[((32 * idx) + cd[4] + 36)]].field_1024:
                revert with 0, 'This token isn't staked'
            if block.timestamp < stakes[cd[((32 * idx) + cd[4] + 36)]].field_768:
                revert with 0, 17
            mem[mem[64] + 4] = cd[((32 * idx) + cd[4] + 36)]
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[4] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _55 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_55] == bool(mem[_55])
            if not mem[_55]:
                if block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 3657 * 10^16 * block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600
            else:
                if block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600:
                    revert with 0, 17
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = 9686 * 10^16 * block.timestamp - stakes[cd[((32 * idx) + cd[4] + 36)]].field_768 / 24 * 3600
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_18745921(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 12
    if arg2 >= sub_3244dec9[address(arg1)]:
        mem[96] = 0
        mem[64] = 128
        mem[128] = 32
        mem[160] = 0
        idx = 0
        s = 128
        t = 192
        while idx < mem[96]:
            _73 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_73 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len -mem[64] + 192
    mem[0] = address(arg1)
    mem[32] = 12
    if arg2 > !arg3:
        revert with 0, 17
    if arg2 + arg3 < sub_3244dec9[address(arg1)]:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= sub_3244dec9[address(arg1)]:
                    revert with 0, 'owner index out of bounds'
                mem[0] = arg2 + idx
                _98 = mem[64]
                mem[64] = mem[64] + 64
                mem[_98] = sub_723498c6[address(arg1)][arg2 + idx]
                mem[0] = sub_723498c6[address(arg1)][arg2 + idx]
                mem[32] = 6
                mem[_98 + 32] = sub_ca7ef303[stor10[address(arg1)][arg2 + idx]].field_512
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _98
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _77 = mem[64]
            mem[mem[64]] = 32
            _79 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _79:
                _133 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_133 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _77 + (64 * _79) + -mem[64] + 64
        mem[64] = (32 * arg3) + 192
        mem[(32 * arg3) + 128] = 0
        mem[(32 * arg3) + 160] = 0
        mem[128] = (32 * arg3) + 128
        s = 128
        idx = arg3
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg3) + 128] = 0
            mem[(32 * arg3) + 160] = 0
            mem[s + 32] = (32 * arg3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > !idx:
                revert with 0, 17
            if arg2 + idx >= sub_3244dec9[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = arg2 + idx
            _160 = mem[64]
            mem[64] = mem[64] + 64
            mem[_160] = sub_723498c6[address(arg1)][arg2 + idx]
            mem[0] = sub_723498c6[address(arg1)][arg2 + idx]
            mem[32] = 6
            mem[_160 + 32] = sub_ca7ef303[stor10[address(arg1)][arg2 + idx]].field_512
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _160
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _141 = mem[64]
        mem[mem[64]] = 32
        _143 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _143:
            _169 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_169 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _141 + (64 * _143) + -mem[64] + 64
    mem[0] = address(arg1)
    mem[32] = 12
    if sub_3244dec9[address(arg1)] < arg2:
        revert with 0, 17
    if sub_3244dec9[address(arg1)] - arg2 > test266151307():
        revert with 0, 65
    mem[96] = sub_3244dec9[address(arg1)] - arg2
    mem[64] = (32 * sub_3244dec9[address(arg1)] - arg2) + 128
    if not sub_3244dec9[address(arg1)] - arg2:
        idx = 0
        while idx < sub_3244dec9[address(arg1)] - arg2:
            if arg2 > !idx:
                revert with 0, 17
            if arg2 + idx >= sub_3244dec9[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = arg2 + idx
            _104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_104] = sub_723498c6[address(arg1)][arg2 + idx]
            mem[0] = sub_723498c6[address(arg1)][arg2 + idx]
            mem[32] = 6
            mem[_104 + 32] = sub_ca7ef303[stor10[address(arg1)][arg2 + idx]].field_512
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _104
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _78 = mem[64]
        mem[mem[64]] = 32
        _80 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _80:
            _136 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_136 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _78 + (64 * _80) + -mem[64] + 64
    mem[64] = (32 * sub_3244dec9[address(arg1)] - arg2) + 192
    mem[(32 * sub_3244dec9[address(arg1)] - arg2) + 128] = 0
    mem[(32 * sub_3244dec9[address(arg1)] - arg2) + 160] = 0
    mem[128] = (32 * sub_3244dec9[address(arg1)] - arg2) + 128
    s = 128
    idx = sub_3244dec9[address(arg1)] - arg2
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * sub_3244dec9[address(arg1)] - arg2) + 128] = 0
        mem[(32 * sub_3244dec9[address(arg1)] - arg2) + 160] = 0
        mem[s + 32] = (32 * sub_3244dec9[address(arg1)] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < sub_3244dec9[address(arg1)] - arg2:
        if arg2 > !idx:
            revert with 0, 17
        if arg2 + idx >= sub_3244dec9[address(arg1)]:
            revert with 0, 'owner index out of bounds'
        mem[0] = arg2 + idx
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = sub_723498c6[address(arg1)][arg2 + idx]
        mem[0] = sub_723498c6[address(arg1)][arg2 + idx]
        mem[32] = 6
        mem[_165 + 32] = sub_ca7ef303[stor10[address(arg1)][arg2 + idx]].field_512
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _165
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _142 = mem[64]
    mem[mem[64]] = 32
    _144 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _144:
        _172 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_172 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _142 + (64 * _144) + -mem[64] + 64
}

function claim(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stakes[arg1].field_1024:
        revert with 0, 'This token isn't staked'
    if stakes[arg1].field_0 != msg.sender:
        revert with 0, 'You don't own this token'
    if block.timestamp < stakes[arg1].field_768:
        revert with 0, 17
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x711173fb with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if block.timestamp - stakes[arg1].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[arg1].field_768 / 24 * 3600:
            revert with 0, 17
        if 3657 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600:
            revert with 0, 17
        if 9999 > !(727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600):
            revert with 0, 17
        if 3657 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600 < (727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000:
            revert with 0, 17
        if 0 > !((3657 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) - ((727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000)):
            revert with 0, 17
        if 0 > !((727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000):
            revert with 0, 17
        if 3657 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600:
            stakes[arg1].field_768 = block.timestamp
        if arg2:
            if stakes[arg1].field_0 != msg.sender:
                revert with 0, 'You don't own this token'
            stakes[arg1].field_0 = 0
            stakes[arg1].field_256 = 0
            stakes[arg1].field_512 = 0
            stakes[arg1].field_768 = 0
            stakes[arg1].field_1024 = 0
            if sub_4b63a04b[address(msg.sender)] < 1:
                revert with 0, 17
            if sub_4b63a04b[address(msg.sender)] - 1 != stor8[arg1]:
                sub_8c13bb07[address(msg.sender)][stor8[arg1]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[arg1]
            stor8[arg1] = 0
            sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
            if not sub_4b63a04b[address(msg.sender)]:
                revert with 0, 17
            sub_4b63a04b[address(msg.sender)]--
            require ext_code.size(address(stor1.length))
            call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if (727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if (727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (3657 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) - ((727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * (727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), 10 * (727743 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 / 100
    else:
        if block.timestamp - stakes[arg1].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[arg1].field_768 / 24 * 3600:
            revert with 0, 17
        if 9686 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600:
            revert with 0, 17
        if 9999 > !(1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600):
            revert with 0, 17
        if 9686 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600 < (1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000:
            revert with 0, 17
        if 0 > !((9686 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000)):
            revert with 0, 17
        if 0 > !((1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000):
            revert with 0, 17
        if 9686 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600:
            stakes[arg1].field_768 = block.timestamp
        if arg2:
            if stakes[arg1].field_0 != msg.sender:
                revert with 0, 'You don't own this token'
            stakes[arg1].field_0 = 0
            stakes[arg1].field_256 = 0
            stakes[arg1].field_512 = 0
            stakes[arg1].field_768 = 0
            stakes[arg1].field_1024 = 0
            if sub_4b63a04b[address(msg.sender)] < 1:
                revert with 0, 17
            if sub_4b63a04b[address(msg.sender)] - 1 != stor8[arg1]:
                sub_8c13bb07[address(msg.sender)][stor8[arg1]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[arg1]
            stor8[arg1] = 0
            sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
            if not sub_4b63a04b[address(msg.sender)]:
                revert with 0, 17
            sub_4b63a04b[address(msg.sender)]--
            require ext_code.size(address(stor1.length))
            call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if (1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if (1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (9686 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * (1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), 10 * (1927514 * 10^16 * block.timestamp - stakes[arg1].field_768 / 24 * 3600) + 9999 / 10000 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_dad20ca4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = address(arg1)
    require ext_code.size(address(stor1.length))
    staticcall address(stor1.length).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128
    if not ext_call.return_data[0]:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _90 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_90] == mem[_90 + 12 len 20]
            if mem[_90 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _107 = mem[64]
            mem[64] = mem[64] + 128
            mem[_107] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_117] == bool(mem[_117])
            if not mem[_117]:
                mem[_107 + 32] = 3657 * 10^16
                mem[_107 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _129 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _131 = mem[_129]
                require mem[_129] <= test266151307()
                require _129 + mem[_129] + 31 < _129 + return_data.size
                _137 = mem[_129 + mem[_129]]
                if mem[_129 + mem[_129]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_129 + mem[_129]])) + 1 < 0 or _129 + ceil32(return_data.size) + ceil32(ceil32(mem[_129 + mem[_129]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _129 + ceil32(return_data.size) + ceil32(ceil32(mem[_129 + mem[_129]])) + 1
                mem[_129 + ceil32(return_data.size)] = _137
                require _131 + _137 + 32 <= return_data.size
                t = 0
                while t < _137:
                    mem[t + _129 + ceil32(return_data.size) + 32] = mem[t + _129 + _131 + 32]
                    t = t + 32
                    continue 
                if ceil32(_137) > _137:
                    mem[_129 + ceil32(return_data.size) + _137 + 32] = 0
                mem[_107 + 96] = _129 + ceil32(return_data.size)
            else:
                mem[_107 + 32] = 9686 * 10^16
                mem[_107 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _130 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _132 = mem[_130]
                require mem[_130] <= test266151307()
                require _130 + mem[_130] + 31 < _130 + return_data.size
                _138 = mem[_130 + mem[_130]]
                if mem[_130 + mem[_130]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_130 + mem[_130]])) + 1 < 0 or _130 + ceil32(return_data.size) + ceil32(ceil32(mem[_130 + mem[_130]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _130 + ceil32(return_data.size) + ceil32(ceil32(mem[_130 + mem[_130]])) + 1
                mem[_130 + ceil32(return_data.size)] = _138
                require _132 + _138 + 32 <= return_data.size
                t = 0
                while t < _138:
                    mem[t + _130 + ceil32(return_data.size) + 32] = mem[t + _130 + _132 + 32]
                    t = t + 32
                    continue 
                if ceil32(_138) > _138:
                    mem[_130 + ceil32(return_data.size) + _138 + 32] = 0
                mem[_107 + 96] = _130 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _107
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _89 = mem[64]
        mem[mem[64]] = 32
        _91 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _91) + 64
        u = mem[64] + 64
        while idx < _91:
            mem[u] = t + -_89 - 64
            _161 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_161 + 32]
            mem[t + 64] = mem[_161 + 64]
            _165 = mem[_161 + 96]
            mem[t + 96] = 128
            _166 = mem[_165]
            mem[t + 128] = mem[_165]
            v = 0
            while v < _166:
                mem[v + t + 160] = mem[v + _165 + 32]
                v = v + 32
                continue 
            if ceil32(_166) > _166:
                mem[t + _166 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_166) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 256
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 128] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 192] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 224] = 96
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _256 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_256] == mem[_256 + 12 len 20]
            if mem[_256 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _279 = mem[64]
            mem[64] = mem[64] + 128
            mem[_279] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _284 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_284] == bool(mem[_284])
            if not mem[_284]:
                mem[_279 + 32] = 3657 * 10^16
                mem[_279 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _295 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _301 = mem[_295]
                require mem[_295] <= test266151307()
                require _295 + mem[_295] + 31 < _295 + return_data.size
                _305 = mem[_295 + mem[_295]]
                if mem[_295 + mem[_295]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_295 + mem[_295]])) + 1 < 0 or _295 + ceil32(return_data.size) + ceil32(ceil32(mem[_295 + mem[_295]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _295 + ceil32(return_data.size) + ceil32(ceil32(mem[_295 + mem[_295]])) + 1
                mem[_295 + ceil32(return_data.size)] = _305
                require _301 + _305 + 32 <= return_data.size
                t = 0
                while t < _305:
                    mem[t + _295 + ceil32(return_data.size) + 32] = mem[t + _295 + _301 + 32]
                    t = t + 32
                    continue 
                if ceil32(_305) > _305:
                    mem[_295 + ceil32(return_data.size) + _305 + 32] = 0
                mem[_279 + 96] = _295 + ceil32(return_data.size)
            else:
                mem[_279 + 32] = 9686 * 10^16
                mem[_279 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _296 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _302 = mem[_296]
                require mem[_296] <= test266151307()
                require _296 + mem[_296] + 31 < _296 + return_data.size
                _306 = mem[_296 + mem[_296]]
                if mem[_296 + mem[_296]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_296 + mem[_296]])) + 1 < 0 or _296 + ceil32(return_data.size) + ceil32(ceil32(mem[_296 + mem[_296]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _296 + ceil32(return_data.size) + ceil32(ceil32(mem[_296 + mem[_296]])) + 1
                mem[_296 + ceil32(return_data.size)] = _306
                require _302 + _306 + 32 <= return_data.size
                t = 0
                while t < _306:
                    mem[t + _296 + ceil32(return_data.size) + 32] = mem[t + _296 + _302 + 32]
                    t = t + 32
                    continue 
                if ceil32(_306) > _306:
                    mem[_296 + ceil32(return_data.size) + _306 + 32] = 0
                mem[_279 + 96] = _296 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _279
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _255 = mem[64]
        mem[mem[64]] = 32
        _257 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _257) + 64
        u = mem[64] + 64
        while idx < _257:
            mem[u] = t + -_255 - 64
            _328 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_328 + 32]
            mem[t + 64] = mem[_328 + 64]
            _332 = mem[_328 + 96]
            mem[t + 96] = 128
            _333 = mem[_332]
            mem[t + 128] = mem[_332]
            v = 0
            while v < _333:
                mem[v + t + 160] = mem[v + _332 + 32]
                v = v + 32
                continue 
            if ceil32(_333) > _333:
                mem[t + _333 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_333) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 384
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 288] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 320] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 352] = 96
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _422 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_422] == mem[_422 + 12 len 20]
            if mem[_422 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _445 = mem[64]
            mem[64] = mem[64] + 128
            mem[_445] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _450 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_450] == bool(mem[_450])
            if not mem[_450]:
                mem[_445 + 32] = 3657 * 10^16
                mem[_445 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _461 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _467 = mem[_461]
                require mem[_461] <= test266151307()
                require _461 + mem[_461] + 31 < _461 + return_data.size
                _471 = mem[_461 + mem[_461]]
                if mem[_461 + mem[_461]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_461 + mem[_461]])) + 1 < 0 or _461 + ceil32(return_data.size) + ceil32(ceil32(mem[_461 + mem[_461]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _461 + ceil32(return_data.size) + ceil32(ceil32(mem[_461 + mem[_461]])) + 1
                mem[_461 + ceil32(return_data.size)] = _471
                require _467 + _471 + 32 <= return_data.size
                t = 0
                while t < _471:
                    mem[t + _461 + ceil32(return_data.size) + 32] = mem[t + _461 + _467 + 32]
                    t = t + 32
                    continue 
                if ceil32(_471) > _471:
                    mem[_461 + ceil32(return_data.size) + _471 + 32] = 0
                mem[_445 + 96] = _461 + ceil32(return_data.size)
            else:
                mem[_445 + 32] = 9686 * 10^16
                mem[_445 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _462 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _468 = mem[_462]
                require mem[_462] <= test266151307()
                require _462 + mem[_462] + 31 < _462 + return_data.size
                _472 = mem[_462 + mem[_462]]
                if mem[_462 + mem[_462]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_462 + mem[_462]])) + 1 < 0 or _462 + ceil32(return_data.size) + ceil32(ceil32(mem[_462 + mem[_462]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _462 + ceil32(return_data.size) + ceil32(ceil32(mem[_462 + mem[_462]])) + 1
                mem[_462 + ceil32(return_data.size)] = _472
                require _468 + _472 + 32 <= return_data.size
                t = 0
                while t < _472:
                    mem[t + _462 + ceil32(return_data.size) + 32] = mem[t + _462 + _468 + 32]
                    t = t + 32
                    continue 
                if ceil32(_472) > _472:
                    mem[_462 + ceil32(return_data.size) + _472 + 32] = 0
                mem[_445 + 96] = _462 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _445
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _421 = mem[64]
        mem[mem[64]] = 32
        _423 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _423) + 64
        u = mem[64] + 64
        while idx < _423:
            mem[u] = t + -_421 - 64
            _494 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_494 + 32]
            mem[t + 64] = mem[_494 + 64]
            _498 = mem[_494 + 96]
            mem[t + 96] = 128
            _499 = mem[_498]
            mem[t + 128] = mem[_498]
            v = 0
            while v < _499:
                mem[v + t + 160] = mem[v + _498 + 32]
                v = v + 32
                continue 
            if ceil32(_499) > _499:
                mem[t + _499 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_499) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 512
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 384] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 416] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 448] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 480] = 96
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _588 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_588] == mem[_588 + 12 len 20]
            if mem[_588 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _611 = mem[64]
            mem[64] = mem[64] + 128
            mem[_611] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _616 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_616] == bool(mem[_616])
            if not mem[_616]:
                mem[_611 + 32] = 3657 * 10^16
                mem[_611 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _627 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _633 = mem[_627]
                require mem[_627] <= test266151307()
                require _627 + mem[_627] + 31 < _627 + return_data.size
                _637 = mem[_627 + mem[_627]]
                if mem[_627 + mem[_627]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_627 + mem[_627]])) + 1 < 0 or _627 + ceil32(return_data.size) + ceil32(ceil32(mem[_627 + mem[_627]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _627 + ceil32(return_data.size) + ceil32(ceil32(mem[_627 + mem[_627]])) + 1
                mem[_627 + ceil32(return_data.size)] = _637
                require _633 + _637 + 32 <= return_data.size
                t = 0
                while t < _637:
                    mem[t + _627 + ceil32(return_data.size) + 32] = mem[t + _627 + _633 + 32]
                    t = t + 32
                    continue 
                if ceil32(_637) > _637:
                    mem[_627 + ceil32(return_data.size) + _637 + 32] = 0
                mem[_611 + 96] = _627 + ceil32(return_data.size)
            else:
                mem[_611 + 32] = 9686 * 10^16
                mem[_611 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _628 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _634 = mem[_628]
                require mem[_628] <= test266151307()
                require _628 + mem[_628] + 31 < _628 + return_data.size
                _638 = mem[_628 + mem[_628]]
                if mem[_628 + mem[_628]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_628 + mem[_628]])) + 1 < 0 or _628 + ceil32(return_data.size) + ceil32(ceil32(mem[_628 + mem[_628]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _628 + ceil32(return_data.size) + ceil32(ceil32(mem[_628 + mem[_628]])) + 1
                mem[_628 + ceil32(return_data.size)] = _638
                require _634 + _638 + 32 <= return_data.size
                t = 0
                while t < _638:
                    mem[t + _628 + ceil32(return_data.size) + 32] = mem[t + _628 + _634 + 32]
                    t = t + 32
                    continue 
                if ceil32(_638) > _638:
                    mem[_628 + ceil32(return_data.size) + _638 + 32] = 0
                mem[_611 + 96] = _628 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _611
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _587 = mem[64]
        mem[mem[64]] = 32
        _589 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _589) + 64
        u = mem[64] + 64
        while idx < _589:
            mem[u] = t + -_587 - 64
            _660 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_660 + 32]
            mem[t + 64] = mem[_660 + 64]
            _664 = mem[_660 + 96]
            mem[t + 96] = 128
            _665 = mem[_664]
            mem[t + 128] = mem[_664]
            v = 0
            while v < _665:
                mem[v + t + 160] = mem[v + _664 + 32]
                v = v + 32
                continue 
            if ceil32(_665) > _665:
                mem[t + _665 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_665) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 512] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 544] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 576] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 608] = 96
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _754 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_754] == mem[_754 + 12 len 20]
            if mem[_754 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _777 = mem[64]
            mem[64] = mem[64] + 128
            mem[_777] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _782 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_782] == bool(mem[_782])
            if not mem[_782]:
                mem[_777 + 32] = 3657 * 10^16
                mem[_777 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _793 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _799 = mem[_793]
                require mem[_793] <= test266151307()
                require _793 + mem[_793] + 31 < _793 + return_data.size
                _803 = mem[_793 + mem[_793]]
                if mem[_793 + mem[_793]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_793 + mem[_793]])) + 1 < 0 or _793 + ceil32(return_data.size) + ceil32(ceil32(mem[_793 + mem[_793]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _793 + ceil32(return_data.size) + ceil32(ceil32(mem[_793 + mem[_793]])) + 1
                mem[_793 + ceil32(return_data.size)] = _803
                require _799 + _803 + 32 <= return_data.size
                t = 0
                while t < _803:
                    mem[t + _793 + ceil32(return_data.size) + 32] = mem[t + _793 + _799 + 32]
                    t = t + 32
                    continue 
                if ceil32(_803) > _803:
                    mem[_793 + ceil32(return_data.size) + _803 + 32] = 0
                mem[_777 + 96] = _793 + ceil32(return_data.size)
            else:
                mem[_777 + 32] = 9686 * 10^16
                mem[_777 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _794 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _800 = mem[_794]
                require mem[_794] <= test266151307()
                require _794 + mem[_794] + 31 < _794 + return_data.size
                _804 = mem[_794 + mem[_794]]
                if mem[_794 + mem[_794]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_794 + mem[_794]])) + 1 < 0 or _794 + ceil32(return_data.size) + ceil32(ceil32(mem[_794 + mem[_794]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _794 + ceil32(return_data.size) + ceil32(ceil32(mem[_794 + mem[_794]])) + 1
                mem[_794 + ceil32(return_data.size)] = _804
                require _800 + _804 + 32 <= return_data.size
                t = 0
                while t < _804:
                    mem[t + _794 + ceil32(return_data.size) + 32] = mem[t + _794 + _800 + 32]
                    t = t + 32
                    continue 
                if ceil32(_804) > _804:
                    mem[_794 + ceil32(return_data.size) + _804 + 32] = 0
                mem[_777 + 96] = _794 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _777
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _753 = mem[64]
        mem[mem[64]] = 32
        _755 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _755) + 64
        u = mem[64] + 64
        while idx < _755:
            mem[u] = t + -_753 - 64
            _826 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_826 + 32]
            mem[t + 64] = mem[_826 + 64]
            _830 = mem[_826 + 96]
            mem[t + 96] = 128
            _831 = mem[_830]
            mem[t + 128] = mem[_830]
            v = 0
            while v < _831:
                mem[v + t + 160] = mem[v + _830 + 32]
                v = v + 32
                continue 
            if ceil32(_831) > _831:
                mem[t + _831 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_831) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 768
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 640] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 672] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 704] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 736] = 96
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _920 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_920] == mem[_920 + 12 len 20]
            if mem[_920 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _943 = mem[64]
            mem[64] = mem[64] + 128
            mem[_943] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _948 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_948] == bool(mem[_948])
            if not mem[_948]:
                mem[_943 + 32] = 3657 * 10^16
                mem[_943 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _959 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _965 = mem[_959]
                require mem[_959] <= test266151307()
                require _959 + mem[_959] + 31 < _959 + return_data.size
                _969 = mem[_959 + mem[_959]]
                if mem[_959 + mem[_959]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_959 + mem[_959]])) + 1 < 0 or _959 + ceil32(return_data.size) + ceil32(ceil32(mem[_959 + mem[_959]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _959 + ceil32(return_data.size) + ceil32(ceil32(mem[_959 + mem[_959]])) + 1
                mem[_959 + ceil32(return_data.size)] = _969
                require _965 + _969 + 32 <= return_data.size
                t = 0
                while t < _969:
                    mem[t + _959 + ceil32(return_data.size) + 32] = mem[t + _959 + _965 + 32]
                    t = t + 32
                    continue 
                if ceil32(_969) > _969:
                    mem[_959 + ceil32(return_data.size) + _969 + 32] = 0
                mem[_943 + 96] = _959 + ceil32(return_data.size)
            else:
                mem[_943 + 32] = 9686 * 10^16
                mem[_943 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _960 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _966 = mem[_960]
                require mem[_960] <= test266151307()
                require _960 + mem[_960] + 31 < _960 + return_data.size
                _970 = mem[_960 + mem[_960]]
                if mem[_960 + mem[_960]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_960 + mem[_960]])) + 1 < 0 or _960 + ceil32(return_data.size) + ceil32(ceil32(mem[_960 + mem[_960]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _960 + ceil32(return_data.size) + ceil32(ceil32(mem[_960 + mem[_960]])) + 1
                mem[_960 + ceil32(return_data.size)] = _970
                require _966 + _970 + 32 <= return_data.size
                t = 0
                while t < _970:
                    mem[t + _960 + ceil32(return_data.size) + 32] = mem[t + _960 + _966 + 32]
                    t = t + 32
                    continue 
                if ceil32(_970) > _970:
                    mem[_960 + ceil32(return_data.size) + _970 + 32] = 0
                mem[_943 + 96] = _960 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _943
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _919 = mem[64]
        mem[mem[64]] = 32
        _921 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _921) + 64
        u = mem[64] + 64
        while idx < _921:
            mem[u] = t + -_919 - 64
            _992 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_992 + 32]
            mem[t + 64] = mem[_992 + 64]
            _996 = mem[_992 + 96]
            mem[t + 96] = 128
            _997 = mem[_996]
            mem[t + 128] = mem[_996]
            v = 0
            while v < _997:
                mem[v + t + 160] = mem[v + _996 + 32]
                v = v + 32
                continue 
            if ceil32(_997) > _997:
                mem[t + _997 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_997) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 896
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 768] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 800] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 832] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 864] = 96
    mem[var45002] = var45001
    if not var45003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1086 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1086] == mem[_1086 + 12 len 20]
            if mem[_1086 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _1109 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1109] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1114] == bool(mem[_1114])
            if not mem[_1114]:
                mem[_1109 + 32] = 3657 * 10^16
                mem[_1109 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1125 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1131 = mem[_1125]
                require mem[_1125] <= test266151307()
                require _1125 + mem[_1125] + 31 < _1125 + return_data.size
                _1135 = mem[_1125 + mem[_1125]]
                if mem[_1125 + mem[_1125]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1125 + mem[_1125]])) + 1 < 0 or _1125 + ceil32(return_data.size) + ceil32(ceil32(mem[_1125 + mem[_1125]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1125 + ceil32(return_data.size) + ceil32(ceil32(mem[_1125 + mem[_1125]])) + 1
                mem[_1125 + ceil32(return_data.size)] = _1135
                require _1131 + _1135 + 32 <= return_data.size
                t = 0
                while t < _1135:
                    mem[t + _1125 + ceil32(return_data.size) + 32] = mem[t + _1125 + _1131 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1135) > _1135:
                    mem[_1125 + ceil32(return_data.size) + _1135 + 32] = 0
                mem[_1109 + 96] = _1125 + ceil32(return_data.size)
            else:
                mem[_1109 + 32] = 9686 * 10^16
                mem[_1109 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1126 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1132 = mem[_1126]
                require mem[_1126] <= test266151307()
                require _1126 + mem[_1126] + 31 < _1126 + return_data.size
                _1136 = mem[_1126 + mem[_1126]]
                if mem[_1126 + mem[_1126]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1126 + mem[_1126]])) + 1 < 0 or _1126 + ceil32(return_data.size) + ceil32(ceil32(mem[_1126 + mem[_1126]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1126 + ceil32(return_data.size) + ceil32(ceil32(mem[_1126 + mem[_1126]])) + 1
                mem[_1126 + ceil32(return_data.size)] = _1136
                require _1132 + _1136 + 32 <= return_data.size
                t = 0
                while t < _1136:
                    mem[t + _1126 + ceil32(return_data.size) + 32] = mem[t + _1126 + _1132 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1136) > _1136:
                    mem[_1126 + ceil32(return_data.size) + _1136 + 32] = 0
                mem[_1109 + 96] = _1126 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _1109
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1085 = mem[64]
        mem[mem[64]] = 32
        _1087 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _1087) + 64
        u = mem[64] + 64
        while idx < _1087:
            mem[u] = t + -_1085 - 64
            _1158 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1158 + 32]
            mem[t + 64] = mem[_1158 + 64]
            _1162 = mem[_1158 + 96]
            mem[t + 96] = 128
            _1163 = mem[_1162]
            mem[t + 128] = mem[_1162]
            v = 0
            while v < _1163:
                mem[v + t + 160] = mem[v + _1162 + 32]
                v = v + 32
                continue 
            if ceil32(_1163) > _1163:
                mem[t + _1163 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1163) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1024
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 896] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 928] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 960] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 992] = 96
    mem[var49002] = var49001
    if not var49003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1252 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1252] == mem[_1252 + 12 len 20]
            if mem[_1252 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _1275 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1275] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1280 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1280] == bool(mem[_1280])
            if not mem[_1280]:
                mem[_1275 + 32] = 3657 * 10^16
                mem[_1275 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1291 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1297 = mem[_1291]
                require mem[_1291] <= test266151307()
                require _1291 + mem[_1291] + 31 < _1291 + return_data.size
                _1301 = mem[_1291 + mem[_1291]]
                if mem[_1291 + mem[_1291]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1291 + mem[_1291]])) + 1 < 0 or _1291 + ceil32(return_data.size) + ceil32(ceil32(mem[_1291 + mem[_1291]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1291 + ceil32(return_data.size) + ceil32(ceil32(mem[_1291 + mem[_1291]])) + 1
                mem[_1291 + ceil32(return_data.size)] = _1301
                require _1297 + _1301 + 32 <= return_data.size
                t = 0
                while t < _1301:
                    mem[t + _1291 + ceil32(return_data.size) + 32] = mem[t + _1291 + _1297 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1301) > _1301:
                    mem[_1291 + ceil32(return_data.size) + _1301 + 32] = 0
                mem[_1275 + 96] = _1291 + ceil32(return_data.size)
            else:
                mem[_1275 + 32] = 9686 * 10^16
                mem[_1275 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1292 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1298 = mem[_1292]
                require mem[_1292] <= test266151307()
                require _1292 + mem[_1292] + 31 < _1292 + return_data.size
                _1302 = mem[_1292 + mem[_1292]]
                if mem[_1292 + mem[_1292]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1292 + mem[_1292]])) + 1 < 0 or _1292 + ceil32(return_data.size) + ceil32(ceil32(mem[_1292 + mem[_1292]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1292 + ceil32(return_data.size) + ceil32(ceil32(mem[_1292 + mem[_1292]])) + 1
                mem[_1292 + ceil32(return_data.size)] = _1302
                require _1298 + _1302 + 32 <= return_data.size
                t = 0
                while t < _1302:
                    mem[t + _1292 + ceil32(return_data.size) + 32] = mem[t + _1292 + _1298 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1302) > _1302:
                    mem[_1292 + ceil32(return_data.size) + _1302 + 32] = 0
                mem[_1275 + 96] = _1292 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _1275
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1251 = mem[64]
        mem[mem[64]] = 32
        _1253 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _1253) + 64
        u = mem[64] + 64
        while idx < _1253:
            mem[u] = t + -_1251 - 64
            _1324 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1324 + 32]
            mem[t + 64] = mem[_1324 + 64]
            _1328 = mem[_1324 + 96]
            mem[t + 96] = 128
            _1329 = mem[_1328]
            mem[t + 128] = mem[_1328]
            v = 0
            while v < _1329:
                mem[v + t + 160] = mem[v + _1328 + 32]
                v = v + 32
                continue 
            if ceil32(_1329) > _1329:
                mem[t + _1329 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1329) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1024] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1056] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1088] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1120] = 96
    mem[var53002] = var53001
    if not var53003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1418 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1418] == mem[_1418 + 12 len 20]
            if mem[_1418 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _1441 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1441] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1446] == bool(mem[_1446])
            if not mem[_1446]:
                mem[_1441 + 32] = 3657 * 10^16
                mem[_1441 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1457 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1463 = mem[_1457]
                require mem[_1457] <= test266151307()
                require _1457 + mem[_1457] + 31 < _1457 + return_data.size
                _1467 = mem[_1457 + mem[_1457]]
                if mem[_1457 + mem[_1457]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1457 + mem[_1457]])) + 1 < 0 or _1457 + ceil32(return_data.size) + ceil32(ceil32(mem[_1457 + mem[_1457]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1457 + ceil32(return_data.size) + ceil32(ceil32(mem[_1457 + mem[_1457]])) + 1
                mem[_1457 + ceil32(return_data.size)] = _1467
                require _1463 + _1467 + 32 <= return_data.size
                t = 0
                while t < _1467:
                    mem[t + _1457 + ceil32(return_data.size) + 32] = mem[t + _1457 + _1463 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1467) > _1467:
                    mem[_1457 + ceil32(return_data.size) + _1467 + 32] = 0
                mem[_1441 + 96] = _1457 + ceil32(return_data.size)
            else:
                mem[_1441 + 32] = 9686 * 10^16
                mem[_1441 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1458 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1464 = mem[_1458]
                require mem[_1458] <= test266151307()
                require _1458 + mem[_1458] + 31 < _1458 + return_data.size
                _1468 = mem[_1458 + mem[_1458]]
                if mem[_1458 + mem[_1458]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1458 + mem[_1458]])) + 1 < 0 or _1458 + ceil32(return_data.size) + ceil32(ceil32(mem[_1458 + mem[_1458]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1458 + ceil32(return_data.size) + ceil32(ceil32(mem[_1458 + mem[_1458]])) + 1
                mem[_1458 + ceil32(return_data.size)] = _1468
                require _1464 + _1468 + 32 <= return_data.size
                t = 0
                while t < _1468:
                    mem[t + _1458 + ceil32(return_data.size) + 32] = mem[t + _1458 + _1464 + 32]
                    t = t + 32
                    continue 
                if ceil32(_1468) > _1468:
                    mem[_1458 + ceil32(return_data.size) + _1468 + 32] = 0
                mem[_1441 + 96] = _1458 + ceil32(return_data.size)
            if s >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            mem[(32 * s) + (2 * ceil32(return_data.size)) + 128] = _1441
            if s == -1:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        _1417 = mem[64]
        mem[mem[64]] = 32
        _1419 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + (32 * _1419) + 64
        u = mem[64] + 64
        while idx < _1419:
            mem[u] = t + -_1417 - 64
            _1490 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1490 + 32]
            mem[t + 64] = mem[_1490 + 64]
            _1494 = mem[_1490 + 96]
            mem[t + 96] = 128
            _1495 = mem[_1494]
            mem[t + 128] = mem[_1494]
            v = 0
            while v < _1495:
                mem[v + t + 160] = mem[v + _1494 + 32]
                v = v + 32
                continue 
            if ceil32(_1495) > _1495:
                mem[t + _1495 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1495) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1280
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1152] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1184] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1216] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * ext_call.return_data[0]) + 1248] = 96
    mem[var57002] = var57001
    if not var57003 - 1:
        idx = 0
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1584 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1584] == mem[_1584 + 12 len 20]
            if mem[_1584 + 12 len 20] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            _1607 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1607] = idx
            mem[mem[64] + 4] = idx
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1612 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1612] == bool(mem[_1612])
            if not mem[_1612]:
                mem[_1607 + 32] = 3657 * 10^16
                mem[_1607 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1623 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1623] <= test266151307()
                require _1623 + mem[_1623] + 31 < _1623 + return_data.size
                if mem[_1623 + mem[_1623]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1623 + mem[_1623]])) + 1 < 0 or _1623 + ceil32(return_data.size) + ceil32(ceil32(mem[_1623 + mem[_1623]])) + 1 > test266151307():
                    revert with 0, 65
                require mem[_1623] + mem[_1623 + mem[_1623]] + 32 <= return_data.size
                # nil
            else:
                mem[_1607 + 32] = 9686 * 10^16
                mem[_1607 + 64] = 0
                mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = idx
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1624 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1624] <= test266151307()
                require _1624 + mem[_1624] + 31 < _1624 + return_data.size
                if mem[_1624 + mem[_1624]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1624 + mem[_1624]])) + 1 < 0 or _1624 + ceil32(return_data.size) + ceil32(ceil32(mem[_1624 + mem[_1624]])) + 1 > test266151307():
                    revert with 0, 65
                require mem[_1624] + mem[_1624 + mem[_1624]] + 32 <= return_data.size
                # nil
    # nil
}

function sub_dcdbf150(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 9
    if sub_4b63a04b[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_4b63a04b[address(arg1)]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 128
    if not sub_4b63a04b[address(arg1)]:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _160 = mem[64]
            mem[64] = mem[64] + 128
            mem[_160] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_173] == bool(mem[_173])
            if not mem[_173]:
                mem[_160 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _195 = mem[64]
                mem[64] = mem[64] + 160
                mem[_195] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_195 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_195 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_195 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_195 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_218] == bool(mem[_218])
                if not mem[_218]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_160 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _238 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _242 = mem[_238]
                    require mem[_238] <= test266151307()
                    require _238 + mem[_238] + 31 < _238 + return_data.size
                    _254 = mem[_238 + mem[_238]]
                    if mem[_238 + mem[_238]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_238 + mem[_238]])) + 1 < 0 or _238 + ceil32(return_data.size) + ceil32(ceil32(mem[_238 + mem[_238]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _238 + ceil32(return_data.size) + ceil32(ceil32(mem[_238 + mem[_238]])) + 1
                    mem[_238 + ceil32(return_data.size)] = _254
                    require _242 + _254 + 32 <= return_data.size
                    s = 0
                    while s < _254:
                        mem[s + _238 + ceil32(return_data.size) + 32] = mem[s + _238 + _242 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_254) > _254:
                        mem[_238 + ceil32(return_data.size) + _254 + 32] = 0
                    mem[_160 + 96] = _238 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_160 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _239 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _243 = mem[_239]
                    require mem[_239] <= test266151307()
                    require _239 + mem[_239] + 31 < _239 + return_data.size
                    _255 = mem[_239 + mem[_239]]
                    if mem[_239 + mem[_239]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_239 + mem[_239]])) + 1 < 0 or _239 + ceil32(return_data.size) + ceil32(ceil32(mem[_239 + mem[_239]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _239 + ceil32(return_data.size) + ceil32(ceil32(mem[_239 + mem[_239]])) + 1
                    mem[_239 + ceil32(return_data.size)] = _255
                    require _243 + _255 + 32 <= return_data.size
                    s = 0
                    while s < _255:
                        mem[s + _239 + ceil32(return_data.size) + 32] = mem[s + _239 + _243 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_255) > _255:
                        mem[_239 + ceil32(return_data.size) + _255 + 32] = 0
                    mem[_160 + 96] = _239 + ceil32(return_data.size)
            else:
                mem[_160 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _197 = mem[64]
                mem[64] = mem[64] + 160
                mem[_197] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_197 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_197 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_197 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_197 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _219 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_219] == bool(mem[_219])
                if not mem[_219]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_160 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _240 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _244 = mem[_240]
                    require mem[_240] <= test266151307()
                    require _240 + mem[_240] + 31 < _240 + return_data.size
                    _256 = mem[_240 + mem[_240]]
                    if mem[_240 + mem[_240]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_240 + mem[_240]])) + 1 < 0 or _240 + ceil32(return_data.size) + ceil32(ceil32(mem[_240 + mem[_240]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _240 + ceil32(return_data.size) + ceil32(ceil32(mem[_240 + mem[_240]])) + 1
                    mem[_240 + ceil32(return_data.size)] = _256
                    require _244 + _256 + 32 <= return_data.size
                    s = 0
                    while s < _256:
                        mem[s + _240 + ceil32(return_data.size) + 32] = mem[s + _240 + _244 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_256) > _256:
                        mem[_240 + ceil32(return_data.size) + _256 + 32] = 0
                    mem[_160 + 96] = _240 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_160 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _241 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _245 = mem[_241]
                    require mem[_241] <= test266151307()
                    require _241 + mem[_241] + 31 < _241 + return_data.size
                    _257 = mem[_241 + mem[_241]]
                    if mem[_241 + mem[_241]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_241 + mem[_241]])) + 1 < 0 or _241 + ceil32(return_data.size) + ceil32(ceil32(mem[_241 + mem[_241]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _241 + ceil32(return_data.size) + ceil32(ceil32(mem[_241 + mem[_241]])) + 1
                    mem[_241 + ceil32(return_data.size)] = _257
                    require _245 + _257 + 32 <= return_data.size
                    s = 0
                    while s < _257:
                        mem[s + _241 + ceil32(return_data.size) + 32] = mem[s + _241 + _245 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_257) > _257:
                        mem[_241 + ceil32(return_data.size) + _257 + 32] = 0
                    mem[_160 + 96] = _241 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _160
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _153 = mem[64]
        mem[mem[64]] = 32
        _156 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _156:
            mem[u] = t + -_153 - 64
            _302 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_302 + 32]
            mem[t + 64] = mem[_302 + 64]
            _306 = mem[_302 + 96]
            mem[t + 96] = 128
            _307 = mem[_306]
            mem[t + 128] = mem[_306]
            v = 0
            while v < _307:
                mem[v + t + 160] = mem[v + _306 + 32]
                v = v + 32
                continue 
            if ceil32(_307) > _307:
                mem[t + _307 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_307) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 256
    mem[(32 * sub_4b63a04b[address(arg1)]) + 128] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 160] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 192] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 224] = 96
    mem[var15002] = var15001
    if not var15003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _480 = mem[64]
            mem[64] = mem[64] + 128
            mem[_480] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _497 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_497] == bool(mem[_497])
            if not mem[_497]:
                mem[_480 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _515 = mem[64]
                mem[64] = mem[64] + 160
                mem[_515] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_515 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_515 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_515 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_515 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_538] == bool(mem[_538])
                if not mem[_538]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_480 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _558 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _570 = mem[_558]
                    require mem[_558] <= test266151307()
                    require _558 + mem[_558] + 31 < _558 + return_data.size
                    _578 = mem[_558 + mem[_558]]
                    if mem[_558 + mem[_558]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_558 + mem[_558]])) + 1 < 0 or _558 + ceil32(return_data.size) + ceil32(ceil32(mem[_558 + mem[_558]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _558 + ceil32(return_data.size) + ceil32(ceil32(mem[_558 + mem[_558]])) + 1
                    mem[_558 + ceil32(return_data.size)] = _578
                    require _570 + _578 + 32 <= return_data.size
                    s = 0
                    while s < _578:
                        mem[s + _558 + ceil32(return_data.size) + 32] = mem[s + _558 + _570 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_578) > _578:
                        mem[_558 + ceil32(return_data.size) + _578 + 32] = 0
                    mem[_480 + 96] = _558 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_480 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _559 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _571 = mem[_559]
                    require mem[_559] <= test266151307()
                    require _559 + mem[_559] + 31 < _559 + return_data.size
                    _579 = mem[_559 + mem[_559]]
                    if mem[_559 + mem[_559]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_559 + mem[_559]])) + 1 < 0 or _559 + ceil32(return_data.size) + ceil32(ceil32(mem[_559 + mem[_559]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _559 + ceil32(return_data.size) + ceil32(ceil32(mem[_559 + mem[_559]])) + 1
                    mem[_559 + ceil32(return_data.size)] = _579
                    require _571 + _579 + 32 <= return_data.size
                    s = 0
                    while s < _579:
                        mem[s + _559 + ceil32(return_data.size) + 32] = mem[s + _559 + _571 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_579) > _579:
                        mem[_559 + ceil32(return_data.size) + _579 + 32] = 0
                    mem[_480 + 96] = _559 + ceil32(return_data.size)
            else:
                mem[_480 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _517 = mem[64]
                mem[64] = mem[64] + 160
                mem[_517] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_517 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_517 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_517 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_517 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _539 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_539] == bool(mem[_539])
                if not mem[_539]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_480 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _560 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _572 = mem[_560]
                    require mem[_560] <= test266151307()
                    require _560 + mem[_560] + 31 < _560 + return_data.size
                    _580 = mem[_560 + mem[_560]]
                    if mem[_560 + mem[_560]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_560 + mem[_560]])) + 1 < 0 or _560 + ceil32(return_data.size) + ceil32(ceil32(mem[_560 + mem[_560]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _560 + ceil32(return_data.size) + ceil32(ceil32(mem[_560 + mem[_560]])) + 1
                    mem[_560 + ceil32(return_data.size)] = _580
                    require _572 + _580 + 32 <= return_data.size
                    s = 0
                    while s < _580:
                        mem[s + _560 + ceil32(return_data.size) + 32] = mem[s + _560 + _572 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_580) > _580:
                        mem[_560 + ceil32(return_data.size) + _580 + 32] = 0
                    mem[_480 + 96] = _560 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_480 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _561 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _573 = mem[_561]
                    require mem[_561] <= test266151307()
                    require _561 + mem[_561] + 31 < _561 + return_data.size
                    _581 = mem[_561 + mem[_561]]
                    if mem[_561 + mem[_561]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_561 + mem[_561]])) + 1 < 0 or _561 + ceil32(return_data.size) + ceil32(ceil32(mem[_561 + mem[_561]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _561 + ceil32(return_data.size) + ceil32(ceil32(mem[_561 + mem[_561]])) + 1
                    mem[_561 + ceil32(return_data.size)] = _581
                    require _573 + _581 + 32 <= return_data.size
                    s = 0
                    while s < _581:
                        mem[s + _561 + ceil32(return_data.size) + 32] = mem[s + _561 + _573 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_581) > _581:
                        mem[_561 + ceil32(return_data.size) + _581 + 32] = 0
                    mem[_480 + 96] = _561 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _480
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _474 = mem[64]
        mem[mem[64]] = 32
        _476 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _476:
            mem[u] = t + -_474 - 64
            _623 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_623 + 32]
            mem[t + 64] = mem[_623 + 64]
            _627 = mem[_623 + 96]
            mem[t + 96] = 128
            _628 = mem[_627]
            mem[t + 128] = mem[_627]
            v = 0
            while v < _628:
                mem[v + t + 160] = mem[v + _627 + 32]
                v = v + 32
                continue 
            if ceil32(_628) > _628:
                mem[t + _628 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_628) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 384
    mem[(32 * sub_4b63a04b[address(arg1)]) + 256] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 288] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 320] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 352] = 96
    mem[var19002] = var19001
    if not var19003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _800 = mem[64]
            mem[64] = mem[64] + 128
            mem[_800] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _817 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_817] == bool(mem[_817])
            if not mem[_817]:
                mem[_800 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _835 = mem[64]
                mem[64] = mem[64] + 160
                mem[_835] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_835 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_835 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_835 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_835 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _858 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_858] == bool(mem[_858])
                if not mem[_858]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_800 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _878 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _890 = mem[_878]
                    require mem[_878] <= test266151307()
                    require _878 + mem[_878] + 31 < _878 + return_data.size
                    _898 = mem[_878 + mem[_878]]
                    if mem[_878 + mem[_878]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_878 + mem[_878]])) + 1 < 0 or _878 + ceil32(return_data.size) + ceil32(ceil32(mem[_878 + mem[_878]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _878 + ceil32(return_data.size) + ceil32(ceil32(mem[_878 + mem[_878]])) + 1
                    mem[_878 + ceil32(return_data.size)] = _898
                    require _890 + _898 + 32 <= return_data.size
                    s = 0
                    while s < _898:
                        mem[s + _878 + ceil32(return_data.size) + 32] = mem[s + _878 + _890 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_898) > _898:
                        mem[_878 + ceil32(return_data.size) + _898 + 32] = 0
                    mem[_800 + 96] = _878 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_800 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _879 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _891 = mem[_879]
                    require mem[_879] <= test266151307()
                    require _879 + mem[_879] + 31 < _879 + return_data.size
                    _899 = mem[_879 + mem[_879]]
                    if mem[_879 + mem[_879]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_879 + mem[_879]])) + 1 < 0 or _879 + ceil32(return_data.size) + ceil32(ceil32(mem[_879 + mem[_879]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _879 + ceil32(return_data.size) + ceil32(ceil32(mem[_879 + mem[_879]])) + 1
                    mem[_879 + ceil32(return_data.size)] = _899
                    require _891 + _899 + 32 <= return_data.size
                    s = 0
                    while s < _899:
                        mem[s + _879 + ceil32(return_data.size) + 32] = mem[s + _879 + _891 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_899) > _899:
                        mem[_879 + ceil32(return_data.size) + _899 + 32] = 0
                    mem[_800 + 96] = _879 + ceil32(return_data.size)
            else:
                mem[_800 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _837 = mem[64]
                mem[64] = mem[64] + 160
                mem[_837] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_837 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_837 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_837 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_837 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _859 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_859] == bool(mem[_859])
                if not mem[_859]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_800 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _880 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _892 = mem[_880]
                    require mem[_880] <= test266151307()
                    require _880 + mem[_880] + 31 < _880 + return_data.size
                    _900 = mem[_880 + mem[_880]]
                    if mem[_880 + mem[_880]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_880 + mem[_880]])) + 1 < 0 or _880 + ceil32(return_data.size) + ceil32(ceil32(mem[_880 + mem[_880]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _880 + ceil32(return_data.size) + ceil32(ceil32(mem[_880 + mem[_880]])) + 1
                    mem[_880 + ceil32(return_data.size)] = _900
                    require _892 + _900 + 32 <= return_data.size
                    s = 0
                    while s < _900:
                        mem[s + _880 + ceil32(return_data.size) + 32] = mem[s + _880 + _892 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_900) > _900:
                        mem[_880 + ceil32(return_data.size) + _900 + 32] = 0
                    mem[_800 + 96] = _880 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_800 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _881 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _893 = mem[_881]
                    require mem[_881] <= test266151307()
                    require _881 + mem[_881] + 31 < _881 + return_data.size
                    _901 = mem[_881 + mem[_881]]
                    if mem[_881 + mem[_881]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_881 + mem[_881]])) + 1 < 0 or _881 + ceil32(return_data.size) + ceil32(ceil32(mem[_881 + mem[_881]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _881 + ceil32(return_data.size) + ceil32(ceil32(mem[_881 + mem[_881]])) + 1
                    mem[_881 + ceil32(return_data.size)] = _901
                    require _893 + _901 + 32 <= return_data.size
                    s = 0
                    while s < _901:
                        mem[s + _881 + ceil32(return_data.size) + 32] = mem[s + _881 + _893 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_901) > _901:
                        mem[_881 + ceil32(return_data.size) + _901 + 32] = 0
                    mem[_800 + 96] = _881 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _800
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _794 = mem[64]
        mem[mem[64]] = 32
        _796 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _796:
            mem[u] = t + -_794 - 64
            _943 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_943 + 32]
            mem[t + 64] = mem[_943 + 64]
            _947 = mem[_943 + 96]
            mem[t + 96] = 128
            _948 = mem[_947]
            mem[t + 128] = mem[_947]
            v = 0
            while v < _948:
                mem[v + t + 160] = mem[v + _947 + 32]
                v = v + 32
                continue 
            if ceil32(_948) > _948:
                mem[t + _948 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_948) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 512
    mem[(32 * sub_4b63a04b[address(arg1)]) + 384] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 416] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 448] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 480] = 96
    mem[var23002] = var23001
    if not var23003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _1120 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1120] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1137] == bool(mem[_1137])
            if not mem[_1137]:
                mem[_1120 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _1155 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1155] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_1155 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_1155 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_1155 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_1155 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1178] == bool(mem[_1178])
                if not mem[_1178]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1120 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1198 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1210 = mem[_1198]
                    require mem[_1198] <= test266151307()
                    require _1198 + mem[_1198] + 31 < _1198 + return_data.size
                    _1218 = mem[_1198 + mem[_1198]]
                    if mem[_1198 + mem[_1198]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1198 + mem[_1198]])) + 1 < 0 or _1198 + ceil32(return_data.size) + ceil32(ceil32(mem[_1198 + mem[_1198]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1198 + ceil32(return_data.size) + ceil32(ceil32(mem[_1198 + mem[_1198]])) + 1
                    mem[_1198 + ceil32(return_data.size)] = _1218
                    require _1210 + _1218 + 32 <= return_data.size
                    s = 0
                    while s < _1218:
                        mem[s + _1198 + ceil32(return_data.size) + 32] = mem[s + _1198 + _1210 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1218) > _1218:
                        mem[_1198 + ceil32(return_data.size) + _1218 + 32] = 0
                    mem[_1120 + 96] = _1198 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1120 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1199 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1211 = mem[_1199]
                    require mem[_1199] <= test266151307()
                    require _1199 + mem[_1199] + 31 < _1199 + return_data.size
                    _1219 = mem[_1199 + mem[_1199]]
                    if mem[_1199 + mem[_1199]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1199 + mem[_1199]])) + 1 < 0 or _1199 + ceil32(return_data.size) + ceil32(ceil32(mem[_1199 + mem[_1199]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1199 + ceil32(return_data.size) + ceil32(ceil32(mem[_1199 + mem[_1199]])) + 1
                    mem[_1199 + ceil32(return_data.size)] = _1219
                    require _1211 + _1219 + 32 <= return_data.size
                    s = 0
                    while s < _1219:
                        mem[s + _1199 + ceil32(return_data.size) + 32] = mem[s + _1199 + _1211 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1219) > _1219:
                        mem[_1199 + ceil32(return_data.size) + _1219 + 32] = 0
                    mem[_1120 + 96] = _1199 + ceil32(return_data.size)
            else:
                mem[_1120 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _1157 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1157] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_1157 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_1157 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_1157 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_1157 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1179 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1179] == bool(mem[_1179])
                if not mem[_1179]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1120 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1200 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1212 = mem[_1200]
                    require mem[_1200] <= test266151307()
                    require _1200 + mem[_1200] + 31 < _1200 + return_data.size
                    _1220 = mem[_1200 + mem[_1200]]
                    if mem[_1200 + mem[_1200]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1200 + mem[_1200]])) + 1 < 0 or _1200 + ceil32(return_data.size) + ceil32(ceil32(mem[_1200 + mem[_1200]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1200 + ceil32(return_data.size) + ceil32(ceil32(mem[_1200 + mem[_1200]])) + 1
                    mem[_1200 + ceil32(return_data.size)] = _1220
                    require _1212 + _1220 + 32 <= return_data.size
                    s = 0
                    while s < _1220:
                        mem[s + _1200 + ceil32(return_data.size) + 32] = mem[s + _1200 + _1212 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1220) > _1220:
                        mem[_1200 + ceil32(return_data.size) + _1220 + 32] = 0
                    mem[_1120 + 96] = _1200 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1120 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1201 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1213 = mem[_1201]
                    require mem[_1201] <= test266151307()
                    require _1201 + mem[_1201] + 31 < _1201 + return_data.size
                    _1221 = mem[_1201 + mem[_1201]]
                    if mem[_1201 + mem[_1201]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1201 + mem[_1201]])) + 1 < 0 or _1201 + ceil32(return_data.size) + ceil32(ceil32(mem[_1201 + mem[_1201]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1201 + ceil32(return_data.size) + ceil32(ceil32(mem[_1201 + mem[_1201]])) + 1
                    mem[_1201 + ceil32(return_data.size)] = _1221
                    require _1213 + _1221 + 32 <= return_data.size
                    s = 0
                    while s < _1221:
                        mem[s + _1201 + ceil32(return_data.size) + 32] = mem[s + _1201 + _1213 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1221) > _1221:
                        mem[_1201 + ceil32(return_data.size) + _1221 + 32] = 0
                    mem[_1120 + 96] = _1201 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1120
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1114 = mem[64]
        mem[mem[64]] = 32
        _1116 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1116:
            mem[u] = t + -_1114 - 64
            _1263 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1263 + 32]
            mem[t + 64] = mem[_1263 + 64]
            _1267 = mem[_1263 + 96]
            mem[t + 96] = 128
            _1268 = mem[_1267]
            mem[t + 128] = mem[_1267]
            v = 0
            while v < _1268:
                mem[v + t + 160] = mem[v + _1267 + 32]
                v = v + 32
                continue 
            if ceil32(_1268) > _1268:
                mem[t + _1268 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1268) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 640
    mem[(32 * sub_4b63a04b[address(arg1)]) + 512] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 544] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 576] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 608] = 96
    mem[var27002] = var27001
    if not var27003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _1440 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1440] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1457] == bool(mem[_1457])
            if not mem[_1457]:
                mem[_1440 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _1475 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1475] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_1475 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_1475 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_1475 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_1475 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1498 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1498] == bool(mem[_1498])
                if not mem[_1498]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1440 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1518 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1530 = mem[_1518]
                    require mem[_1518] <= test266151307()
                    require _1518 + mem[_1518] + 31 < _1518 + return_data.size
                    _1538 = mem[_1518 + mem[_1518]]
                    if mem[_1518 + mem[_1518]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1518 + mem[_1518]])) + 1 < 0 or _1518 + ceil32(return_data.size) + ceil32(ceil32(mem[_1518 + mem[_1518]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1518 + ceil32(return_data.size) + ceil32(ceil32(mem[_1518 + mem[_1518]])) + 1
                    mem[_1518 + ceil32(return_data.size)] = _1538
                    require _1530 + _1538 + 32 <= return_data.size
                    s = 0
                    while s < _1538:
                        mem[s + _1518 + ceil32(return_data.size) + 32] = mem[s + _1518 + _1530 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1538) > _1538:
                        mem[_1518 + ceil32(return_data.size) + _1538 + 32] = 0
                    mem[_1440 + 96] = _1518 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1440 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1519 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1531 = mem[_1519]
                    require mem[_1519] <= test266151307()
                    require _1519 + mem[_1519] + 31 < _1519 + return_data.size
                    _1539 = mem[_1519 + mem[_1519]]
                    if mem[_1519 + mem[_1519]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1519 + mem[_1519]])) + 1 < 0 or _1519 + ceil32(return_data.size) + ceil32(ceil32(mem[_1519 + mem[_1519]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1519 + ceil32(return_data.size) + ceil32(ceil32(mem[_1519 + mem[_1519]])) + 1
                    mem[_1519 + ceil32(return_data.size)] = _1539
                    require _1531 + _1539 + 32 <= return_data.size
                    s = 0
                    while s < _1539:
                        mem[s + _1519 + ceil32(return_data.size) + 32] = mem[s + _1519 + _1531 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1539) > _1539:
                        mem[_1519 + ceil32(return_data.size) + _1539 + 32] = 0
                    mem[_1440 + 96] = _1519 + ceil32(return_data.size)
            else:
                mem[_1440 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _1477 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1477] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_1477 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_1477 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_1477 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_1477 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1499 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1499] == bool(mem[_1499])
                if not mem[_1499]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1440 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1520 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1532 = mem[_1520]
                    require mem[_1520] <= test266151307()
                    require _1520 + mem[_1520] + 31 < _1520 + return_data.size
                    _1540 = mem[_1520 + mem[_1520]]
                    if mem[_1520 + mem[_1520]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1520 + mem[_1520]])) + 1 < 0 or _1520 + ceil32(return_data.size) + ceil32(ceil32(mem[_1520 + mem[_1520]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1520 + ceil32(return_data.size) + ceil32(ceil32(mem[_1520 + mem[_1520]])) + 1
                    mem[_1520 + ceil32(return_data.size)] = _1540
                    require _1532 + _1540 + 32 <= return_data.size
                    s = 0
                    while s < _1540:
                        mem[s + _1520 + ceil32(return_data.size) + 32] = mem[s + _1520 + _1532 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1540) > _1540:
                        mem[_1520 + ceil32(return_data.size) + _1540 + 32] = 0
                    mem[_1440 + 96] = _1520 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1440 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1521 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1533 = mem[_1521]
                    require mem[_1521] <= test266151307()
                    require _1521 + mem[_1521] + 31 < _1521 + return_data.size
                    _1541 = mem[_1521 + mem[_1521]]
                    if mem[_1521 + mem[_1521]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1521 + mem[_1521]])) + 1 < 0 or _1521 + ceil32(return_data.size) + ceil32(ceil32(mem[_1521 + mem[_1521]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1521 + ceil32(return_data.size) + ceil32(ceil32(mem[_1521 + mem[_1521]])) + 1
                    mem[_1521 + ceil32(return_data.size)] = _1541
                    require _1533 + _1541 + 32 <= return_data.size
                    s = 0
                    while s < _1541:
                        mem[s + _1521 + ceil32(return_data.size) + 32] = mem[s + _1521 + _1533 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1541) > _1541:
                        mem[_1521 + ceil32(return_data.size) + _1541 + 32] = 0
                    mem[_1440 + 96] = _1521 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1440
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1434 = mem[64]
        mem[mem[64]] = 32
        _1436 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1436:
            mem[u] = t + -_1434 - 64
            _1583 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1583 + 32]
            mem[t + 64] = mem[_1583 + 64]
            _1587 = mem[_1583 + 96]
            mem[t + 96] = 128
            _1588 = mem[_1587]
            mem[t + 128] = mem[_1587]
            v = 0
            while v < _1588:
                mem[v + t + 160] = mem[v + _1587 + 32]
                v = v + 32
                continue 
            if ceil32(_1588) > _1588:
                mem[t + _1588 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1588) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 768
    mem[(32 * sub_4b63a04b[address(arg1)]) + 640] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 672] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 704] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 736] = 96
    mem[var31002] = var31001
    if not var31003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _1760 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1760] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1777 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1777] == bool(mem[_1777])
            if not mem[_1777]:
                mem[_1760 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _1795 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1795] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_1795 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_1795 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_1795 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_1795 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1818 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1818] == bool(mem[_1818])
                if not mem[_1818]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1760 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1838 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1850 = mem[_1838]
                    require mem[_1838] <= test266151307()
                    require _1838 + mem[_1838] + 31 < _1838 + return_data.size
                    _1858 = mem[_1838 + mem[_1838]]
                    if mem[_1838 + mem[_1838]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1838 + mem[_1838]])) + 1 < 0 or _1838 + ceil32(return_data.size) + ceil32(ceil32(mem[_1838 + mem[_1838]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1838 + ceil32(return_data.size) + ceil32(ceil32(mem[_1838 + mem[_1838]])) + 1
                    mem[_1838 + ceil32(return_data.size)] = _1858
                    require _1850 + _1858 + 32 <= return_data.size
                    s = 0
                    while s < _1858:
                        mem[s + _1838 + ceil32(return_data.size) + 32] = mem[s + _1838 + _1850 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1858) > _1858:
                        mem[_1838 + ceil32(return_data.size) + _1858 + 32] = 0
                    mem[_1760 + 96] = _1838 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1760 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1839 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1851 = mem[_1839]
                    require mem[_1839] <= test266151307()
                    require _1839 + mem[_1839] + 31 < _1839 + return_data.size
                    _1859 = mem[_1839 + mem[_1839]]
                    if mem[_1839 + mem[_1839]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1839 + mem[_1839]])) + 1 < 0 or _1839 + ceil32(return_data.size) + ceil32(ceil32(mem[_1839 + mem[_1839]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1839 + ceil32(return_data.size) + ceil32(ceil32(mem[_1839 + mem[_1839]])) + 1
                    mem[_1839 + ceil32(return_data.size)] = _1859
                    require _1851 + _1859 + 32 <= return_data.size
                    s = 0
                    while s < _1859:
                        mem[s + _1839 + ceil32(return_data.size) + 32] = mem[s + _1839 + _1851 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1859) > _1859:
                        mem[_1839 + ceil32(return_data.size) + _1859 + 32] = 0
                    mem[_1760 + 96] = _1839 + ceil32(return_data.size)
            else:
                mem[_1760 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _1797 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1797] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_1797 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_1797 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_1797 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_1797 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1819 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1819] == bool(mem[_1819])
                if not mem[_1819]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1760 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1840 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1852 = mem[_1840]
                    require mem[_1840] <= test266151307()
                    require _1840 + mem[_1840] + 31 < _1840 + return_data.size
                    _1860 = mem[_1840 + mem[_1840]]
                    if mem[_1840 + mem[_1840]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1840 + mem[_1840]])) + 1 < 0 or _1840 + ceil32(return_data.size) + ceil32(ceil32(mem[_1840 + mem[_1840]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1840 + ceil32(return_data.size) + ceil32(ceil32(mem[_1840 + mem[_1840]])) + 1
                    mem[_1840 + ceil32(return_data.size)] = _1860
                    require _1852 + _1860 + 32 <= return_data.size
                    s = 0
                    while s < _1860:
                        mem[s + _1840 + ceil32(return_data.size) + 32] = mem[s + _1840 + _1852 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1860) > _1860:
                        mem[_1840 + ceil32(return_data.size) + _1860 + 32] = 0
                    mem[_1760 + 96] = _1840 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1760 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1841 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1853 = mem[_1841]
                    require mem[_1841] <= test266151307()
                    require _1841 + mem[_1841] + 31 < _1841 + return_data.size
                    _1861 = mem[_1841 + mem[_1841]]
                    if mem[_1841 + mem[_1841]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1841 + mem[_1841]])) + 1 < 0 or _1841 + ceil32(return_data.size) + ceil32(ceil32(mem[_1841 + mem[_1841]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1841 + ceil32(return_data.size) + ceil32(ceil32(mem[_1841 + mem[_1841]])) + 1
                    mem[_1841 + ceil32(return_data.size)] = _1861
                    require _1853 + _1861 + 32 <= return_data.size
                    s = 0
                    while s < _1861:
                        mem[s + _1841 + ceil32(return_data.size) + 32] = mem[s + _1841 + _1853 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1861) > _1861:
                        mem[_1841 + ceil32(return_data.size) + _1861 + 32] = 0
                    mem[_1760 + 96] = _1841 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1760
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1754 = mem[64]
        mem[mem[64]] = 32
        _1756 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _1756:
            mem[u] = t + -_1754 - 64
            _1903 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_1903 + 32]
            mem[t + 64] = mem[_1903 + 64]
            _1907 = mem[_1903 + 96]
            mem[t + 96] = 128
            _1908 = mem[_1907]
            mem[t + 128] = mem[_1907]
            v = 0
            while v < _1908:
                mem[v + t + 160] = mem[v + _1907 + 32]
                v = v + 32
                continue 
            if ceil32(_1908) > _1908:
                mem[t + _1908 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1908) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 896
    mem[(32 * sub_4b63a04b[address(arg1)]) + 768] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 800] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 832] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 864] = 96
    mem[var35002] = var35001
    if not var35003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _2080 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2080] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2097 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2097] == bool(mem[_2097])
            if not mem[_2097]:
                mem[_2080 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _2115 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2115] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_2115 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_2115 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_2115 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_2115 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2138 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2138] == bool(mem[_2138])
                if not mem[_2138]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2080 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2158 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2170 = mem[_2158]
                    require mem[_2158] <= test266151307()
                    require _2158 + mem[_2158] + 31 < _2158 + return_data.size
                    _2178 = mem[_2158 + mem[_2158]]
                    if mem[_2158 + mem[_2158]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2158 + mem[_2158]])) + 1 < 0 or _2158 + ceil32(return_data.size) + ceil32(ceil32(mem[_2158 + mem[_2158]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2158 + ceil32(return_data.size) + ceil32(ceil32(mem[_2158 + mem[_2158]])) + 1
                    mem[_2158 + ceil32(return_data.size)] = _2178
                    require _2170 + _2178 + 32 <= return_data.size
                    s = 0
                    while s < _2178:
                        mem[s + _2158 + ceil32(return_data.size) + 32] = mem[s + _2158 + _2170 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2178) > _2178:
                        mem[_2158 + ceil32(return_data.size) + _2178 + 32] = 0
                    mem[_2080 + 96] = _2158 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2080 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2159 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2171 = mem[_2159]
                    require mem[_2159] <= test266151307()
                    require _2159 + mem[_2159] + 31 < _2159 + return_data.size
                    _2179 = mem[_2159 + mem[_2159]]
                    if mem[_2159 + mem[_2159]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2159 + mem[_2159]])) + 1 < 0 or _2159 + ceil32(return_data.size) + ceil32(ceil32(mem[_2159 + mem[_2159]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2159 + ceil32(return_data.size) + ceil32(ceil32(mem[_2159 + mem[_2159]])) + 1
                    mem[_2159 + ceil32(return_data.size)] = _2179
                    require _2171 + _2179 + 32 <= return_data.size
                    s = 0
                    while s < _2179:
                        mem[s + _2159 + ceil32(return_data.size) + 32] = mem[s + _2159 + _2171 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2179) > _2179:
                        mem[_2159 + ceil32(return_data.size) + _2179 + 32] = 0
                    mem[_2080 + 96] = _2159 + ceil32(return_data.size)
            else:
                mem[_2080 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _2117 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2117] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_2117 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_2117 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_2117 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_2117 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2139] == bool(mem[_2139])
                if not mem[_2139]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2080 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2160 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2172 = mem[_2160]
                    require mem[_2160] <= test266151307()
                    require _2160 + mem[_2160] + 31 < _2160 + return_data.size
                    _2180 = mem[_2160 + mem[_2160]]
                    if mem[_2160 + mem[_2160]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2160 + mem[_2160]])) + 1 < 0 or _2160 + ceil32(return_data.size) + ceil32(ceil32(mem[_2160 + mem[_2160]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2160 + ceil32(return_data.size) + ceil32(ceil32(mem[_2160 + mem[_2160]])) + 1
                    mem[_2160 + ceil32(return_data.size)] = _2180
                    require _2172 + _2180 + 32 <= return_data.size
                    s = 0
                    while s < _2180:
                        mem[s + _2160 + ceil32(return_data.size) + 32] = mem[s + _2160 + _2172 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2180) > _2180:
                        mem[_2160 + ceil32(return_data.size) + _2180 + 32] = 0
                    mem[_2080 + 96] = _2160 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2080 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2161 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2173 = mem[_2161]
                    require mem[_2161] <= test266151307()
                    require _2161 + mem[_2161] + 31 < _2161 + return_data.size
                    _2181 = mem[_2161 + mem[_2161]]
                    if mem[_2161 + mem[_2161]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2161 + mem[_2161]])) + 1 < 0 or _2161 + ceil32(return_data.size) + ceil32(ceil32(mem[_2161 + mem[_2161]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2161 + ceil32(return_data.size) + ceil32(ceil32(mem[_2161 + mem[_2161]])) + 1
                    mem[_2161 + ceil32(return_data.size)] = _2181
                    require _2173 + _2181 + 32 <= return_data.size
                    s = 0
                    while s < _2181:
                        mem[s + _2161 + ceil32(return_data.size) + 32] = mem[s + _2161 + _2173 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2181) > _2181:
                        mem[_2161 + ceil32(return_data.size) + _2181 + 32] = 0
                    mem[_2080 + 96] = _2161 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _2080
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2074 = mem[64]
        mem[mem[64]] = 32
        _2076 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _2076:
            mem[u] = t + -_2074 - 64
            _2223 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2223 + 32]
            mem[t + 64] = mem[_2223 + 64]
            _2227 = mem[_2223 + 96]
            mem[t + 96] = 128
            _2228 = mem[_2227]
            mem[t + 128] = mem[_2227]
            v = 0
            while v < _2228:
                mem[v + t + 160] = mem[v + _2227 + 32]
                v = v + 32
                continue 
            if ceil32(_2228) > _2228:
                mem[t + _2228 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2228) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 1024
    mem[(32 * sub_4b63a04b[address(arg1)]) + 896] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 928] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 960] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 992] = 96
    mem[var39002] = var39001
    if not var39003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _2400 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2400] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2417] == bool(mem[_2417])
            if not mem[_2417]:
                mem[_2400 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _2435 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2435] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_2435 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_2435 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_2435 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_2435 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2458 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2458] == bool(mem[_2458])
                if not mem[_2458]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2400 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2478 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2490 = mem[_2478]
                    require mem[_2478] <= test266151307()
                    require _2478 + mem[_2478] + 31 < _2478 + return_data.size
                    _2498 = mem[_2478 + mem[_2478]]
                    if mem[_2478 + mem[_2478]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2478 + mem[_2478]])) + 1 < 0 or _2478 + ceil32(return_data.size) + ceil32(ceil32(mem[_2478 + mem[_2478]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2478 + ceil32(return_data.size) + ceil32(ceil32(mem[_2478 + mem[_2478]])) + 1
                    mem[_2478 + ceil32(return_data.size)] = _2498
                    require _2490 + _2498 + 32 <= return_data.size
                    s = 0
                    while s < _2498:
                        mem[s + _2478 + ceil32(return_data.size) + 32] = mem[s + _2478 + _2490 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2498) > _2498:
                        mem[_2478 + ceil32(return_data.size) + _2498 + 32] = 0
                    mem[_2400 + 96] = _2478 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2400 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2479 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2491 = mem[_2479]
                    require mem[_2479] <= test266151307()
                    require _2479 + mem[_2479] + 31 < _2479 + return_data.size
                    _2499 = mem[_2479 + mem[_2479]]
                    if mem[_2479 + mem[_2479]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2479 + mem[_2479]])) + 1 < 0 or _2479 + ceil32(return_data.size) + ceil32(ceil32(mem[_2479 + mem[_2479]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2479 + ceil32(return_data.size) + ceil32(ceil32(mem[_2479 + mem[_2479]])) + 1
                    mem[_2479 + ceil32(return_data.size)] = _2499
                    require _2491 + _2499 + 32 <= return_data.size
                    s = 0
                    while s < _2499:
                        mem[s + _2479 + ceil32(return_data.size) + 32] = mem[s + _2479 + _2491 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2499) > _2499:
                        mem[_2479 + ceil32(return_data.size) + _2499 + 32] = 0
                    mem[_2400 + 96] = _2479 + ceil32(return_data.size)
            else:
                mem[_2400 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _2437 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2437] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_2437 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_2437 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_2437 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_2437 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2459 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2459] == bool(mem[_2459])
                if not mem[_2459]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2400 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2480 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2492 = mem[_2480]
                    require mem[_2480] <= test266151307()
                    require _2480 + mem[_2480] + 31 < _2480 + return_data.size
                    _2500 = mem[_2480 + mem[_2480]]
                    if mem[_2480 + mem[_2480]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2480 + mem[_2480]])) + 1 < 0 or _2480 + ceil32(return_data.size) + ceil32(ceil32(mem[_2480 + mem[_2480]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2480 + ceil32(return_data.size) + ceil32(ceil32(mem[_2480 + mem[_2480]])) + 1
                    mem[_2480 + ceil32(return_data.size)] = _2500
                    require _2492 + _2500 + 32 <= return_data.size
                    s = 0
                    while s < _2500:
                        mem[s + _2480 + ceil32(return_data.size) + 32] = mem[s + _2480 + _2492 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2500) > _2500:
                        mem[_2480 + ceil32(return_data.size) + _2500 + 32] = 0
                    mem[_2400 + 96] = _2480 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2400 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2481 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2493 = mem[_2481]
                    require mem[_2481] <= test266151307()
                    require _2481 + mem[_2481] + 31 < _2481 + return_data.size
                    _2501 = mem[_2481 + mem[_2481]]
                    if mem[_2481 + mem[_2481]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2481 + mem[_2481]])) + 1 < 0 or _2481 + ceil32(return_data.size) + ceil32(ceil32(mem[_2481 + mem[_2481]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2481 + ceil32(return_data.size) + ceil32(ceil32(mem[_2481 + mem[_2481]])) + 1
                    mem[_2481 + ceil32(return_data.size)] = _2501
                    require _2493 + _2501 + 32 <= return_data.size
                    s = 0
                    while s < _2501:
                        mem[s + _2481 + ceil32(return_data.size) + 32] = mem[s + _2481 + _2493 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2501) > _2501:
                        mem[_2481 + ceil32(return_data.size) + _2501 + 32] = 0
                    mem[_2400 + 96] = _2481 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _2400
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2394 = mem[64]
        mem[mem[64]] = 32
        _2396 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _2396:
            mem[u] = t + -_2394 - 64
            _2543 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2543 + 32]
            mem[t + 64] = mem[_2543 + 64]
            _2547 = mem[_2543 + 96]
            mem[t + 96] = 128
            _2548 = mem[_2547]
            mem[t + 128] = mem[_2547]
            v = 0
            while v < _2548:
                mem[v + t + 160] = mem[v + _2547 + 32]
                v = v + 32
                continue 
            if ceil32(_2548) > _2548:
                mem[t + _2548 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2548) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[64] = (32 * sub_4b63a04b[address(arg1)]) + 1152
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1024] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1056] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1088] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1120] = 96
    mem[var43002] = var43001
    if not var43003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(arg1)]:
            if idx >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(arg1), 7)
            _2720 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2720] = sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2737 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2737] == bool(mem[_2737])
            if not mem[_2737]:
                mem[_2720 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _2755 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2755] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_2755 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_2755 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_2755 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_2755 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2778 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2778] == bool(mem[_2778])
                if not mem[_2778]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2720 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2798 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2810 = mem[_2798]
                    require mem[_2798] <= test266151307()
                    require _2798 + mem[_2798] + 31 < _2798 + return_data.size
                    _2818 = mem[_2798 + mem[_2798]]
                    if mem[_2798 + mem[_2798]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2798 + mem[_2798]])) + 1 < 0 or _2798 + ceil32(return_data.size) + ceil32(ceil32(mem[_2798 + mem[_2798]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2798 + ceil32(return_data.size) + ceil32(ceil32(mem[_2798 + mem[_2798]])) + 1
                    mem[_2798 + ceil32(return_data.size)] = _2818
                    require _2810 + _2818 + 32 <= return_data.size
                    s = 0
                    while s < _2818:
                        mem[s + _2798 + ceil32(return_data.size) + 32] = mem[s + _2798 + _2810 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2818) > _2818:
                        mem[_2798 + ceil32(return_data.size) + _2818 + 32] = 0
                    mem[_2720 + 96] = _2798 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2720 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2799 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2811 = mem[_2799]
                    require mem[_2799] <= test266151307()
                    require _2799 + mem[_2799] + 31 < _2799 + return_data.size
                    _2819 = mem[_2799 + mem[_2799]]
                    if mem[_2799 + mem[_2799]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2799 + mem[_2799]])) + 1 < 0 or _2799 + ceil32(return_data.size) + ceil32(ceil32(mem[_2799 + mem[_2799]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2799 + ceil32(return_data.size) + ceil32(ceil32(mem[_2799 + mem[_2799]])) + 1
                    mem[_2799 + ceil32(return_data.size)] = _2819
                    require _2811 + _2819 + 32 <= return_data.size
                    s = 0
                    while s < _2819:
                        mem[s + _2799 + ceil32(return_data.size) + 32] = mem[s + _2799 + _2811 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2819) > _2819:
                        mem[_2799 + ceil32(return_data.size) + _2819 + 32] = 0
                    mem[_2720 + 96] = _2799 + ceil32(return_data.size)
            else:
                mem[_2720 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(arg1)][idx].field_0
                mem[32] = 5
                _2757 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2757] = stakes[stor7[address(arg1)][idx].field_0].field_0
                mem[_2757 + 32] = stakes[stor7[address(arg1)][idx].field_0].field_256
                mem[_2757 + 64] = bool(stakes[stor7[address(arg1)][idx].field_0].field_512)
                mem[_2757 + 96] = stakes[stor7[address(arg1)][idx].field_0].field_768
                mem[_2757 + 128] = bool(stakes[stor7[address(arg1)][idx].field_0].field_1024)
                if not stakes[stor7[address(arg1)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(arg1)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2779 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2779] == bool(mem[_2779])
                if not mem[_2779]:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2720 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2800 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2812 = mem[_2800]
                    require mem[_2800] <= test266151307()
                    require _2800 + mem[_2800] + 31 < _2800 + return_data.size
                    _2820 = mem[_2800 + mem[_2800]]
                    if mem[_2800 + mem[_2800]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2800 + mem[_2800]])) + 1 < 0 or _2800 + ceil32(return_data.size) + ceil32(ceil32(mem[_2800 + mem[_2800]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2800 + ceil32(return_data.size) + ceil32(ceil32(mem[_2800 + mem[_2800]])) + 1
                    mem[_2800 + ceil32(return_data.size)] = _2820
                    require _2812 + _2820 + 32 <= return_data.size
                    s = 0
                    while s < _2820:
                        mem[s + _2800 + ceil32(return_data.size) + 32] = mem[s + _2800 + _2812 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2820) > _2820:
                        mem[_2800 + ceil32(return_data.size) + _2820 + 32] = 0
                    mem[_2720 + 96] = _2800 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2720 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(arg1)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(arg1)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2801 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2813 = mem[_2801]
                    require mem[_2801] <= test266151307()
                    require _2801 + mem[_2801] + 31 < _2801 + return_data.size
                    _2821 = mem[_2801 + mem[_2801]]
                    if mem[_2801 + mem[_2801]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2801 + mem[_2801]])) + 1 < 0 or _2801 + ceil32(return_data.size) + ceil32(ceil32(mem[_2801 + mem[_2801]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2801 + ceil32(return_data.size) + ceil32(ceil32(mem[_2801 + mem[_2801]])) + 1
                    mem[_2801 + ceil32(return_data.size)] = _2821
                    require _2813 + _2821 + 32 <= return_data.size
                    s = 0
                    while s < _2821:
                        mem[s + _2801 + ceil32(return_data.size) + 32] = mem[s + _2801 + _2813 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2821) > _2821:
                        mem[_2801 + ceil32(return_data.size) + _2821 + 32] = 0
                    mem[_2720 + 96] = _2801 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _2720
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2714 = mem[64]
        mem[mem[64]] = 32
        _2716 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _2716:
            mem[u] = t + -_2714 - 64
            _2863 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_2863 + 32]
            mem[t + 64] = mem[_2863 + 64]
            _2867 = mem[_2863 + 96]
            mem[t + 96] = 128
            _2868 = mem[_2867]
            mem[t + 128] = mem[_2867]
            v = 0
            while v < _2868:
                mem[v + t + 160] = mem[v + _2867 + 32]
                v = v + 32
                continue 
            if ceil32(_2868) > _2868:
                mem[t + _2868 + 160] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2868) + t + 160
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t - mem[64]
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1152] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1184] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1216] = 0
    mem[(32 * sub_4b63a04b[address(arg1)]) + 1248] = 96
    mem[var47002] = var47001
    if var47003 - 1:
        # nil
    else:
        if var111001 >= sub_4b63a04b[address(arg1)]:
            # nil
        else:
            if var111001 >= sub_4b63a04b[address(arg1)]:
                revert with 0, 'owner index out of bounds'
            mem[(32 * sub_4b63a04b[address(arg1)]) + 1280] = sub_8c13bb07[address(arg1)][var111001].field_0
            mem[(32 * sub_4b63a04b[address(arg1)]) + 1412] = sub_8c13bb07[address(arg1)][var111001].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][var111001].field_0
            mem[(32 * sub_4b63a04b[address(arg1)]) + 1408] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(32 * sub_4b63a04b[address(arg1)]) + 1312] = 3657 * 10^16
            else:
                mem[(32 * sub_4b63a04b[address(arg1)]) + 1312] = 9686 * 10^16
            mem[0] = sub_8c13bb07[address(arg1)][var111001].field_0
            mem[32] = 5
            mem[(32 * sub_4b63a04b[address(arg1)]) + ceil32(return_data.size) + 1408] = stakes[stor7[address(arg1)][var111001].field_0].field_0
            mem[(32 * sub_4b63a04b[address(arg1)]) + ceil32(return_data.size) + 1440] = stakes[stor7[address(arg1)][var111001].field_0].field_256
            mem[(32 * sub_4b63a04b[address(arg1)]) + ceil32(return_data.size) + 1472] = bool(stakes[stor7[address(arg1)][var111001].field_0].field_512)
            mem[(32 * sub_4b63a04b[address(arg1)]) + ceil32(return_data.size) + 1504] = stakes[stor7[address(arg1)][var111001].field_0].field_768
            mem[(32 * sub_4b63a04b[address(arg1)]) + ceil32(return_data.size) + 1536] = bool(stakes[stor7[address(arg1)][var111001].field_0].field_1024)
            if not stakes[stor7[address(arg1)][var111001].field_0].field_1024:
                revert with 0, 'This token isn't staked'
            if block.timestamp < stakes[stor7[address(arg1)][var111001].field_0].field_768:
                revert with 0, 17
            mem[(32 * sub_4b63a04b[address(arg1)]) + ceil32(return_data.size) + 1572] = sub_8c13bb07[address(arg1)][var111001].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(arg1)][var111001].field_0
            mem[(32 * sub_4b63a04b[address(arg1)]) + ceil32(return_data.size) + 1568] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if block.timestamp - stakes[stor7[address(arg1)][var111001].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][var111001].field_0].field_768 / 24 * 3600:
                    revert with 0, 17
                mem[(32 * sub_4b63a04b[address(arg1)]) + 1344] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][var111001].field_0].field_768 / 24 * 3600
                mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1572] = sub_8c13bb07[address(arg1)][var111001].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][var111001].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * sub_4b63a04b[address(arg1)]) + (4 * ceil32(return_data.size)) + 1568
                require return_data.size >= 32
                require mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 <= test266151307()
                require (32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1599 < (32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + return_data.size + 1568
                if mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568])) + 1 < 0 or (32 * sub_4b63a04b[address(arg1)]) + (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568])) + 1569 > test266151307():
                    revert with 0, 65
                require mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568] + 32 <= return_data.size
                # nil
            else:
                if block.timestamp - stakes[stor7[address(arg1)][var111001].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(arg1)][var111001].field_0].field_768 / 24 * 3600:
                    revert with 0, 17
                mem[(32 * sub_4b63a04b[address(arg1)]) + 1344] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(arg1)][var111001].field_0].field_768 / 24 * 3600
                mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1572] = sub_8c13bb07[address(arg1)][var111001].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(arg1)][var111001].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * sub_4b63a04b[address(arg1)]) + (4 * ceil32(return_data.size)) + 1568
                require return_data.size >= 32
                require mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 <= test266151307()
                require (32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1599 < (32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + return_data.size + 1568
                if mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568])) + 1 < 0 or (32 * sub_4b63a04b[address(arg1)]) + (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568])) + 1569 > test266151307():
                    revert with 0, 65
                require mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(arg1)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(arg1)][var111001].field_32 + 1568] + 32 <= return_data.size
                # nil
}

function sub_1acbf854(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    mem[0] = msg.sender
    mem[32] = 9
    if sub_4b63a04b[address(msg.sender)] > test266151307():
        revert with 0, 65
    mem[96] = sub_4b63a04b[address(msg.sender)]
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 128
    if not sub_4b63a04b[address(msg.sender)]:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _384 = mem[64]
            mem[64] = mem[64] + 128
            mem[_384] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _394 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_394] == bool(mem[_394])
            if not mem[_394]:
                mem[_384 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _429 = mem[64]
                mem[64] = mem[64] + 160
                mem[_429] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_429 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_429 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_429 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_429 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_469] == bool(mem[_469])
                if not mem[_469]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_384 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _498 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _502 = mem[_498]
                    require mem[_498] <= test266151307()
                    require _498 + mem[_498] + 31 < _498 + return_data.size
                    _514 = mem[_498 + mem[_498]]
                    if mem[_498 + mem[_498]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_498 + mem[_498]])) + 1 < 0 or _498 + ceil32(return_data.size) + ceil32(ceil32(mem[_498 + mem[_498]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _498 + ceil32(return_data.size) + ceil32(ceil32(mem[_498 + mem[_498]])) + 1
                    mem[_498 + ceil32(return_data.size)] = _514
                    require _502 + _514 + 32 <= return_data.size
                    s = 0
                    while s < _514:
                        mem[s + _498 + ceil32(return_data.size) + 32] = mem[s + _498 + _502 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_514) > _514:
                        mem[_498 + ceil32(return_data.size) + _514 + 32] = 0
                    mem[_384 + 96] = _498 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_384 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _499 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _503 = mem[_499]
                    require mem[_499] <= test266151307()
                    require _499 + mem[_499] + 31 < _499 + return_data.size
                    _515 = mem[_499 + mem[_499]]
                    if mem[_499 + mem[_499]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_499 + mem[_499]])) + 1 < 0 or _499 + ceil32(return_data.size) + ceil32(ceil32(mem[_499 + mem[_499]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _499 + ceil32(return_data.size) + ceil32(ceil32(mem[_499 + mem[_499]])) + 1
                    mem[_499 + ceil32(return_data.size)] = _515
                    require _503 + _515 + 32 <= return_data.size
                    s = 0
                    while s < _515:
                        mem[s + _499 + ceil32(return_data.size) + 32] = mem[s + _499 + _503 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_515) > _515:
                        mem[_499 + ceil32(return_data.size) + _515 + 32] = 0
                    mem[_384 + 96] = _499 + ceil32(return_data.size)
            else:
                mem[_384 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _431 = mem[64]
                mem[64] = mem[64] + 160
                mem[_431] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_431 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_431 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_431 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_431 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_470] == bool(mem[_470])
                if not mem[_470]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_384 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _500 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _504 = mem[_500]
                    require mem[_500] <= test266151307()
                    require _500 + mem[_500] + 31 < _500 + return_data.size
                    _516 = mem[_500 + mem[_500]]
                    if mem[_500 + mem[_500]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_500 + mem[_500]])) + 1 < 0 or _500 + ceil32(return_data.size) + ceil32(ceil32(mem[_500 + mem[_500]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _500 + ceil32(return_data.size) + ceil32(ceil32(mem[_500 + mem[_500]])) + 1
                    mem[_500 + ceil32(return_data.size)] = _516
                    require _504 + _516 + 32 <= return_data.size
                    s = 0
                    while s < _516:
                        mem[s + _500 + ceil32(return_data.size) + 32] = mem[s + _500 + _504 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_516) > _516:
                        mem[_500 + ceil32(return_data.size) + _516 + 32] = 0
                    mem[_384 + 96] = _500 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_384 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _501 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _505 = mem[_501]
                    require mem[_501] <= test266151307()
                    require _501 + mem[_501] + 31 < _501 + return_data.size
                    _517 = mem[_501 + mem[_501]]
                    if mem[_501 + mem[_501]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_501 + mem[_501]])) + 1 < 0 or _501 + ceil32(return_data.size) + ceil32(ceil32(mem[_501 + mem[_501]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _501 + ceil32(return_data.size) + ceil32(ceil32(mem[_501 + mem[_501]])) + 1
                    mem[_501 + ceil32(return_data.size)] = _517
                    require _505 + _517 + 32 <= return_data.size
                    s = 0
                    while s < _517:
                        mem[s + _501 + ceil32(return_data.size) + 32] = mem[s + _501 + _505 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_517) > _517:
                        mem[_501 + ceil32(return_data.size) + _517 + 32] = 0
                    mem[_384 + 96] = _501 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _384
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _750 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _750:
            if idx >= mem[96]:
                revert with 0, 50
            _758 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _759 = sha3(mem[0], 5)
            _760 = mem[64]
            mem[64] = mem[64] + 160
            mem[_760] = stakes[mem[0]].field_0
            mem[_760 + 32] = uint256(stor1[_759])
            mem[_760 + 64] = bool(uint8(stor2[_759]))
            mem[_760 + 96] = uint256(stor3[_759])
            mem[_760 + 128] = bool(uint8(stor4[_759]))
            if not uint8(stor4[_759]):
                revert with 0, 'This token isn't staked'
            if mem[_760 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_759]):
                revert with 0, 17
            mem[mem[64] + 4] = _758
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _758
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _824 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_824] == bool(mem[_824])
            if not mem[_824]:
                if block.timestamp - uint256(stor3[_759]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_759]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600:
                    if arg1:
                        mem[0] = _758
                        mem[32] = 5
                        _934 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_934] = stakes[_758].field_0
                        mem[_934 + 32] = stakes[_758].field_256
                        mem[_934 + 64] = bool(stakes[_758].field_512)
                        mem[_934 + 96] = stakes[_758].field_768
                        mem[_934 + 128] = bool(stakes[_758].field_1024)
                        if stakes[_758].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_758].field_0 = 0
                        stakes[_758].field_256 = 0
                        stakes[_758].field_512 = 0
                        stakes[_758].field_768 = 0
                        stakes[_758].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_758]:
                            sub_8c13bb07[address(msg.sender)][stor8[_758]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_758]
                        stor8[_758] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _758
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _758
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _758
                    mem[32] = 5
                    stakes[_758].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _758
                        mem[32] = 5
                        _940 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_940] = stakes[_758].field_0
                        mem[_940 + 32] = stakes[_758].field_256
                        mem[_940 + 64] = bool(stakes[_758].field_512)
                        mem[_940 + 96] = stakes[_758].field_768
                        mem[_940 + 128] = bool(stakes[_758].field_1024)
                        if stakes[_758].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_758].field_0 = 0
                        stakes[_758].field_256 = 0
                        stakes[_758].field_512 = 0
                        stakes[_758].field_768 = 0
                        stakes[_758].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_758]:
                            sub_8c13bb07[address(msg.sender)][stor8[_758]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_758]
                        stor8[_758] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _758
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _758
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_759]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_759]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600:
                if arg1:
                    mem[0] = _758
                    mem[32] = 5
                    _936 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_936] = stakes[_758].field_0
                    mem[_936 + 32] = stakes[_758].field_256
                    mem[_936 + 64] = bool(stakes[_758].field_512)
                    mem[_936 + 96] = stakes[_758].field_768
                    mem[_936 + 128] = bool(stakes[_758].field_1024)
                    if stakes[_758].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_758].field_0 = 0
                    stakes[_758].field_256 = 0
                    stakes[_758].field_512 = 0
                    stakes[_758].field_768 = 0
                    stakes[_758].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_758]:
                        sub_8c13bb07[address(msg.sender)][stor8[_758]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_758]
                    stor8[_758] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _758
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _758
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _758
                mem[32] = 5
                stakes[_758].field_768 = block.timestamp
                if arg1:
                    mem[0] = _758
                    mem[32] = 5
                    _944 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_944] = stakes[_758].field_0
                    mem[_944 + 32] = stakes[_758].field_256
                    mem[_944 + 64] = bool(stakes[_758].field_512)
                    mem[_944 + 96] = stakes[_758].field_768
                    mem[_944 + 128] = bool(stakes[_758].field_1024)
                    if stakes[_758].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_758].field_0 = 0
                    stakes[_758].field_256 = 0
                    stakes[_758].field_512 = 0
                    stakes[_758].field_768 = 0
                    stakes[_758].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_758]:
                        sub_8c13bb07[address(msg.sender)][stor8[_758]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_758]
                    stor8[_758] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _758
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _758
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_759]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _809 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_809] == bool(mem[_809])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _836 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_836] == bool(mem[_836])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _874 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_874] == bool(mem[_874])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 256
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 128] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 160] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 192] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 224] = 96
    mem[var17002] = var17001
    if not var17003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _1265 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1265] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1279 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1279] == bool(mem[_1279])
            if not mem[_1279]:
                mem[_1265 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _1312 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1312] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_1312 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_1312 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_1312 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_1312 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1350 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1350] == bool(mem[_1350])
                if not mem[_1350]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1265 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1379 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1391 = mem[_1379]
                    require mem[_1379] <= test266151307()
                    require _1379 + mem[_1379] + 31 < _1379 + return_data.size
                    _1399 = mem[_1379 + mem[_1379]]
                    if mem[_1379 + mem[_1379]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1379 + mem[_1379]])) + 1 < 0 or _1379 + ceil32(return_data.size) + ceil32(ceil32(mem[_1379 + mem[_1379]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1379 + ceil32(return_data.size) + ceil32(ceil32(mem[_1379 + mem[_1379]])) + 1
                    mem[_1379 + ceil32(return_data.size)] = _1399
                    require _1391 + _1399 + 32 <= return_data.size
                    s = 0
                    while s < _1399:
                        mem[s + _1379 + ceil32(return_data.size) + 32] = mem[s + _1379 + _1391 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1399) > _1399:
                        mem[_1379 + ceil32(return_data.size) + _1399 + 32] = 0
                    mem[_1265 + 96] = _1379 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1265 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1380 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1392 = mem[_1380]
                    require mem[_1380] <= test266151307()
                    require _1380 + mem[_1380] + 31 < _1380 + return_data.size
                    _1400 = mem[_1380 + mem[_1380]]
                    if mem[_1380 + mem[_1380]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1380 + mem[_1380]])) + 1 < 0 or _1380 + ceil32(return_data.size) + ceil32(ceil32(mem[_1380 + mem[_1380]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1380 + ceil32(return_data.size) + ceil32(ceil32(mem[_1380 + mem[_1380]])) + 1
                    mem[_1380 + ceil32(return_data.size)] = _1400
                    require _1392 + _1400 + 32 <= return_data.size
                    s = 0
                    while s < _1400:
                        mem[s + _1380 + ceil32(return_data.size) + 32] = mem[s + _1380 + _1392 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1400) > _1400:
                        mem[_1380 + ceil32(return_data.size) + _1400 + 32] = 0
                    mem[_1265 + 96] = _1380 + ceil32(return_data.size)
            else:
                mem[_1265 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _1314 = mem[64]
                mem[64] = mem[64] + 160
                mem[_1314] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_1314 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_1314 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_1314 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_1314 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1351 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1351] == bool(mem[_1351])
                if not mem[_1351]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1265 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1381 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1393 = mem[_1381]
                    require mem[_1381] <= test266151307()
                    require _1381 + mem[_1381] + 31 < _1381 + return_data.size
                    _1401 = mem[_1381 + mem[_1381]]
                    if mem[_1381 + mem[_1381]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1381 + mem[_1381]])) + 1 < 0 or _1381 + ceil32(return_data.size) + ceil32(ceil32(mem[_1381 + mem[_1381]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1381 + ceil32(return_data.size) + ceil32(ceil32(mem[_1381 + mem[_1381]])) + 1
                    mem[_1381 + ceil32(return_data.size)] = _1401
                    require _1393 + _1401 + 32 <= return_data.size
                    s = 0
                    while s < _1401:
                        mem[s + _1381 + ceil32(return_data.size) + 32] = mem[s + _1381 + _1393 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1401) > _1401:
                        mem[_1381 + ceil32(return_data.size) + _1401 + 32] = 0
                    mem[_1265 + 96] = _1381 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_1265 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1382 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1394 = mem[_1382]
                    require mem[_1382] <= test266151307()
                    require _1382 + mem[_1382] + 31 < _1382 + return_data.size
                    _1402 = mem[_1382 + mem[_1382]]
                    if mem[_1382 + mem[_1382]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1382 + mem[_1382]])) + 1 < 0 or _1382 + ceil32(return_data.size) + ceil32(ceil32(mem[_1382 + mem[_1382]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1382 + ceil32(return_data.size) + ceil32(ceil32(mem[_1382 + mem[_1382]])) + 1
                    mem[_1382 + ceil32(return_data.size)] = _1402
                    require _1394 + _1402 + 32 <= return_data.size
                    s = 0
                    while s < _1402:
                        mem[s + _1382 + ceil32(return_data.size) + 32] = mem[s + _1382 + _1394 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1402) > _1402:
                        mem[_1382 + ceil32(return_data.size) + _1402 + 32] = 0
                    mem[_1265 + 96] = _1382 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1265
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1631 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _1631:
            if idx >= mem[96]:
                revert with 0, 50
            _1639 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _1640 = sha3(mem[0], 5)
            _1641 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1641] = stakes[mem[0]].field_0
            mem[_1641 + 32] = uint256(stor1[_1640])
            mem[_1641 + 64] = bool(uint8(stor2[_1640]))
            mem[_1641 + 96] = uint256(stor3[_1640])
            mem[_1641 + 128] = bool(uint8(stor4[_1640]))
            if not uint8(stor4[_1640]):
                revert with 0, 'This token isn't staked'
            if mem[_1641 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_1640]):
                revert with 0, 17
            mem[mem[64] + 4] = _1639
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _1639
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1706 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1706] == bool(mem[_1706])
            if not mem[_1706]:
                if block.timestamp - uint256(stor3[_1640]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_1640]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600:
                    if arg1:
                        mem[0] = _1639
                        mem[32] = 5
                        _1815 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1815] = stakes[_1639].field_0
                        mem[_1815 + 32] = stakes[_1639].field_256
                        mem[_1815 + 64] = bool(stakes[_1639].field_512)
                        mem[_1815 + 96] = stakes[_1639].field_768
                        mem[_1815 + 128] = bool(stakes[_1639].field_1024)
                        if stakes[_1639].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_1639].field_0 = 0
                        stakes[_1639].field_256 = 0
                        stakes[_1639].field_512 = 0
                        stakes[_1639].field_768 = 0
                        stakes[_1639].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_1639]:
                            sub_8c13bb07[address(msg.sender)][stor8[_1639]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_1639]
                        stor8[_1639] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1639
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1639
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _1639
                    mem[32] = 5
                    stakes[_1639].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _1639
                        mem[32] = 5
                        _1829 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_1829] = stakes[_1639].field_0
                        mem[_1829 + 32] = stakes[_1639].field_256
                        mem[_1829 + 64] = bool(stakes[_1639].field_512)
                        mem[_1829 + 96] = stakes[_1639].field_768
                        mem[_1829 + 128] = bool(stakes[_1639].field_1024)
                        if stakes[_1639].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_1639].field_0 = 0
                        stakes[_1639].field_256 = 0
                        stakes[_1639].field_512 = 0
                        stakes[_1639].field_768 = 0
                        stakes[_1639].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_1639]:
                            sub_8c13bb07[address(msg.sender)][stor8[_1639]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_1639]
                        stor8[_1639] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _1639
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _1639
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_1640]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_1640]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600:
                if arg1:
                    mem[0] = _1639
                    mem[32] = 5
                    _1817 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1817] = stakes[_1639].field_0
                    mem[_1817 + 32] = stakes[_1639].field_256
                    mem[_1817 + 64] = bool(stakes[_1639].field_512)
                    mem[_1817 + 96] = stakes[_1639].field_768
                    mem[_1817 + 128] = bool(stakes[_1639].field_1024)
                    if stakes[_1639].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_1639].field_0 = 0
                    stakes[_1639].field_256 = 0
                    stakes[_1639].field_512 = 0
                    stakes[_1639].field_768 = 0
                    stakes[_1639].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_1639]:
                        sub_8c13bb07[address(msg.sender)][stor8[_1639]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_1639]
                    stor8[_1639] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _1639
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1639
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _1639
                mem[32] = 5
                stakes[_1639].field_768 = block.timestamp
                if arg1:
                    mem[0] = _1639
                    mem[32] = 5
                    _1833 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_1833] = stakes[_1639].field_0
                    mem[_1833 + 32] = stakes[_1639].field_256
                    mem[_1833 + 64] = bool(stakes[_1639].field_512)
                    mem[_1833 + 96] = stakes[_1639].field_768
                    mem[_1833 + 128] = bool(stakes[_1639].field_1024)
                    if stakes[_1639].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_1639].field_0 = 0
                    stakes[_1639].field_256 = 0
                    stakes[_1639].field_512 = 0
                    stakes[_1639].field_768 = 0
                    stakes[_1639].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_1639]:
                        sub_8c13bb07[address(msg.sender)][stor8[_1639]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_1639]
                    stor8[_1639] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _1639
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _1639
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_1640]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1695 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1695] == bool(mem[_1695])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1723 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1723] == bool(mem[_1723])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1757 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1757] == bool(mem[_1757])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 384
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 256] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 288] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 320] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 352] = 96
    mem[var21002] = var21001
    if not var21003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _2146 = mem[64]
            mem[64] = mem[64] + 128
            mem[_2146] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2160 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2160] == bool(mem[_2160])
            if not mem[_2160]:
                mem[_2146 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _2193 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2193] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_2193 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_2193 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_2193 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_2193 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2231] == bool(mem[_2231])
                if not mem[_2231]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2146 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2260 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2272 = mem[_2260]
                    require mem[_2260] <= test266151307()
                    require _2260 + mem[_2260] + 31 < _2260 + return_data.size
                    _2280 = mem[_2260 + mem[_2260]]
                    if mem[_2260 + mem[_2260]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2260 + mem[_2260]])) + 1 < 0 or _2260 + ceil32(return_data.size) + ceil32(ceil32(mem[_2260 + mem[_2260]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2260 + ceil32(return_data.size) + ceil32(ceil32(mem[_2260 + mem[_2260]])) + 1
                    mem[_2260 + ceil32(return_data.size)] = _2280
                    require _2272 + _2280 + 32 <= return_data.size
                    s = 0
                    while s < _2280:
                        mem[s + _2260 + ceil32(return_data.size) + 32] = mem[s + _2260 + _2272 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2280) > _2280:
                        mem[_2260 + ceil32(return_data.size) + _2280 + 32] = 0
                    mem[_2146 + 96] = _2260 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2146 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2261 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2273 = mem[_2261]
                    require mem[_2261] <= test266151307()
                    require _2261 + mem[_2261] + 31 < _2261 + return_data.size
                    _2281 = mem[_2261 + mem[_2261]]
                    if mem[_2261 + mem[_2261]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2261 + mem[_2261]])) + 1 < 0 or _2261 + ceil32(return_data.size) + ceil32(ceil32(mem[_2261 + mem[_2261]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2261 + ceil32(return_data.size) + ceil32(ceil32(mem[_2261 + mem[_2261]])) + 1
                    mem[_2261 + ceil32(return_data.size)] = _2281
                    require _2273 + _2281 + 32 <= return_data.size
                    s = 0
                    while s < _2281:
                        mem[s + _2261 + ceil32(return_data.size) + 32] = mem[s + _2261 + _2273 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2281) > _2281:
                        mem[_2261 + ceil32(return_data.size) + _2281 + 32] = 0
                    mem[_2146 + 96] = _2261 + ceil32(return_data.size)
            else:
                mem[_2146 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _2195 = mem[64]
                mem[64] = mem[64] + 160
                mem[_2195] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_2195 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_2195 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_2195 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_2195 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2232] == bool(mem[_2232])
                if not mem[_2232]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2146 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2262 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2274 = mem[_2262]
                    require mem[_2262] <= test266151307()
                    require _2262 + mem[_2262] + 31 < _2262 + return_data.size
                    _2282 = mem[_2262 + mem[_2262]]
                    if mem[_2262 + mem[_2262]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2262 + mem[_2262]])) + 1 < 0 or _2262 + ceil32(return_data.size) + ceil32(ceil32(mem[_2262 + mem[_2262]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2262 + ceil32(return_data.size) + ceil32(ceil32(mem[_2262 + mem[_2262]])) + 1
                    mem[_2262 + ceil32(return_data.size)] = _2282
                    require _2274 + _2282 + 32 <= return_data.size
                    s = 0
                    while s < _2282:
                        mem[s + _2262 + ceil32(return_data.size) + 32] = mem[s + _2262 + _2274 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2282) > _2282:
                        mem[_2262 + ceil32(return_data.size) + _2282 + 32] = 0
                    mem[_2146 + 96] = _2262 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_2146 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2263 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2275 = mem[_2263]
                    require mem[_2263] <= test266151307()
                    require _2263 + mem[_2263] + 31 < _2263 + return_data.size
                    _2283 = mem[_2263 + mem[_2263]]
                    if mem[_2263 + mem[_2263]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_2263 + mem[_2263]])) + 1 < 0 or _2263 + ceil32(return_data.size) + ceil32(ceil32(mem[_2263 + mem[_2263]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2263 + ceil32(return_data.size) + ceil32(ceil32(mem[_2263 + mem[_2263]])) + 1
                    mem[_2263 + ceil32(return_data.size)] = _2283
                    require _2275 + _2283 + 32 <= return_data.size
                    s = 0
                    while s < _2283:
                        mem[s + _2263 + ceil32(return_data.size) + 32] = mem[s + _2263 + _2275 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_2283) > _2283:
                        mem[_2263 + ceil32(return_data.size) + _2283 + 32] = 0
                    mem[_2146 + 96] = _2263 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _2146
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _2512 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _2512:
            if idx >= mem[96]:
                revert with 0, 50
            _2520 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _2521 = sha3(mem[0], 5)
            _2522 = mem[64]
            mem[64] = mem[64] + 160
            mem[_2522] = stakes[mem[0]].field_0
            mem[_2522 + 32] = uint256(stor1[_2521])
            mem[_2522 + 64] = bool(uint8(stor2[_2521]))
            mem[_2522 + 96] = uint256(stor3[_2521])
            mem[_2522 + 128] = bool(uint8(stor4[_2521]))
            if not uint8(stor4[_2521]):
                revert with 0, 'This token isn't staked'
            if mem[_2522 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_2521]):
                revert with 0, 17
            mem[mem[64] + 4] = _2520
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _2520
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2587 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2587] == bool(mem[_2587])
            if not mem[_2587]:
                if block.timestamp - uint256(stor3[_2521]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_2521]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600:
                    if arg1:
                        mem[0] = _2520
                        mem[32] = 5
                        _2696 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2696] = stakes[_2520].field_0
                        mem[_2696 + 32] = stakes[_2520].field_256
                        mem[_2696 + 64] = bool(stakes[_2520].field_512)
                        mem[_2696 + 96] = stakes[_2520].field_768
                        mem[_2696 + 128] = bool(stakes[_2520].field_1024)
                        if stakes[_2520].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_2520].field_0 = 0
                        stakes[_2520].field_256 = 0
                        stakes[_2520].field_512 = 0
                        stakes[_2520].field_768 = 0
                        stakes[_2520].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_2520]:
                            sub_8c13bb07[address(msg.sender)][stor8[_2520]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_2520]
                        stor8[_2520] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2520
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _2520
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _2520
                    mem[32] = 5
                    stakes[_2520].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _2520
                        mem[32] = 5
                        _2710 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_2710] = stakes[_2520].field_0
                        mem[_2710 + 32] = stakes[_2520].field_256
                        mem[_2710 + 64] = bool(stakes[_2520].field_512)
                        mem[_2710 + 96] = stakes[_2520].field_768
                        mem[_2710 + 128] = bool(stakes[_2520].field_1024)
                        if stakes[_2520].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_2520].field_0 = 0
                        stakes[_2520].field_256 = 0
                        stakes[_2520].field_512 = 0
                        stakes[_2520].field_768 = 0
                        stakes[_2520].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_2520]:
                            sub_8c13bb07[address(msg.sender)][stor8[_2520]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_2520]
                        stor8[_2520] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _2520
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _2520
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_2521]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_2521]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600:
                if arg1:
                    mem[0] = _2520
                    mem[32] = 5
                    _2698 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2698] = stakes[_2520].field_0
                    mem[_2698 + 32] = stakes[_2520].field_256
                    mem[_2698 + 64] = bool(stakes[_2520].field_512)
                    mem[_2698 + 96] = stakes[_2520].field_768
                    mem[_2698 + 128] = bool(stakes[_2520].field_1024)
                    if stakes[_2520].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_2520].field_0 = 0
                    stakes[_2520].field_256 = 0
                    stakes[_2520].field_512 = 0
                    stakes[_2520].field_768 = 0
                    stakes[_2520].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_2520]:
                        sub_8c13bb07[address(msg.sender)][stor8[_2520]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_2520]
                    stor8[_2520] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _2520
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _2520
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _2520
                mem[32] = 5
                stakes[_2520].field_768 = block.timestamp
                if arg1:
                    mem[0] = _2520
                    mem[32] = 5
                    _2714 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_2714] = stakes[_2520].field_0
                    mem[_2714 + 32] = stakes[_2520].field_256
                    mem[_2714 + 64] = bool(stakes[_2520].field_512)
                    mem[_2714 + 96] = stakes[_2520].field_768
                    mem[_2714 + 128] = bool(stakes[_2520].field_1024)
                    if stakes[_2520].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_2520].field_0 = 0
                    stakes[_2520].field_256 = 0
                    stakes[_2520].field_512 = 0
                    stakes[_2520].field_768 = 0
                    stakes[_2520].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_2520]:
                        sub_8c13bb07[address(msg.sender)][stor8[_2520]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_2520]
                    stor8[_2520] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _2520
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _2520
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_2521]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2576 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2576] == bool(mem[_2576])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2604 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2604] == bool(mem[_2604])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2638 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2638] == bool(mem[_2638])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 512
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 384] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 416] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 448] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 480] = 96
    mem[var25002] = var25001
    if not var25003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _3027 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3027] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3041 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3041] == bool(mem[_3041])
            if not mem[_3041]:
                mem[_3027 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _3074 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3074] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_3074 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_3074 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_3074 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_3074 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3112 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3112] == bool(mem[_3112])
                if not mem[_3112]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3027 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3141 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3153 = mem[_3141]
                    require mem[_3141] <= test266151307()
                    require _3141 + mem[_3141] + 31 < _3141 + return_data.size
                    _3161 = mem[_3141 + mem[_3141]]
                    if mem[_3141 + mem[_3141]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_3141 + mem[_3141]])) + 1 < 0 or _3141 + ceil32(return_data.size) + ceil32(ceil32(mem[_3141 + mem[_3141]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3141 + ceil32(return_data.size) + ceil32(ceil32(mem[_3141 + mem[_3141]])) + 1
                    mem[_3141 + ceil32(return_data.size)] = _3161
                    require _3153 + _3161 + 32 <= return_data.size
                    s = 0
                    while s < _3161:
                        mem[s + _3141 + ceil32(return_data.size) + 32] = mem[s + _3141 + _3153 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3161) > _3161:
                        mem[_3141 + ceil32(return_data.size) + _3161 + 32] = 0
                    mem[_3027 + 96] = _3141 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3027 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3142 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3154 = mem[_3142]
                    require mem[_3142] <= test266151307()
                    require _3142 + mem[_3142] + 31 < _3142 + return_data.size
                    _3162 = mem[_3142 + mem[_3142]]
                    if mem[_3142 + mem[_3142]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_3142 + mem[_3142]])) + 1 < 0 or _3142 + ceil32(return_data.size) + ceil32(ceil32(mem[_3142 + mem[_3142]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3142 + ceil32(return_data.size) + ceil32(ceil32(mem[_3142 + mem[_3142]])) + 1
                    mem[_3142 + ceil32(return_data.size)] = _3162
                    require _3154 + _3162 + 32 <= return_data.size
                    s = 0
                    while s < _3162:
                        mem[s + _3142 + ceil32(return_data.size) + 32] = mem[s + _3142 + _3154 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3162) > _3162:
                        mem[_3142 + ceil32(return_data.size) + _3162 + 32] = 0
                    mem[_3027 + 96] = _3142 + ceil32(return_data.size)
            else:
                mem[_3027 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _3076 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3076] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_3076 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_3076 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_3076 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_3076 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3113 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3113] == bool(mem[_3113])
                if not mem[_3113]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3027 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3143 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3155 = mem[_3143]
                    require mem[_3143] <= test266151307()
                    require _3143 + mem[_3143] + 31 < _3143 + return_data.size
                    _3163 = mem[_3143 + mem[_3143]]
                    if mem[_3143 + mem[_3143]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_3143 + mem[_3143]])) + 1 < 0 or _3143 + ceil32(return_data.size) + ceil32(ceil32(mem[_3143 + mem[_3143]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3143 + ceil32(return_data.size) + ceil32(ceil32(mem[_3143 + mem[_3143]])) + 1
                    mem[_3143 + ceil32(return_data.size)] = _3163
                    require _3155 + _3163 + 32 <= return_data.size
                    s = 0
                    while s < _3163:
                        mem[s + _3143 + ceil32(return_data.size) + 32] = mem[s + _3143 + _3155 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3163) > _3163:
                        mem[_3143 + ceil32(return_data.size) + _3163 + 32] = 0
                    mem[_3027 + 96] = _3143 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3027 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3144 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _3156 = mem[_3144]
                    require mem[_3144] <= test266151307()
                    require _3144 + mem[_3144] + 31 < _3144 + return_data.size
                    _3164 = mem[_3144 + mem[_3144]]
                    if mem[_3144 + mem[_3144]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_3144 + mem[_3144]])) + 1 < 0 or _3144 + ceil32(return_data.size) + ceil32(ceil32(mem[_3144 + mem[_3144]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _3144 + ceil32(return_data.size) + ceil32(ceil32(mem[_3144 + mem[_3144]])) + 1
                    mem[_3144 + ceil32(return_data.size)] = _3164
                    require _3156 + _3164 + 32 <= return_data.size
                    s = 0
                    while s < _3164:
                        mem[s + _3144 + ceil32(return_data.size) + 32] = mem[s + _3144 + _3156 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_3164) > _3164:
                        mem[_3144 + ceil32(return_data.size) + _3164 + 32] = 0
                    mem[_3027 + 96] = _3144 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _3027
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _3393 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _3393:
            if idx >= mem[96]:
                revert with 0, 50
            _3401 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _3402 = sha3(mem[0], 5)
            _3403 = mem[64]
            mem[64] = mem[64] + 160
            mem[_3403] = stakes[mem[0]].field_0
            mem[_3403 + 32] = uint256(stor1[_3402])
            mem[_3403 + 64] = bool(uint8(stor2[_3402]))
            mem[_3403 + 96] = uint256(stor3[_3402])
            mem[_3403 + 128] = bool(uint8(stor4[_3402]))
            if not uint8(stor4[_3402]):
                revert with 0, 'This token isn't staked'
            if mem[_3403 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_3402]):
                revert with 0, 17
            mem[mem[64] + 4] = _3401
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _3401
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3468 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3468] == bool(mem[_3468])
            if not mem[_3468]:
                if block.timestamp - uint256(stor3[_3402]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_3402]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600:
                    if arg1:
                        mem[0] = _3401
                        mem[32] = 5
                        _3577 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3577] = stakes[_3401].field_0
                        mem[_3577 + 32] = stakes[_3401].field_256
                        mem[_3577 + 64] = bool(stakes[_3401].field_512)
                        mem[_3577 + 96] = stakes[_3401].field_768
                        mem[_3577 + 128] = bool(stakes[_3401].field_1024)
                        if stakes[_3401].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_3401].field_0 = 0
                        stakes[_3401].field_256 = 0
                        stakes[_3401].field_512 = 0
                        stakes[_3401].field_768 = 0
                        stakes[_3401].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_3401]:
                            sub_8c13bb07[address(msg.sender)][stor8[_3401]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_3401]
                        stor8[_3401] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3401
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _3401
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _3401
                    mem[32] = 5
                    stakes[_3401].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _3401
                        mem[32] = 5
                        _3591 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_3591] = stakes[_3401].field_0
                        mem[_3591 + 32] = stakes[_3401].field_256
                        mem[_3591 + 64] = bool(stakes[_3401].field_512)
                        mem[_3591 + 96] = stakes[_3401].field_768
                        mem[_3591 + 128] = bool(stakes[_3401].field_1024)
                        if stakes[_3401].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_3401].field_0 = 0
                        stakes[_3401].field_256 = 0
                        stakes[_3401].field_512 = 0
                        stakes[_3401].field_768 = 0
                        stakes[_3401].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_3401]:
                            sub_8c13bb07[address(msg.sender)][stor8[_3401]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_3401]
                        stor8[_3401] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _3401
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _3401
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_3402]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_3402]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600:
                if arg1:
                    mem[0] = _3401
                    mem[32] = 5
                    _3579 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3579] = stakes[_3401].field_0
                    mem[_3579 + 32] = stakes[_3401].field_256
                    mem[_3579 + 64] = bool(stakes[_3401].field_512)
                    mem[_3579 + 96] = stakes[_3401].field_768
                    mem[_3579 + 128] = bool(stakes[_3401].field_1024)
                    if stakes[_3401].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_3401].field_0 = 0
                    stakes[_3401].field_256 = 0
                    stakes[_3401].field_512 = 0
                    stakes[_3401].field_768 = 0
                    stakes[_3401].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_3401]:
                        sub_8c13bb07[address(msg.sender)][stor8[_3401]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_3401]
                    stor8[_3401] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _3401
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _3401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _3401
                mem[32] = 5
                stakes[_3401].field_768 = block.timestamp
                if arg1:
                    mem[0] = _3401
                    mem[32] = 5
                    _3595 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_3595] = stakes[_3401].field_0
                    mem[_3595 + 32] = stakes[_3401].field_256
                    mem[_3595 + 64] = bool(stakes[_3401].field_512)
                    mem[_3595 + 96] = stakes[_3401].field_768
                    mem[_3595 + 128] = bool(stakes[_3401].field_1024)
                    if stakes[_3401].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_3401].field_0 = 0
                    stakes[_3401].field_256 = 0
                    stakes[_3401].field_512 = 0
                    stakes[_3401].field_768 = 0
                    stakes[_3401].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_3401]:
                        sub_8c13bb07[address(msg.sender)][stor8[_3401]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_3401]
                    stor8[_3401] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _3401
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _3401
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_3402]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3457 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3457] == bool(mem[_3457])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3485 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3485] == bool(mem[_3485])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3519 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3519] == bool(mem[_3519])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 640
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 512] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 544] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 576] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 608] = 96
    mem[var29002] = var29001
    if not var29003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _3908 = mem[64]
            mem[64] = mem[64] + 128
            mem[_3908] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_3922] == bool(mem[_3922])
            if not mem[_3922]:
                mem[_3908 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _3955 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3955] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_3955 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_3955 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_3955 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_3955 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3993 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3993] == bool(mem[_3993])
                if not mem[_3993]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3908 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4022 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4034 = mem[_4022]
                    require mem[_4022] <= test266151307()
                    require _4022 + mem[_4022] + 31 < _4022 + return_data.size
                    _4042 = mem[_4022 + mem[_4022]]
                    if mem[_4022 + mem[_4022]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4022 + mem[_4022]])) + 1 < 0 or _4022 + ceil32(return_data.size) + ceil32(ceil32(mem[_4022 + mem[_4022]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4022 + ceil32(return_data.size) + ceil32(ceil32(mem[_4022 + mem[_4022]])) + 1
                    mem[_4022 + ceil32(return_data.size)] = _4042
                    require _4034 + _4042 + 32 <= return_data.size
                    s = 0
                    while s < _4042:
                        mem[s + _4022 + ceil32(return_data.size) + 32] = mem[s + _4022 + _4034 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4042) > _4042:
                        mem[_4022 + ceil32(return_data.size) + _4042 + 32] = 0
                    mem[_3908 + 96] = _4022 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3908 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4023 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4035 = mem[_4023]
                    require mem[_4023] <= test266151307()
                    require _4023 + mem[_4023] + 31 < _4023 + return_data.size
                    _4043 = mem[_4023 + mem[_4023]]
                    if mem[_4023 + mem[_4023]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4023 + mem[_4023]])) + 1 < 0 or _4023 + ceil32(return_data.size) + ceil32(ceil32(mem[_4023 + mem[_4023]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4023 + ceil32(return_data.size) + ceil32(ceil32(mem[_4023 + mem[_4023]])) + 1
                    mem[_4023 + ceil32(return_data.size)] = _4043
                    require _4035 + _4043 + 32 <= return_data.size
                    s = 0
                    while s < _4043:
                        mem[s + _4023 + ceil32(return_data.size) + 32] = mem[s + _4023 + _4035 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4043) > _4043:
                        mem[_4023 + ceil32(return_data.size) + _4043 + 32] = 0
                    mem[_3908 + 96] = _4023 + ceil32(return_data.size)
            else:
                mem[_3908 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _3957 = mem[64]
                mem[64] = mem[64] + 160
                mem[_3957] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_3957 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_3957 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_3957 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_3957 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3994 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3994] == bool(mem[_3994])
                if not mem[_3994]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3908 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4024 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4036 = mem[_4024]
                    require mem[_4024] <= test266151307()
                    require _4024 + mem[_4024] + 31 < _4024 + return_data.size
                    _4044 = mem[_4024 + mem[_4024]]
                    if mem[_4024 + mem[_4024]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4024 + mem[_4024]])) + 1 < 0 or _4024 + ceil32(return_data.size) + ceil32(ceil32(mem[_4024 + mem[_4024]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4024 + ceil32(return_data.size) + ceil32(ceil32(mem[_4024 + mem[_4024]])) + 1
                    mem[_4024 + ceil32(return_data.size)] = _4044
                    require _4036 + _4044 + 32 <= return_data.size
                    s = 0
                    while s < _4044:
                        mem[s + _4024 + ceil32(return_data.size) + 32] = mem[s + _4024 + _4036 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4044) > _4044:
                        mem[_4024 + ceil32(return_data.size) + _4044 + 32] = 0
                    mem[_3908 + 96] = _4024 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_3908 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4025 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4037 = mem[_4025]
                    require mem[_4025] <= test266151307()
                    require _4025 + mem[_4025] + 31 < _4025 + return_data.size
                    _4045 = mem[_4025 + mem[_4025]]
                    if mem[_4025 + mem[_4025]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4025 + mem[_4025]])) + 1 < 0 or _4025 + ceil32(return_data.size) + ceil32(ceil32(mem[_4025 + mem[_4025]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4025 + ceil32(return_data.size) + ceil32(ceil32(mem[_4025 + mem[_4025]])) + 1
                    mem[_4025 + ceil32(return_data.size)] = _4045
                    require _4037 + _4045 + 32 <= return_data.size
                    s = 0
                    while s < _4045:
                        mem[s + _4025 + ceil32(return_data.size) + 32] = mem[s + _4025 + _4037 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4045) > _4045:
                        mem[_4025 + ceil32(return_data.size) + _4045 + 32] = 0
                    mem[_3908 + 96] = _4025 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _3908
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _4274 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _4274:
            if idx >= mem[96]:
                revert with 0, 50
            _4282 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _4283 = sha3(mem[0], 5)
            _4284 = mem[64]
            mem[64] = mem[64] + 160
            mem[_4284] = stakes[mem[0]].field_0
            mem[_4284 + 32] = uint256(stor1[_4283])
            mem[_4284 + 64] = bool(uint8(stor2[_4283]))
            mem[_4284 + 96] = uint256(stor3[_4283])
            mem[_4284 + 128] = bool(uint8(stor4[_4283]))
            if not uint8(stor4[_4283]):
                revert with 0, 'This token isn't staked'
            if mem[_4284 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_4283]):
                revert with 0, 17
            mem[mem[64] + 4] = _4282
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _4282
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4349] == bool(mem[_4349])
            if not mem[_4349]:
                if block.timestamp - uint256(stor3[_4283]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_4283]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600:
                    if arg1:
                        mem[0] = _4282
                        mem[32] = 5
                        _4458 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_4458] = stakes[_4282].field_0
                        mem[_4458 + 32] = stakes[_4282].field_256
                        mem[_4458 + 64] = bool(stakes[_4282].field_512)
                        mem[_4458 + 96] = stakes[_4282].field_768
                        mem[_4458 + 128] = bool(stakes[_4282].field_1024)
                        if stakes[_4282].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_4282].field_0 = 0
                        stakes[_4282].field_256 = 0
                        stakes[_4282].field_512 = 0
                        stakes[_4282].field_768 = 0
                        stakes[_4282].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_4282]:
                            sub_8c13bb07[address(msg.sender)][stor8[_4282]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_4282]
                        stor8[_4282] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _4282
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _4282
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _4282
                    mem[32] = 5
                    stakes[_4282].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _4282
                        mem[32] = 5
                        _4472 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_4472] = stakes[_4282].field_0
                        mem[_4472 + 32] = stakes[_4282].field_256
                        mem[_4472 + 64] = bool(stakes[_4282].field_512)
                        mem[_4472 + 96] = stakes[_4282].field_768
                        mem[_4472 + 128] = bool(stakes[_4282].field_1024)
                        if stakes[_4282].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_4282].field_0 = 0
                        stakes[_4282].field_256 = 0
                        stakes[_4282].field_512 = 0
                        stakes[_4282].field_768 = 0
                        stakes[_4282].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_4282]:
                            sub_8c13bb07[address(msg.sender)][stor8[_4282]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_4282]
                        stor8[_4282] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _4282
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _4282
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_4283]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_4283]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600:
                if arg1:
                    mem[0] = _4282
                    mem[32] = 5
                    _4460 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_4460] = stakes[_4282].field_0
                    mem[_4460 + 32] = stakes[_4282].field_256
                    mem[_4460 + 64] = bool(stakes[_4282].field_512)
                    mem[_4460 + 96] = stakes[_4282].field_768
                    mem[_4460 + 128] = bool(stakes[_4282].field_1024)
                    if stakes[_4282].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_4282].field_0 = 0
                    stakes[_4282].field_256 = 0
                    stakes[_4282].field_512 = 0
                    stakes[_4282].field_768 = 0
                    stakes[_4282].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_4282]:
                        sub_8c13bb07[address(msg.sender)][stor8[_4282]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_4282]
                    stor8[_4282] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _4282
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _4282
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _4282
                mem[32] = 5
                stakes[_4282].field_768 = block.timestamp
                if arg1:
                    mem[0] = _4282
                    mem[32] = 5
                    _4476 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_4476] = stakes[_4282].field_0
                    mem[_4476 + 32] = stakes[_4282].field_256
                    mem[_4476 + 64] = bool(stakes[_4282].field_512)
                    mem[_4476 + 96] = stakes[_4282].field_768
                    mem[_4476 + 128] = bool(stakes[_4282].field_1024)
                    if stakes[_4282].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_4282].field_0 = 0
                    stakes[_4282].field_256 = 0
                    stakes[_4282].field_512 = 0
                    stakes[_4282].field_768 = 0
                    stakes[_4282].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_4282]:
                        sub_8c13bb07[address(msg.sender)][stor8[_4282]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_4282]
                    stor8[_4282] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _4282
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _4282
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_4283]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4338] == bool(mem[_4338])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4366 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4366] == bool(mem[_4366])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4400 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_4400] == bool(mem[_4400])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 768
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 640] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 672] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 704] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 736] = 96
    mem[var33002] = var33001
    if not var33003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _4789 = mem[64]
            mem[64] = mem[64] + 128
            mem[_4789] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_4803] == bool(mem[_4803])
            if not mem[_4803]:
                mem[_4789 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _4836 = mem[64]
                mem[64] = mem[64] + 160
                mem[_4836] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_4836 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_4836 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_4836 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_4836 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4874 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4874] == bool(mem[_4874])
                if not mem[_4874]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_4789 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4903 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4915 = mem[_4903]
                    require mem[_4903] <= test266151307()
                    require _4903 + mem[_4903] + 31 < _4903 + return_data.size
                    _4923 = mem[_4903 + mem[_4903]]
                    if mem[_4903 + mem[_4903]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4903 + mem[_4903]])) + 1 < 0 or _4903 + ceil32(return_data.size) + ceil32(ceil32(mem[_4903 + mem[_4903]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4903 + ceil32(return_data.size) + ceil32(ceil32(mem[_4903 + mem[_4903]])) + 1
                    mem[_4903 + ceil32(return_data.size)] = _4923
                    require _4915 + _4923 + 32 <= return_data.size
                    s = 0
                    while s < _4923:
                        mem[s + _4903 + ceil32(return_data.size) + 32] = mem[s + _4903 + _4915 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4923) > _4923:
                        mem[_4903 + ceil32(return_data.size) + _4923 + 32] = 0
                    mem[_4789 + 96] = _4903 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_4789 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4904 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4916 = mem[_4904]
                    require mem[_4904] <= test266151307()
                    require _4904 + mem[_4904] + 31 < _4904 + return_data.size
                    _4924 = mem[_4904 + mem[_4904]]
                    if mem[_4904 + mem[_4904]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4904 + mem[_4904]])) + 1 < 0 or _4904 + ceil32(return_data.size) + ceil32(ceil32(mem[_4904 + mem[_4904]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4904 + ceil32(return_data.size) + ceil32(ceil32(mem[_4904 + mem[_4904]])) + 1
                    mem[_4904 + ceil32(return_data.size)] = _4924
                    require _4916 + _4924 + 32 <= return_data.size
                    s = 0
                    while s < _4924:
                        mem[s + _4904 + ceil32(return_data.size) + 32] = mem[s + _4904 + _4916 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4924) > _4924:
                        mem[_4904 + ceil32(return_data.size) + _4924 + 32] = 0
                    mem[_4789 + 96] = _4904 + ceil32(return_data.size)
            else:
                mem[_4789 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _4838 = mem[64]
                mem[64] = mem[64] + 160
                mem[_4838] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_4838 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_4838 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_4838 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_4838 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4875 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4875] == bool(mem[_4875])
                if not mem[_4875]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_4789 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4905 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4917 = mem[_4905]
                    require mem[_4905] <= test266151307()
                    require _4905 + mem[_4905] + 31 < _4905 + return_data.size
                    _4925 = mem[_4905 + mem[_4905]]
                    if mem[_4905 + mem[_4905]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4905 + mem[_4905]])) + 1 < 0 or _4905 + ceil32(return_data.size) + ceil32(ceil32(mem[_4905 + mem[_4905]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4905 + ceil32(return_data.size) + ceil32(ceil32(mem[_4905 + mem[_4905]])) + 1
                    mem[_4905 + ceil32(return_data.size)] = _4925
                    require _4917 + _4925 + 32 <= return_data.size
                    s = 0
                    while s < _4925:
                        mem[s + _4905 + ceil32(return_data.size) + 32] = mem[s + _4905 + _4917 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4925) > _4925:
                        mem[_4905 + ceil32(return_data.size) + _4925 + 32] = 0
                    mem[_4789 + 96] = _4905 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_4789 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4906 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4918 = mem[_4906]
                    require mem[_4906] <= test266151307()
                    require _4906 + mem[_4906] + 31 < _4906 + return_data.size
                    _4926 = mem[_4906 + mem[_4906]]
                    if mem[_4906 + mem[_4906]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_4906 + mem[_4906]])) + 1 < 0 or _4906 + ceil32(return_data.size) + ceil32(ceil32(mem[_4906 + mem[_4906]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _4906 + ceil32(return_data.size) + ceil32(ceil32(mem[_4906 + mem[_4906]])) + 1
                    mem[_4906 + ceil32(return_data.size)] = _4926
                    require _4918 + _4926 + 32 <= return_data.size
                    s = 0
                    while s < _4926:
                        mem[s + _4906 + ceil32(return_data.size) + 32] = mem[s + _4906 + _4918 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_4926) > _4926:
                        mem[_4906 + ceil32(return_data.size) + _4926 + 32] = 0
                    mem[_4789 + 96] = _4906 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _4789
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _5155 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _5155:
            if idx >= mem[96]:
                revert with 0, 50
            _5163 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _5164 = sha3(mem[0], 5)
            _5165 = mem[64]
            mem[64] = mem[64] + 160
            mem[_5165] = stakes[mem[0]].field_0
            mem[_5165 + 32] = uint256(stor1[_5164])
            mem[_5165 + 64] = bool(uint8(stor2[_5164]))
            mem[_5165 + 96] = uint256(stor3[_5164])
            mem[_5165 + 128] = bool(uint8(stor4[_5164]))
            if not uint8(stor4[_5164]):
                revert with 0, 'This token isn't staked'
            if mem[_5165 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_5164]):
                revert with 0, 17
            mem[mem[64] + 4] = _5163
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _5163
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5230] == bool(mem[_5230])
            if not mem[_5230]:
                if block.timestamp - uint256(stor3[_5164]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_5164]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600:
                    if arg1:
                        mem[0] = _5163
                        mem[32] = 5
                        _5339 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_5339] = stakes[_5163].field_0
                        mem[_5339 + 32] = stakes[_5163].field_256
                        mem[_5339 + 64] = bool(stakes[_5163].field_512)
                        mem[_5339 + 96] = stakes[_5163].field_768
                        mem[_5339 + 128] = bool(stakes[_5163].field_1024)
                        if stakes[_5163].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_5163].field_0 = 0
                        stakes[_5163].field_256 = 0
                        stakes[_5163].field_512 = 0
                        stakes[_5163].field_768 = 0
                        stakes[_5163].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_5163]:
                            sub_8c13bb07[address(msg.sender)][stor8[_5163]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_5163]
                        stor8[_5163] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _5163
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _5163
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _5163
                    mem[32] = 5
                    stakes[_5163].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _5163
                        mem[32] = 5
                        _5353 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_5353] = stakes[_5163].field_0
                        mem[_5353 + 32] = stakes[_5163].field_256
                        mem[_5353 + 64] = bool(stakes[_5163].field_512)
                        mem[_5353 + 96] = stakes[_5163].field_768
                        mem[_5353 + 128] = bool(stakes[_5163].field_1024)
                        if stakes[_5163].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_5163].field_0 = 0
                        stakes[_5163].field_256 = 0
                        stakes[_5163].field_512 = 0
                        stakes[_5163].field_768 = 0
                        stakes[_5163].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_5163]:
                            sub_8c13bb07[address(msg.sender)][stor8[_5163]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_5163]
                        stor8[_5163] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _5163
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _5163
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_5164]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_5164]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600:
                if arg1:
                    mem[0] = _5163
                    mem[32] = 5
                    _5341 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_5341] = stakes[_5163].field_0
                    mem[_5341 + 32] = stakes[_5163].field_256
                    mem[_5341 + 64] = bool(stakes[_5163].field_512)
                    mem[_5341 + 96] = stakes[_5163].field_768
                    mem[_5341 + 128] = bool(stakes[_5163].field_1024)
                    if stakes[_5163].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_5163].field_0 = 0
                    stakes[_5163].field_256 = 0
                    stakes[_5163].field_512 = 0
                    stakes[_5163].field_768 = 0
                    stakes[_5163].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_5163]:
                        sub_8c13bb07[address(msg.sender)][stor8[_5163]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_5163]
                    stor8[_5163] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _5163
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _5163
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _5163
                mem[32] = 5
                stakes[_5163].field_768 = block.timestamp
                if arg1:
                    mem[0] = _5163
                    mem[32] = 5
                    _5357 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_5357] = stakes[_5163].field_0
                    mem[_5357 + 32] = stakes[_5163].field_256
                    mem[_5357 + 64] = bool(stakes[_5163].field_512)
                    mem[_5357 + 96] = stakes[_5163].field_768
                    mem[_5357 + 128] = bool(stakes[_5163].field_1024)
                    if stakes[_5163].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_5163].field_0 = 0
                    stakes[_5163].field_256 = 0
                    stakes[_5163].field_512 = 0
                    stakes[_5163].field_768 = 0
                    stakes[_5163].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_5163]:
                        sub_8c13bb07[address(msg.sender)][stor8[_5163]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_5163]
                    stor8[_5163] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _5163
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _5163
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_5164]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5219 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5219] == bool(mem[_5219])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5247 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5247] == bool(mem[_5247])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_5281] == bool(mem[_5281])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 896
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 768] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 800] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 832] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 864] = 96
    mem[var37002] = var37001
    if not var37003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _5670 = mem[64]
            mem[64] = mem[64] + 128
            mem[_5670] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5684 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_5684] == bool(mem[_5684])
            if not mem[_5684]:
                mem[_5670 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _5717 = mem[64]
                mem[64] = mem[64] + 160
                mem[_5717] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_5717 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_5717 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_5717 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_5717 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5755 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5755] == bool(mem[_5755])
                if not mem[_5755]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_5670 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5784 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5796 = mem[_5784]
                    require mem[_5784] <= test266151307()
                    require _5784 + mem[_5784] + 31 < _5784 + return_data.size
                    _5804 = mem[_5784 + mem[_5784]]
                    if mem[_5784 + mem[_5784]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_5784 + mem[_5784]])) + 1 < 0 or _5784 + ceil32(return_data.size) + ceil32(ceil32(mem[_5784 + mem[_5784]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _5784 + ceil32(return_data.size) + ceil32(ceil32(mem[_5784 + mem[_5784]])) + 1
                    mem[_5784 + ceil32(return_data.size)] = _5804
                    require _5796 + _5804 + 32 <= return_data.size
                    s = 0
                    while s < _5804:
                        mem[s + _5784 + ceil32(return_data.size) + 32] = mem[s + _5784 + _5796 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5804) > _5804:
                        mem[_5784 + ceil32(return_data.size) + _5804 + 32] = 0
                    mem[_5670 + 96] = _5784 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_5670 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5785 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5797 = mem[_5785]
                    require mem[_5785] <= test266151307()
                    require _5785 + mem[_5785] + 31 < _5785 + return_data.size
                    _5805 = mem[_5785 + mem[_5785]]
                    if mem[_5785 + mem[_5785]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_5785 + mem[_5785]])) + 1 < 0 or _5785 + ceil32(return_data.size) + ceil32(ceil32(mem[_5785 + mem[_5785]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _5785 + ceil32(return_data.size) + ceil32(ceil32(mem[_5785 + mem[_5785]])) + 1
                    mem[_5785 + ceil32(return_data.size)] = _5805
                    require _5797 + _5805 + 32 <= return_data.size
                    s = 0
                    while s < _5805:
                        mem[s + _5785 + ceil32(return_data.size) + 32] = mem[s + _5785 + _5797 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5805) > _5805:
                        mem[_5785 + ceil32(return_data.size) + _5805 + 32] = 0
                    mem[_5670 + 96] = _5785 + ceil32(return_data.size)
            else:
                mem[_5670 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _5719 = mem[64]
                mem[64] = mem[64] + 160
                mem[_5719] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_5719 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_5719 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_5719 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_5719 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5756 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5756] == bool(mem[_5756])
                if not mem[_5756]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_5670 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5786 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5798 = mem[_5786]
                    require mem[_5786] <= test266151307()
                    require _5786 + mem[_5786] + 31 < _5786 + return_data.size
                    _5806 = mem[_5786 + mem[_5786]]
                    if mem[_5786 + mem[_5786]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_5786 + mem[_5786]])) + 1 < 0 or _5786 + ceil32(return_data.size) + ceil32(ceil32(mem[_5786 + mem[_5786]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _5786 + ceil32(return_data.size) + ceil32(ceil32(mem[_5786 + mem[_5786]])) + 1
                    mem[_5786 + ceil32(return_data.size)] = _5806
                    require _5798 + _5806 + 32 <= return_data.size
                    s = 0
                    while s < _5806:
                        mem[s + _5786 + ceil32(return_data.size) + 32] = mem[s + _5786 + _5798 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5806) > _5806:
                        mem[_5786 + ceil32(return_data.size) + _5806 + 32] = 0
                    mem[_5670 + 96] = _5786 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_5670 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5787 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5799 = mem[_5787]
                    require mem[_5787] <= test266151307()
                    require _5787 + mem[_5787] + 31 < _5787 + return_data.size
                    _5807 = mem[_5787 + mem[_5787]]
                    if mem[_5787 + mem[_5787]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_5787 + mem[_5787]])) + 1 < 0 or _5787 + ceil32(return_data.size) + ceil32(ceil32(mem[_5787 + mem[_5787]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _5787 + ceil32(return_data.size) + ceil32(ceil32(mem[_5787 + mem[_5787]])) + 1
                    mem[_5787 + ceil32(return_data.size)] = _5807
                    require _5799 + _5807 + 32 <= return_data.size
                    s = 0
                    while s < _5807:
                        mem[s + _5787 + ceil32(return_data.size) + 32] = mem[s + _5787 + _5799 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_5807) > _5807:
                        mem[_5787 + ceil32(return_data.size) + _5807 + 32] = 0
                    mem[_5670 + 96] = _5787 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _5670
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _6036 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _6036:
            if idx >= mem[96]:
                revert with 0, 50
            _6044 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _6045 = sha3(mem[0], 5)
            _6046 = mem[64]
            mem[64] = mem[64] + 160
            mem[_6046] = stakes[mem[0]].field_0
            mem[_6046 + 32] = uint256(stor1[_6045])
            mem[_6046 + 64] = bool(uint8(stor2[_6045]))
            mem[_6046 + 96] = uint256(stor3[_6045])
            mem[_6046 + 128] = bool(uint8(stor4[_6045]))
            if not uint8(stor4[_6045]):
                revert with 0, 'This token isn't staked'
            if mem[_6046 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_6045]):
                revert with 0, 17
            mem[mem[64] + 4] = _6044
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _6044
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_6111] == bool(mem[_6111])
            if not mem[_6111]:
                if block.timestamp - uint256(stor3[_6045]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_6045]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600:
                    if arg1:
                        mem[0] = _6044
                        mem[32] = 5
                        _6220 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_6220] = stakes[_6044].field_0
                        mem[_6220 + 32] = stakes[_6044].field_256
                        mem[_6220 + 64] = bool(stakes[_6044].field_512)
                        mem[_6220 + 96] = stakes[_6044].field_768
                        mem[_6220 + 128] = bool(stakes[_6044].field_1024)
                        if stakes[_6044].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_6044].field_0 = 0
                        stakes[_6044].field_256 = 0
                        stakes[_6044].field_512 = 0
                        stakes[_6044].field_768 = 0
                        stakes[_6044].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6044]:
                            sub_8c13bb07[address(msg.sender)][stor8[_6044]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6044]
                        stor8[_6044] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _6044
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _6044
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _6044
                    mem[32] = 5
                    stakes[_6044].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _6044
                        mem[32] = 5
                        _6234 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_6234] = stakes[_6044].field_0
                        mem[_6234 + 32] = stakes[_6044].field_256
                        mem[_6234 + 64] = bool(stakes[_6044].field_512)
                        mem[_6234 + 96] = stakes[_6044].field_768
                        mem[_6234 + 128] = bool(stakes[_6044].field_1024)
                        if stakes[_6044].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_6044].field_0 = 0
                        stakes[_6044].field_256 = 0
                        stakes[_6044].field_512 = 0
                        stakes[_6044].field_768 = 0
                        stakes[_6044].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6044]:
                            sub_8c13bb07[address(msg.sender)][stor8[_6044]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6044]
                        stor8[_6044] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _6044
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _6044
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_6045]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_6045]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600:
                if arg1:
                    mem[0] = _6044
                    mem[32] = 5
                    _6222 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_6222] = stakes[_6044].field_0
                    mem[_6222 + 32] = stakes[_6044].field_256
                    mem[_6222 + 64] = bool(stakes[_6044].field_512)
                    mem[_6222 + 96] = stakes[_6044].field_768
                    mem[_6222 + 128] = bool(stakes[_6044].field_1024)
                    if stakes[_6044].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_6044].field_0 = 0
                    stakes[_6044].field_256 = 0
                    stakes[_6044].field_512 = 0
                    stakes[_6044].field_768 = 0
                    stakes[_6044].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6044]:
                        sub_8c13bb07[address(msg.sender)][stor8[_6044]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6044]
                    stor8[_6044] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _6044
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _6044
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _6044
                mem[32] = 5
                stakes[_6044].field_768 = block.timestamp
                if arg1:
                    mem[0] = _6044
                    mem[32] = 5
                    _6238 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_6238] = stakes[_6044].field_0
                    mem[_6238 + 32] = stakes[_6044].field_256
                    mem[_6238 + 64] = bool(stakes[_6044].field_512)
                    mem[_6238 + 96] = stakes[_6044].field_768
                    mem[_6238 + 128] = bool(stakes[_6044].field_1024)
                    if stakes[_6044].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_6044].field_0 = 0
                    stakes[_6044].field_256 = 0
                    stakes[_6044].field_512 = 0
                    stakes[_6044].field_768 = 0
                    stakes[_6044].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6044]:
                        sub_8c13bb07[address(msg.sender)][stor8[_6044]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6044]
                    stor8[_6044] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _6044
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _6044
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_6045]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_6100] == bool(mem[_6100])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_6128] == bool(mem[_6128])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6162 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_6162] == bool(mem[_6162])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 1024
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 896] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 928] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 960] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 992] = 96
    mem[var41002] = var41001
    if not var41003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _6551 = mem[64]
            mem[64] = mem[64] + 128
            mem[_6551] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6565 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_6565] == bool(mem[_6565])
            if not mem[_6565]:
                mem[_6551 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _6598 = mem[64]
                mem[64] = mem[64] + 160
                mem[_6598] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_6598 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_6598 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_6598 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_6598 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6636 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6636] == bool(mem[_6636])
                if not mem[_6636]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_6551 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6665 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6677 = mem[_6665]
                    require mem[_6665] <= test266151307()
                    require _6665 + mem[_6665] + 31 < _6665 + return_data.size
                    _6685 = mem[_6665 + mem[_6665]]
                    if mem[_6665 + mem[_6665]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_6665 + mem[_6665]])) + 1 < 0 or _6665 + ceil32(return_data.size) + ceil32(ceil32(mem[_6665 + mem[_6665]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _6665 + ceil32(return_data.size) + ceil32(ceil32(mem[_6665 + mem[_6665]])) + 1
                    mem[_6665 + ceil32(return_data.size)] = _6685
                    require _6677 + _6685 + 32 <= return_data.size
                    s = 0
                    while s < _6685:
                        mem[s + _6665 + ceil32(return_data.size) + 32] = mem[s + _6665 + _6677 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_6685) > _6685:
                        mem[_6665 + ceil32(return_data.size) + _6685 + 32] = 0
                    mem[_6551 + 96] = _6665 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_6551 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6666 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6678 = mem[_6666]
                    require mem[_6666] <= test266151307()
                    require _6666 + mem[_6666] + 31 < _6666 + return_data.size
                    _6686 = mem[_6666 + mem[_6666]]
                    if mem[_6666 + mem[_6666]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_6666 + mem[_6666]])) + 1 < 0 or _6666 + ceil32(return_data.size) + ceil32(ceil32(mem[_6666 + mem[_6666]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _6666 + ceil32(return_data.size) + ceil32(ceil32(mem[_6666 + mem[_6666]])) + 1
                    mem[_6666 + ceil32(return_data.size)] = _6686
                    require _6678 + _6686 + 32 <= return_data.size
                    s = 0
                    while s < _6686:
                        mem[s + _6666 + ceil32(return_data.size) + 32] = mem[s + _6666 + _6678 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_6686) > _6686:
                        mem[_6666 + ceil32(return_data.size) + _6686 + 32] = 0
                    mem[_6551 + 96] = _6666 + ceil32(return_data.size)
            else:
                mem[_6551 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _6600 = mem[64]
                mem[64] = mem[64] + 160
                mem[_6600] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_6600 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_6600 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_6600 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_6600 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6637 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6637] == bool(mem[_6637])
                if not mem[_6637]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_6551 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6667 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6679 = mem[_6667]
                    require mem[_6667] <= test266151307()
                    require _6667 + mem[_6667] + 31 < _6667 + return_data.size
                    _6687 = mem[_6667 + mem[_6667]]
                    if mem[_6667 + mem[_6667]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_6667 + mem[_6667]])) + 1 < 0 or _6667 + ceil32(return_data.size) + ceil32(ceil32(mem[_6667 + mem[_6667]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _6667 + ceil32(return_data.size) + ceil32(ceil32(mem[_6667 + mem[_6667]])) + 1
                    mem[_6667 + ceil32(return_data.size)] = _6687
                    require _6679 + _6687 + 32 <= return_data.size
                    s = 0
                    while s < _6687:
                        mem[s + _6667 + ceil32(return_data.size) + 32] = mem[s + _6667 + _6679 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_6687) > _6687:
                        mem[_6667 + ceil32(return_data.size) + _6687 + 32] = 0
                    mem[_6551 + 96] = _6667 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_6551 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6668 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6680 = mem[_6668]
                    require mem[_6668] <= test266151307()
                    require _6668 + mem[_6668] + 31 < _6668 + return_data.size
                    _6688 = mem[_6668 + mem[_6668]]
                    if mem[_6668 + mem[_6668]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_6668 + mem[_6668]])) + 1 < 0 or _6668 + ceil32(return_data.size) + ceil32(ceil32(mem[_6668 + mem[_6668]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _6668 + ceil32(return_data.size) + ceil32(ceil32(mem[_6668 + mem[_6668]])) + 1
                    mem[_6668 + ceil32(return_data.size)] = _6688
                    require _6680 + _6688 + 32 <= return_data.size
                    s = 0
                    while s < _6688:
                        mem[s + _6668 + ceil32(return_data.size) + 32] = mem[s + _6668 + _6680 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_6688) > _6688:
                        mem[_6668 + ceil32(return_data.size) + _6688 + 32] = 0
                    mem[_6551 + 96] = _6668 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _6551
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _6917 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _6917:
            if idx >= mem[96]:
                revert with 0, 50
            _6925 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _6926 = sha3(mem[0], 5)
            _6927 = mem[64]
            mem[64] = mem[64] + 160
            mem[_6927] = stakes[mem[0]].field_0
            mem[_6927 + 32] = uint256(stor1[_6926])
            mem[_6927 + 64] = bool(uint8(stor2[_6926]))
            mem[_6927 + 96] = uint256(stor3[_6926])
            mem[_6927 + 128] = bool(uint8(stor4[_6926]))
            if not uint8(stor4[_6926]):
                revert with 0, 'This token isn't staked'
            if mem[_6927 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_6926]):
                revert with 0, 17
            mem[mem[64] + 4] = _6925
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _6925
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6992 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_6992] == bool(mem[_6992])
            if not mem[_6992]:
                if block.timestamp - uint256(stor3[_6926]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_6926]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600:
                    if arg1:
                        mem[0] = _6925
                        mem[32] = 5
                        _7101 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_7101] = stakes[_6925].field_0
                        mem[_7101 + 32] = stakes[_6925].field_256
                        mem[_7101 + 64] = bool(stakes[_6925].field_512)
                        mem[_7101 + 96] = stakes[_6925].field_768
                        mem[_7101 + 128] = bool(stakes[_6925].field_1024)
                        if stakes[_6925].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_6925].field_0 = 0
                        stakes[_6925].field_256 = 0
                        stakes[_6925].field_512 = 0
                        stakes[_6925].field_768 = 0
                        stakes[_6925].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6925]:
                            sub_8c13bb07[address(msg.sender)][stor8[_6925]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6925]
                        stor8[_6925] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _6925
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _6925
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _6925
                    mem[32] = 5
                    stakes[_6925].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _6925
                        mem[32] = 5
                        _7115 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_7115] = stakes[_6925].field_0
                        mem[_7115 + 32] = stakes[_6925].field_256
                        mem[_7115 + 64] = bool(stakes[_6925].field_512)
                        mem[_7115 + 96] = stakes[_6925].field_768
                        mem[_7115 + 128] = bool(stakes[_6925].field_1024)
                        if stakes[_6925].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_6925].field_0 = 0
                        stakes[_6925].field_256 = 0
                        stakes[_6925].field_512 = 0
                        stakes[_6925].field_768 = 0
                        stakes[_6925].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6925]:
                            sub_8c13bb07[address(msg.sender)][stor8[_6925]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6925]
                        stor8[_6925] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _6925
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _6925
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_6926]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_6926]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600:
                if arg1:
                    mem[0] = _6925
                    mem[32] = 5
                    _7103 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_7103] = stakes[_6925].field_0
                    mem[_7103 + 32] = stakes[_6925].field_256
                    mem[_7103 + 64] = bool(stakes[_6925].field_512)
                    mem[_7103 + 96] = stakes[_6925].field_768
                    mem[_7103 + 128] = bool(stakes[_6925].field_1024)
                    if stakes[_6925].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_6925].field_0 = 0
                    stakes[_6925].field_256 = 0
                    stakes[_6925].field_512 = 0
                    stakes[_6925].field_768 = 0
                    stakes[_6925].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6925]:
                        sub_8c13bb07[address(msg.sender)][stor8[_6925]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6925]
                    stor8[_6925] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _6925
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _6925
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _6925
                mem[32] = 5
                stakes[_6925].field_768 = block.timestamp
                if arg1:
                    mem[0] = _6925
                    mem[32] = 5
                    _7119 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_7119] = stakes[_6925].field_0
                    mem[_7119 + 32] = stakes[_6925].field_256
                    mem[_7119 + 64] = bool(stakes[_6925].field_512)
                    mem[_7119 + 96] = stakes[_6925].field_768
                    mem[_7119 + 128] = bool(stakes[_6925].field_1024)
                    if stakes[_6925].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_6925].field_0 = 0
                    stakes[_6925].field_256 = 0
                    stakes[_6925].field_512 = 0
                    stakes[_6925].field_768 = 0
                    stakes[_6925].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_6925]:
                        sub_8c13bb07[address(msg.sender)][stor8[_6925]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_6925]
                    stor8[_6925] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _6925
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _6925
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_6926]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _6981 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_6981] == bool(mem[_6981])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7009 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7009] == bool(mem[_7009])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7043 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7043] == bool(mem[_7043])
    mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + 1152
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1024] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1056] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1088] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1120] = 96
    mem[var45002] = var45001
    if not var45003 - 1:
        idx = 0
        while idx < sub_4b63a04b[address(msg.sender)]:
            if idx >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 7)
            _7432 = mem[64]
            mem[64] = mem[64] + 128
            mem[_7432] = sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][idx].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7446] == bool(mem[_7446])
            if not mem[_7446]:
                mem[_7432 + 32] = 3657 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _7479 = mem[64]
                mem[64] = mem[64] + 160
                mem[_7479] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_7479 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_7479 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_7479 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_7479 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7517] == bool(mem[_7517])
                if not mem[_7517]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_7432 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7546 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7558 = mem[_7546]
                    require mem[_7546] <= test266151307()
                    require _7546 + mem[_7546] + 31 < _7546 + return_data.size
                    _7566 = mem[_7546 + mem[_7546]]
                    if mem[_7546 + mem[_7546]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_7546 + mem[_7546]])) + 1 < 0 or _7546 + ceil32(return_data.size) + ceil32(ceil32(mem[_7546 + mem[_7546]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _7546 + ceil32(return_data.size) + ceil32(ceil32(mem[_7546 + mem[_7546]])) + 1
                    mem[_7546 + ceil32(return_data.size)] = _7566
                    require _7558 + _7566 + 32 <= return_data.size
                    s = 0
                    while s < _7566:
                        mem[s + _7546 + ceil32(return_data.size) + 32] = mem[s + _7546 + _7558 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_7566) > _7566:
                        mem[_7546 + ceil32(return_data.size) + _7566 + 32] = 0
                    mem[_7432 + 96] = _7546 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_7432 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7547 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7559 = mem[_7547]
                    require mem[_7547] <= test266151307()
                    require _7547 + mem[_7547] + 31 < _7547 + return_data.size
                    _7567 = mem[_7547 + mem[_7547]]
                    if mem[_7547 + mem[_7547]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_7547 + mem[_7547]])) + 1 < 0 or _7547 + ceil32(return_data.size) + ceil32(ceil32(mem[_7547 + mem[_7547]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _7547 + ceil32(return_data.size) + ceil32(ceil32(mem[_7547 + mem[_7547]])) + 1
                    mem[_7547 + ceil32(return_data.size)] = _7567
                    require _7559 + _7567 + 32 <= return_data.size
                    s = 0
                    while s < _7567:
                        mem[s + _7547 + ceil32(return_data.size) + 32] = mem[s + _7547 + _7559 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_7567) > _7567:
                        mem[_7547 + ceil32(return_data.size) + _7567 + 32] = 0
                    mem[_7432 + 96] = _7547 + ceil32(return_data.size)
            else:
                mem[_7432 + 32] = 9686 * 10^16
                mem[0] = sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[32] = 5
                _7481 = mem[64]
                mem[64] = mem[64] + 160
                mem[_7481] = stakes[stor7[address(msg.sender)][idx].field_0].field_0
                mem[_7481 + 32] = stakes[stor7[address(msg.sender)][idx].field_0].field_256
                mem[_7481 + 64] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_512)
                mem[_7481 + 96] = stakes[stor7[address(msg.sender)][idx].field_0].field_768
                mem[_7481 + 128] = bool(stakes[stor7[address(msg.sender)][idx].field_0].field_1024)
                if not stakes[stor7[address(msg.sender)][idx].field_0].field_1024:
                    revert with 0, 'This token isn't staked'
                if block.timestamp < stakes[stor7[address(msg.sender)][idx].field_0].field_768:
                    revert with 0, 17
                mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).0x711173fb with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][idx].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7518 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_7518] == bool(mem[_7518])
                if not mem[_7518]:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_7432 + 64] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7548 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7560 = mem[_7548]
                    require mem[_7548] <= test266151307()
                    require _7548 + mem[_7548] + 31 < _7548 + return_data.size
                    _7568 = mem[_7548 + mem[_7548]]
                    if mem[_7548 + mem[_7548]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_7548 + mem[_7548]])) + 1 < 0 or _7548 + ceil32(return_data.size) + ceil32(ceil32(mem[_7548 + mem[_7548]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _7548 + ceil32(return_data.size) + ceil32(ceil32(mem[_7548 + mem[_7548]])) + 1
                    mem[_7548 + ceil32(return_data.size)] = _7568
                    require _7560 + _7568 + 32 <= return_data.size
                    s = 0
                    while s < _7568:
                        mem[s + _7548 + ceil32(return_data.size) + 32] = mem[s + _7548 + _7560 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_7568) > _7568:
                        mem[_7548 + ceil32(return_data.size) + _7568 + 32] = 0
                    mem[_7432 + 96] = _7548 + ceil32(return_data.size)
                else:
                    if block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600:
                        revert with 0, 17
                    mem[_7432 + 64] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][idx].field_0].field_768 / 24 * 3600
                    mem[mem[64]] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_8c13bb07[address(msg.sender)][idx].field_0
                    require ext_code.size(address(stor1.length))
                    staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                            gas gas_remaining wei
                           args sub_8c13bb07[address(msg.sender)][idx].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7549 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7561 = mem[_7549]
                    require mem[_7549] <= test266151307()
                    require _7549 + mem[_7549] + 31 < _7549 + return_data.size
                    _7569 = mem[_7549 + mem[_7549]]
                    if mem[_7549 + mem[_7549]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_7549 + mem[_7549]])) + 1 < 0 or _7549 + ceil32(return_data.size) + ceil32(ceil32(mem[_7549 + mem[_7549]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _7549 + ceil32(return_data.size) + ceil32(ceil32(mem[_7549 + mem[_7549]])) + 1
                    mem[_7549 + ceil32(return_data.size)] = _7569
                    require _7561 + _7569 + 32 <= return_data.size
                    s = 0
                    while s < _7569:
                        mem[s + _7549 + ceil32(return_data.size) + 32] = mem[s + _7549 + _7561 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_7569) > _7569:
                        mem[_7549 + ceil32(return_data.size) + _7569 + 32] = 0
                    mem[_7432 + 96] = _7549 + ceil32(return_data.size)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _7432
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _7798 = mem[96]
        idx = 0
        s = 0
        t = 0
        while idx < _7798:
            if idx >= mem[96]:
                revert with 0, 50
            _7806 = mem[mem[(32 * idx) + 128]]
            mem[0] = mem[mem[(32 * idx) + 128]]
            mem[32] = 5
            _7807 = sha3(mem[0], 5)
            _7808 = mem[64]
            mem[64] = mem[64] + 160
            mem[_7808] = stakes[mem[0]].field_0
            mem[_7808 + 32] = uint256(stor1[_7807])
            mem[_7808 + 64] = bool(uint8(stor2[_7807]))
            mem[_7808 + 96] = uint256(stor3[_7807])
            mem[_7808 + 128] = bool(uint8(stor4[_7807]))
            if not uint8(stor4[_7807]):
                revert with 0, 'This token isn't staked'
            if mem[_7808 + 12 len 20] != msg.sender:
                revert with 0, 'You don't own this token'
            if block.timestamp < uint256(stor3[_7807]):
                revert with 0, 17
            mem[mem[64] + 4] = _7806
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args _7806
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7873 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_7873] == bool(mem[_7873])
            if not mem[_7873]:
                if block.timestamp - uint256(stor3[_7807]) / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - uint256(stor3[_7807]) / 24 * 3600:
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600 and 199 > -1 / 3657 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600:
                    revert with 0, 17
                if 9999 > !(727743 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600):
                    revert with 0, 17
                if 3657 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600 < (727743 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000:
                    revert with 0, 17
                if t > !((3657 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000)):
                    revert with 0, 17
                if s > !((727743 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000):
                    revert with 0, 17
                if not 3657 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600:
                    if arg1:
                        mem[0] = _7806
                        mem[32] = 5
                        _7982 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_7982] = stakes[_7806].field_0
                        mem[_7982 + 32] = stakes[_7806].field_256
                        mem[_7982 + 64] = bool(stakes[_7806].field_512)
                        mem[_7982 + 96] = stakes[_7806].field_768
                        mem[_7982 + 128] = bool(stakes[_7806].field_1024)
                        if stakes[_7806].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_7806].field_0 = 0
                        stakes[_7806].field_256 = 0
                        stakes[_7806].field_512 = 0
                        stakes[_7806].field_768 = 0
                        stakes[_7806].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_7806]:
                            sub_8c13bb07[address(msg.sender)][stor8[_7806]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_7806]
                        stor8[_7806] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _7806
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _7806
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[0] = _7806
                    mem[32] = 5
                    stakes[_7806].field_768 = block.timestamp
                    if arg1:
                        mem[0] = _7806
                        mem[32] = 5
                        _7996 = mem[64]
                        mem[64] = mem[64] + 160
                        mem[_7996] = stakes[_7806].field_0
                        mem[_7996 + 32] = stakes[_7806].field_256
                        mem[_7996 + 64] = bool(stakes[_7806].field_512)
                        mem[_7996 + 96] = stakes[_7806].field_768
                        mem[_7996 + 128] = bool(stakes[_7806].field_1024)
                        if stakes[_7806].field_0 != msg.sender:
                            revert with 0, 'You don't own this token'
                        stakes[_7806].field_0 = 0
                        stakes[_7806].field_256 = 0
                        stakes[_7806].field_512 = 0
                        stakes[_7806].field_768 = 0
                        stakes[_7806].field_1024 = 0
                        if sub_4b63a04b[address(msg.sender)] < 1:
                            revert with 0, 17
                        if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_7806]:
                            sub_8c13bb07[address(msg.sender)][stor8[_7806]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                            stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_7806]
                        stor8[_7806] = 0
                        sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                        mem[0] = msg.sender
                        mem[32] = 9
                        if not sub_4b63a04b[address(msg.sender)]:
                            revert with 0, 17
                        sub_4b63a04b[address(msg.sender)]--
                        mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = this.address
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _7806
                        require ext_code.size(address(stor1.length))
                        call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _7806
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((727743 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000)
                t = t + (3657 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) - ((727743 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000)
                continue 
            if block.timestamp - uint256(stor3[_7807]) / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - uint256(stor3[_7807]) / 24 * 3600:
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600 and 199 > -1 / 9686 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600:
                revert with 0, 17
            if 9999 > !(1927514 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600):
                revert with 0, 17
            if 9686 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600 < (1927514 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000:
                revert with 0, 17
            if t > !((9686 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000)):
                revert with 0, 17
            if s > !((1927514 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000):
                revert with 0, 17
            if not 9686 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600:
                if arg1:
                    mem[0] = _7806
                    mem[32] = 5
                    _7984 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_7984] = stakes[_7806].field_0
                    mem[_7984 + 32] = stakes[_7806].field_256
                    mem[_7984 + 64] = bool(stakes[_7806].field_512)
                    mem[_7984 + 96] = stakes[_7806].field_768
                    mem[_7984 + 128] = bool(stakes[_7806].field_1024)
                    if stakes[_7806].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_7806].field_0 = 0
                    stakes[_7806].field_256 = 0
                    stakes[_7806].field_512 = 0
                    stakes[_7806].field_768 = 0
                    stakes[_7806].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_7806]:
                        sub_8c13bb07[address(msg.sender)][stor8[_7806]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_7806]
                    stor8[_7806] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _7806
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _7806
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = _7806
                mem[32] = 5
                stakes[_7806].field_768 = block.timestamp
                if arg1:
                    mem[0] = _7806
                    mem[32] = 5
                    _8000 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_8000] = stakes[_7806].field_0
                    mem[_8000 + 32] = stakes[_7806].field_256
                    mem[_8000 + 64] = bool(stakes[_7806].field_512)
                    mem[_8000 + 96] = stakes[_7806].field_768
                    mem[_8000 + 128] = bool(stakes[_7806].field_1024)
                    if stakes[_7806].field_0 != msg.sender:
                        revert with 0, 'You don't own this token'
                    stakes[_7806].field_0 = 0
                    stakes[_7806].field_256 = 0
                    stakes[_7806].field_512 = 0
                    stakes[_7806].field_768 = 0
                    stakes[_7806].field_1024 = 0
                    if sub_4b63a04b[address(msg.sender)] < 1:
                        revert with 0, 17
                    if sub_4b63a04b[address(msg.sender)] - 1 != stor8[_7806]:
                        sub_8c13bb07[address(msg.sender)][stor8[_7806]].field_0 = sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0
                        stor8[stor7[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0] = stor8[_7806]
                    stor8[_7806] = 0
                    sub_8c13bb07[address(msg.sender)][stor9[address(msg.sender)] - 1].field_0 = 0
                    mem[0] = msg.sender
                    mem[32] = 9
                    if not sub_4b63a04b[address(msg.sender)]:
                        revert with 0, 17
                    sub_4b63a04b[address(msg.sender)]--
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = _7806
                    require ext_code.size(address(stor1.length))
                    call address(stor1.length).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _7806
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((1927514 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000)
            t = t + (9686 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) - ((1927514 * 10^16 * block.timestamp - uint256(stor3[_7807]) / 24 * 3600) + 9999 / 10000)
            continue 
        if s > 0x2d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d82d8:
            revert with 0, 17
        if s < 90 * s / 100:
            revert with 0, 17
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = t
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, t
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7862 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7862] == bool(mem[_7862])
        mem[mem[64] + 4] = address(stor3.length)
        mem[mem[64] + 36] = 90 * s / 100
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor3.length), 90 * s / 100
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7890 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7890] == bool(mem[_7890])
        mem[mem[64] + 4] = address(stor4.length)
        mem[mem[64] + 36] = s - (90 * s / 100)
        require ext_code.size(address(stor2.length))
        call address(stor2.length).0xa9059cbb with:
             gas gas_remaining wei
            args address(stor4.length), s - (90 * s / 100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _7924 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_7924] == bool(mem[_7924])
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1152] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1184] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1216] = 0
    mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1248] = 96
    mem[var49002] = var49001
    if var49003 - 1:
        # nil
    else:
        if var113001 >= sub_4b63a04b[address(msg.sender)]:
            # nil
        else:
            if var113001 >= sub_4b63a04b[address(msg.sender)]:
                revert with 0, 'owner index out of bounds'
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1280] = sub_8c13bb07[address(msg.sender)][var113001].field_0
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1412] = sub_8c13bb07[address(msg.sender)][var113001].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][var113001].field_0
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1408] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1312] = 3657 * 10^16
            else:
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1312] = 9686 * 10^16
            mem[0] = sub_8c13bb07[address(msg.sender)][var113001].field_0
            mem[32] = 5
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + ceil32(return_data.size) + 1408] = stakes[stor7[address(msg.sender)][var113001].field_0].field_0
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + ceil32(return_data.size) + 1440] = stakes[stor7[address(msg.sender)][var113001].field_0].field_256
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + ceil32(return_data.size) + 1472] = bool(stakes[stor7[address(msg.sender)][var113001].field_0].field_512)
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + ceil32(return_data.size) + 1504] = stakes[stor7[address(msg.sender)][var113001].field_0].field_768
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + ceil32(return_data.size) + 1536] = bool(stakes[stor7[address(msg.sender)][var113001].field_0].field_1024)
            if not stakes[stor7[address(msg.sender)][var113001].field_0].field_1024:
                revert with 0, 'This token isn't staked'
            if block.timestamp < stakes[stor7[address(msg.sender)][var113001].field_0].field_768:
                revert with 0, 17
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + ceil32(return_data.size) + 1572] = sub_8c13bb07[address(msg.sender)][var113001].field_0
            require ext_code.size(address(stor1.length))
            staticcall address(stor1.length).0x711173fb with:
                    gas gas_remaining wei
                   args sub_8c13bb07[address(msg.sender)][var113001].field_0
            mem[(32 * sub_4b63a04b[address(msg.sender)]) + ceil32(return_data.size) + 1568] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                if block.timestamp - stakes[stor7[address(msg.sender)][var113001].field_0].field_768 / 24 * 3600 and 3657 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][var113001].field_0].field_768 / 24 * 3600:
                    revert with 0, 17
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1344] = 3657 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][var113001].field_0].field_768 / 24 * 3600
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1572] = sub_8c13bb07[address(msg.sender)][var113001].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][var113001].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + (4 * ceil32(return_data.size)) + 1568
                require return_data.size >= 32
                require mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 <= test266151307()
                require (32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1599 < (32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + return_data.size + 1568
                if mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568])) + 1 < 0 or (32 * sub_4b63a04b[address(msg.sender)]) + (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568])) + 1569 > test266151307():
                    revert with 0, 65
                require mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568] + 32 <= return_data.size
                # nil
            else:
                if block.timestamp - stakes[stor7[address(msg.sender)][var113001].field_0].field_768 / 24 * 3600 and 9686 * 10^16 > -1 / block.timestamp - stakes[stor7[address(msg.sender)][var113001].field_0].field_768 / 24 * 3600:
                    revert with 0, 17
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + 1344] = 9686 * 10^16 * block.timestamp - stakes[stor7[address(msg.sender)][var113001].field_0].field_768 / 24 * 3600
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1572] = sub_8c13bb07[address(msg.sender)][var113001].field_0
                require ext_code.size(address(stor1.length))
                staticcall address(stor1.length).tokenURI(uint256 arg1) with:
                        gas gas_remaining wei
                       args sub_8c13bb07[address(msg.sender)][var113001].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * sub_4b63a04b[address(msg.sender)]) + (4 * ceil32(return_data.size)) + 1568
                require return_data.size >= 32
                require mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 <= test266151307()
                require (32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1599 < (32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + return_data.size + 1568
                if mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568])) + 1 < 0 or (32 * sub_4b63a04b[address(msg.sender)]) + (4 * ceil32(return_data.size)) + ceil32(ceil32(mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568])) + 1569 > test266151307():
                    revert with 0, 65
                require mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + mem[(32 * sub_4b63a04b[address(msg.sender)]) + (2 * ceil32(return_data.size)) + 1568 len 4], sub_8c13bb07[address(msg.sender)][var113001].field_32 + 1568] + 32 <= return_data.size
                # nil
}



}
