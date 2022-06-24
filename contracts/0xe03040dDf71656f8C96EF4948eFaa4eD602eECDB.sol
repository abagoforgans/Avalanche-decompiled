contract main {




// =====================  Runtime code  =====================


const sub_3ab1d470(?) = 2


address owner;
address devAddress;
address sub_94eaecbfAddress;
address sub_2619e2d0Address;
address sub_9c191ee5Address;
uint256 stor5; offset 2
uint256 stor5; offset 1
uint256 sub_4d4722f6;
uint8 sub_6ac597b0;
uint8 maxRacers; offset 8
uint8 sub_906f98ea; offset 16
uint256 sub_03433090;
uint256 epochId;
uint256 raceId;
uint8 sub_16574568;
uint256 sub_fa8b538b;
uint256 sub_f9611424;
uint256 sub_5ee9a235;
uint8 stor14;
uint8 stor14; offset 8
uint8 stor14; offset 16
uint8 stor14; offset 24
uint16 sub_dcd02e80;
uint16 sub_ffb3a7e0; offset 16
uint256 sub_0b9c393a;
mapping of struct sub_94783397;
array of address sub_65a55314;
mapping of uint8 stor18;
mapping of struct sub_cef1fbb7;
array of uint256 sub_61613e3f;
mapping of uint256 sub_0966eb75;
array of address sub_367394d2;
mapping of uint8 stor23;
mapping of struct sub_f0e7cccd;

function sub_03433090(?) payable {
    return sub_03433090
}

function maxRacers() payable {
    return maxRacers
}

function sub_0966eb75(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_0966eb75[arg1][arg2]
}

function sub_0b9c393a(?) payable {
    return sub_0b9c393a
}

function sub_16574568(?) payable {
    return sub_16574568
}

function sub_2619e2d0(?) payable {
    return sub_2619e2d0Address
}

function sub_367394d2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(sub_367394d2[arg1])
}

function devAddress() payable {
    return devAddress
}

function sub_4d4722f6(?) payable {
    return sub_4d4722f6
}

function sub_5ee9a235(?) payable {
    return sub_5ee9a235
}

function sub_61613e3f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_61613e3f[arg1]
}

function sub_65a55314(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(sub_65a55314[arg1])
    return address(sub_65a55314[arg1][arg2])
}

function sub_6ac597b0(?) payable {
    return sub_6ac597b0
}

function sub_7d8ffb6f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < sub_61613e3f[arg1]
    return sub_61613e3f[arg1][arg2]
}

function owner() payable {
    return owner
}

function sub_906f98ea(?) payable {
    return sub_906f98ea
}

function sub_94783397(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_94783397[arg1].field_0, sub_94783397[arg1].field_256, sub_94783397[arg1].field_512, sub_94783397[arg1].field_768
}

function sub_94eaecbf(?) payable {
    return sub_94eaecbfAddress
}

function sub_9ba15309(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(sub_367394d2[arg1])
    return address(sub_367394d2[arg1][arg2])
}

function sub_9c191ee5(?) payable {
    return sub_9c191ee5Address
}

function epochId() payable {
    return epochId
}

function sub_b3281b2b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor18[arg1][arg2])
}

function sub_bb33ac70(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return bool(stor23[arg1][arg2])
}

function sub_cef1fbb7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_cef1fbb7[arg1][arg2].field_0, 
           sub_cef1fbb7[arg1][arg2].field_0,
           sub_cef1fbb7[arg1][arg2].field_0,
           sub_cef1fbb7[arg1][arg2].field_0,
           sub_cef1fbb7[arg1][arg2].field_256
}

function sub_dcd02e80(?) payable {
    return sub_dcd02e80
}

function raceId() payable {
    return raceId
}

function sub_f0e7cccd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_f0e7cccd[arg1].field_0, 
           sub_f0e7cccd[arg1].field_256,
           sub_f0e7cccd[arg1].field_512,
           sub_f0e7cccd[arg1].field_768,
           sub_f0e7cccd[arg1].field_1024,
           sub_f0e7cccd[arg1].field_1280,
           sub_f0e7cccd[arg1].field_1536
}

function sub_f9611424(?) payable {
    return sub_f9611424
}

function sub_fa8b538b(?) payable {
    return sub_fa8b538b
}

function sub_ffb3a7e0(?) payable {
    return sub_ffb3a7e0
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

function sub_1584eae8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0b9c393a = arg1
}

function sub_59fe9967(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f9611424 = arg1
}

function sub_635f72e0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4d4722f6 = arg1
}

function sub_bb47ad78(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03433090 = arg1
}

function sub_e519b27b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fa8b538b = arg1
}

function setMaxRacers(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxRacers = arg1
}

function sub_05046c5a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6ac597b0 = uint8(arg1)
}

function sub_3fec283a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor14.field_0) = uint8(arg1)
    uint8(stor14.field_8) = 0
}

function sub_d7225732(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor14.field_16) = uint8(arg1)
    uint8(stor14.field_24) = 0
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

function sub_06201c87(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_16574568:
        revert with 0, 'Race status not 0 (pending)'
    if epochId > -2:
        revert with 'NH{q', 17
    epochId++
    if raceId > -2:
        revert with 'NH{q', 17
    raceId++
    sub_61613e3f[stor8]++
    sub_61613e3f[stor8][sub_61613e3f[stor8]] = raceId
    sub_906f98ea = uint8(arg1)
    sub_03433090 = arg2
    sub_94783397[stor9].field_0 = raceId
    sub_94783397[stor9].field_256 = block.timestamp
    sub_94783397[stor9].field_512 = 0
    sub_94783397[stor9].field_768 = 0
    sub_16574568 = 1
}

function sub_324e97b9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= epochId:
        if arg1 != epochId:
            revert with 0, 'Epoch not finished.'
        if sub_16574568:
            revert with 0, 'Epoch not finished.'
    idx = 0
    s = 0
    t = 0
    while idx < uint256(sub_367394d2[arg1]):
        if idx >= uint256(sub_367394d2[arg1]):
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 22
        if sub_0966eb75[arg1][address(stor22[arg1][idx])] > s:
            idx = idx + 1
            s = sub_0966eb75[arg1][address(stor22[arg1][idx])]
            t = address(sub_367394d2[arg1][idx])
            continue 
        idx = idx + 1
        s = s
        t = t
        continue 
    return address(t), 0, 0
}

function sub_0aa23eb4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= raceId:
        if raceId != arg1:
            revert with 0, 'Race not finished.'
        if sub_16574568:
            revert with 0, 'Race not finished.'
    idx = 0
    s = 0
    t = 0
    while idx < uint256(sub_65a55314[arg1]):
        if idx >= uint256(sub_65a55314[arg1]):
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 17
        if sub_cef1fbb7[arg1][address(stor17[arg1][idx])].field_256 > s:
            idx = idx + 1
            s = sub_cef1fbb7[arg1][address(stor17[arg1][idx])].field_256
            t = address(sub_65a55314[arg1][idx])
            continue 
        idx = idx + 1
        s = s
        t = t
        continue 
    return address(t), 0, 0
}

function signUp() payable {
    if sub_16574568 != 1:
        revert with 0, 'Race status not 1 (signups).'
    if sub_94783397[stor9].field_768 >= maxRacers:
        revert with 0, 'All places already filled.'
    require ext_code.size(sub_9c191ee5Address)
    staticcall sub_9c191ee5Address.0xe37ef631 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < sub_906f98ea:
        revert with 0, 'Minted balance lower then required.'
    require ext_code.size(sub_2619e2d0Address)
    call sub_2619e2d0Address.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), sub_4d4722f6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Payment failed.'
    idx = 0
    while idx < uint256(sub_65a55314[stor9]):
        if idx >= uint256(sub_65a55314[stor9]):
            revert with 'NH{q', 50
        if address(sub_65a55314[stor9][idx]) == msg.sender:
            revert with 0, 'User already signed up to this race.'
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = raceId
        mem[32] = 17
        idx = idx + 1
        continue 
    uint256(sub_65a55314[stor9])++
    address(sub_65a55314[stor9][uint256(sub_65a55314[stor9])]) = msg.sender
    if sub_94783397[stor9].field_768 > -2:
        revert with 'NH{q', 17
    sub_94783397[stor9].field_768++
    if bool(stor23[stor8][address(msg.sender)]) != 1:
        stor23[stor8][address(msg.sender)] = 1
        uint256(sub_367394d2[stor8])++
        address(sub_367394d2[stor8][uint256(sub_367394d2[stor8])]) = msg.sender
    if block.number < 1:
        revert with 'NH{q', 17
    if sub_ffb3a7e0 < sub_dcd02e80:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    if sub_ffb3a7e0 < sub_dcd02e80:
        revert with 'NH{q', 17
    require ext_code.size(sub_9c191ee5Address)
    staticcall sub_9c191ee5Address.0xe37ef631 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.number < 1:
        revert with 'NH{q', 17
    if sub_ffb3a7e0 < sub_dcd02e80:
        revert with 'NH{q', 17
    if block.number < 1:
        revert with 'NH{q', 17
    # nil
}

function sub_39614efd(?) payable {
    if sub_16574568 != 2:
        revert with 0, 'Race status not 2 (racing).'
    if sub_94783397[stor9].field_512 > -sub_f9611424 - 1:
        revert with 'NH{q', 17
    if sub_94783397[stor9].field_512 + sub_f9611424 > -sub_5ee9a235 - 1:
        revert with 'NH{q', 17
    if sub_94783397[stor9].field_512 + sub_f9611424 + sub_5ee9a235 > block.timestamp:
        revert with 0, 'Race not finished yet.'
    idx = 0
    s = 0
    t = 0
    while idx < uint256(sub_65a55314[stor9]):
        if idx >= uint256(sub_65a55314[stor9]):
            revert with 'NH{q', 50
        if sub_0966eb75[stor8][address(stor17[stor9][idx])] > -sub_cef1fbb7[stor9][address(stor17[stor9][idx])].field_256 - 1:
            revert with 'NH{q', 17
        sub_0966eb75[stor8][address(stor17[stor9][idx])] += sub_cef1fbb7[stor9][address(stor17[stor9][idx])].field_256
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = raceId
        mem[32] = 17
        if sub_0966eb75[stor8][address(stor17[stor9][idx])] <= t:
            idx = idx + 1
            s = s
            t = t
            continue 
        idx = idx + 1
        s = address(sub_65a55314[stor9][idx])
        t = sub_0966eb75[stor8][address(stor17[stor9][idx])]
        continue 
    idx = 0
    s = 0
    u = 0
    while idx < uint256(sub_65a55314[stor9]):
        if idx >= uint256(sub_65a55314[stor9]):
            revert with 'NH{q', 50
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = raceId
        mem[32] = 17
        if sub_cef1fbb7[stor9][address(stor17[stor9][idx])].field_256 > s:
            idx = idx + 1
            s = sub_cef1fbb7[stor9][address(stor17[stor9][idx])].field_256
            u = address(sub_65a55314[stor9][idx])
            continue 
        idx = idx + 1
        s = s
        u = u
        continue 
    require ext_code.size(sub_2619e2d0Address)
    staticcall sub_2619e2d0Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_2619e2d0Address)
    call sub_2619e2d0Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(u), sub_4d4722f6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_2619e2d0Address)
    call sub_2619e2d0Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, uint255(stor5.field_1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_2619e2d0Address)
    call sub_2619e2d0Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, Mask(254, 0, stor5.field_2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and 2 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    if 2 * ext_call.return_data[0] > -100:
        revert with 'NH{q', 17
    require ext_code.size(sub_2619e2d0Address)
    call sub_2619e2d0Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args devAddress, (2 * ext_call.return_data[0]) + 99 / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_2619e2d0Address)
    staticcall sub_2619e2d0Address.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_2619e2d0Address)
    call sub_2619e2d0Address.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_94eaecbfAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if t >= sub_03433090:
        sub_16574568 = 0
    else:
        sub_16574568 = 1
        if raceId > -2:
            revert with 'NH{q', 17
        raceId++
        sub_61613e3f[stor8]++
        sub_61613e3f[stor8][sub_61613e3f[stor8]] = raceId
        sub_94783397[stor9].field_0 = raceId
        sub_94783397[stor9].field_256 = block.timestamp
        sub_94783397[stor9].field_512 = 0
        sub_94783397[stor9].field_768 = 0
}



}
