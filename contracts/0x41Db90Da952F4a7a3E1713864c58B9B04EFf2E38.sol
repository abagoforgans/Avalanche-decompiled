contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address stor1;
array of uint256 sub_fc1f7442;
uint8 stor11;
array of uint256 stor12;
array of uint256 stor13;
array of uint256 stor14;
mapping of struct fighters;
mapping of uint256 sub_8b222a3d;
address stor2;
uint256 sub_2739cf1c;
uint256 sub_6827428f;
uint256 sub_d37e59fd;
uint256 sub_a0e99fcb;
uint256 sub_0cbcbd2f;
array of uint256 sub_48a8f0dd;

function sub_07b1b52e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(fighters[stor16[address(arg1)]].field_768)
}

function sub_0cbcbd2f(?) payable {
    return sub_0cbcbd2f
}

function sub_23aa41e0(?) payable {
    return bool(stor11)
}

function sub_2739cf1c(?) payable {
    return sub_2739cf1c
}

function fighters(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return fighters[arg1].field_0, 
           fighters[arg1].field_256,
           fighters[arg1].field_256,
           fighters[arg1].field_256,
           fighters[arg1].field_432,
           fighters[arg1].field_512,
           bool(fighters[arg1].field_768),
           bool(fighters[arg1].field_776),
           fighters[arg1].field_1024,
           fighters[arg1].field_1280
}

function strength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor13.length
    return strength[uint8(arg1)]
}

function speeds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor14.length
    return speeds[uint8(arg1)]
}

function sub_48a8f0dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_48a8f0dd.length
    return sub_48a8f0dd[arg1]
}

function paused() payable {
    return bool(stor0)
}

function sub_6827428f(?) payable {
    return sub_6827428f
}

function sub_74123a08(?) payable {
    return sub_48a8f0dd.length
}

function sub_8b222a3d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_8b222a3d[arg1]
}

function sub_8d59d88b(?) payable {
    require calldata.size - 4 >= 32
    return bool(fighters[arg1].field_776)
}

function owner() payable {
    return owner
}

function sub_8ea1f9d0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor12.length
    return sub_8ea1f9d0[uint8(arg1)]
}

function sub_93df91ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(fighters[stor16[address(arg1)]].field_768)
}

function sub_a0e99fcb(?) payable {
    return sub_a0e99fcb
}

function sub_d37e59fd(?) payable {
    return sub_d37e59fd
}

function sub_fc1f7442(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_fc1f7442.length
    return sub_fc1f7442[arg1]
}

function _fallback() payable {
    revert
}

function sub_578a9bd0(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = 0
}

function sub_e1b5a2cb(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = 1
}

function sub_29acc3c3(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6827428f = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function random(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_6827428f == -1:
        revert with 0, 17
    sub_6827428f++
    if not arg1:
        revert with 0, 18
    return (sha3(sub_6827428f) % arg1)
}

function sub_78a4e56f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    sub_d37e59fd = 10^18 * arg1
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

function sub_4fe20990(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor13.length++
        mem[0] = 13
        stor13[stor13.length.field_5].field_0 = stor13[stor13.length.field_5].field_0 and !(255 * 256^stor13.length % 32) or 256^stor13.length % 32 * mem[(32 * idx) + 159 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_6e107b3c(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor14.length++
        mem[0] = 14
        stor14[stor14.length.field_5].field_0 = stor14[stor14.length.field_5].field_0 and !(255 * 256^stor14.length % 32) or 256^stor14.length % 32 * mem[(32 * idx) + 159 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8c72c2e3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        require cd[idx] == uint8(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        stor12.length++
        mem[0] = 12
        stor12[stor12.length.field_5].field_0 = stor12[stor12.length.field_5].field_0 and !(255 * 256^stor12.length % 32) or 256^stor12.length % 32 * mem[(32 * idx) + 159 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_090b89d9(?) payable {
    if fighters[stor16[msg.sender]].field_256 != msg.sender:
        revert with 0, 'Is not your SeaMan'
    if fighters[stor16[msg.sender]].field_768:
        if sub_0cbcbd2f < 1:
            revert with 0, 17
        sub_0cbcbd2f--
        if sub_a0e99fcb < fighters[stor16[msg.sender]].field_1024:
            revert with 0, 17
        sub_a0e99fcb -= fighters[stor16[msg.sender]].field_1024
        idx = 0
        while idx < sub_48a8f0dd.length:
            mem[0] = 8
            if sub_48a8f0dd[idx] == sub_8b222a3d[msg.sender]:
                if idx >= sub_48a8f0dd.length:
                    revert with 0, 50
                if sub_48a8f0dd.length < 1:
                    revert with 0, 17
                if sub_48a8f0dd.length - 1 >= sub_48a8f0dd.length:
                    revert with 0, 50
                if idx >= sub_48a8f0dd.length:
                    revert with 0, 50
                sub_48a8f0dd[idx] = sub_48a8f0dd[sub_48a8f0dd.length]
                if sub_48a8f0dd.length < 1:
                    revert with 0, 17
                if sub_48a8f0dd.length - 1 >= sub_48a8f0dd.length:
                    revert with 0, 50
                sub_48a8f0dd[sub_48a8f0dd.length] = sub_48a8f0dd[idx]
                if not sub_48a8f0dd.length:
                    revert with 0, 49
                mem[0] = 8
                sub_48a8f0dd[sub_48a8f0dd.length] = 0
                sub_48a8f0dd.length--
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), fighters[stor16[msg.sender]].field_256, sub_8b222a3d[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.approve(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), fighters[stor16[msg.sender]].field_256, fighters[stor16[msg.sender]].field_1024
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args fighters[stor16[msg.sender]].field_256, fighters[stor16[msg.sender]].field_1024
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xc43a096b: fighters[stor16[msg.sender]].field_0, fighters[stor16[msg.sender]].field_1024, fighters[stor16[msg.sender]].field_1280
    fighters[stor16[msg.sender]].field_0 = 0
    fighters[stor16[msg.sender]].field_256 = 0
    fighters[stor16[msg.sender]].field_512 = 0
    fighters[stor16[msg.sender]].field_768 = 0
    fighters[stor16[msg.sender]].field_1024 = 0
    fighters[stor16[msg.sender]].field_1280 = 0
    sub_8b222a3d[msg.sender] = 0
    if sub_2739cf1c < 1:
        revert with 0, 17
    sub_2739cf1c--
}

function sub_7980c8dd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not stor11:
        revert with 0, 'Pvp is close!'
    if address(arg1) != msg.sender:
        revert with 0, 'It's no account'
    if sub_8b222a3d[msg.sender]:
        revert with 0, 'One soldier at a time'
    if 10^18 * arg3 < sub_d37e59fd:
        revert with 0, 'Sorry below the entry price'
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * arg3:
        revert with 0, 'Sorry you don't have the necessary funds'
    staticcall stor2.0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != address(arg1):
        revert with 0, 'AINT YOUR TOKEN'
    require ext_code.size(stor1)
    call stor1.approve(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg3
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor2)
    call stor2.approve(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_8b222a3d[address(arg1)] = arg2
    if 1 >= sub_48a8f0dd.length:
        if sub_a0e99fcb > !(10^18 * arg3):
            revert with 0, 17
        sub_a0e99fcb += 10^18 * arg3
        if sub_2739cf1c > -2:
            revert with 0, 17
        sub_2739cf1c++
        if sub_0cbcbd2f > -2:
            revert with 0, 17
        sub_0cbcbd2f++
        sub_48a8f0dd.length++
        sub_48a8f0dd[sub_48a8f0dd.length] = arg2
        if arg2 < 1:
            revert with 0, 17
        if arg2 - 1 >= stor12.length:
            revert with 0, 50
        if arg2 < 1:
            revert with 0, 17
        if arg2 - 1 >= stor13.length:
            revert with 0, 50
        if arg2 < 1:
            revert with 0, 17
        if arg2 - 1 >= stor14.length:
            revert with 0, 50
        fighters[arg2].field_0 = arg2
        fighters[arg2].field_256 = address(arg1)
        fighters[arg2].field_416 = stor('array', ('div', 0.03125, ('add', -1, ('param', 'arg2'))), ('name', 'stor12', 12))[uint8(arg2 - 1)]
        fighters[arg2].field_424 = stor('array', ('div', 0.03125, ('add', -1, ('param', 'arg2'))), ('name', 'stor13', 13))[uint8(arg2 - 1)]
        fighters[arg2].field_432 = stor('array', ('div', 0.03125, ('add', -1, ('param', 'arg2'))), ('name', 'stor14', 14))[uint8(arg2 - 1)]
        fighters[arg2].field_512 = block.timestamp
        fighters[arg2].field_768 = 1
        fighters[arg2].field_776 = 0
        fighters[arg2].field_784 = 0
        fighters[arg2].field_1024 = 10^18 * arg3
        fighters[arg2].field_1280 = 0
        return fighters[arg2].field_0, 
               fighters[arg2].field_256,
               fighters[arg2].field_256,
               fighters[arg2].field_256,
               fighters[arg2].field_256,
               fighters[arg2].field_512,
               bool(fighters[arg2].field_768),
               bool(fighters[arg2].field_776),
               fighters[arg2].field_1024,
               fighters[arg2].field_1280
    if arg2 < 1:
        revert with 0, 17
    if arg2 - 1 >= stor12.length:
        revert with 0, 50
    if arg2 < 1:
        revert with 0, 17
    if arg2 - 1 >= stor13.length:
        revert with 0, 50
    if arg2 < 1:
        revert with 0, 17
    if arg2 - 1 >= stor14.length:
        revert with 0, 50
    fighters[arg2].field_0 = arg2
    fighters[arg2].field_256 = address(arg1)
    fighters[arg2].field_416 = stor('array', ('div', 0.03125, ('add', -1, ('param', 'arg2'))), ('name', 'stor12', 12))[uint8(arg2 - 1)]
    fighters[arg2].field_424 = stor('array', ('div', 0.03125, ('add', -1, ('param', 'arg2'))), ('name', 'stor13', 13))[uint8(arg2 - 1)]
    fighters[arg2].field_432 = stor('array', ('div', 0.03125, ('add', -1, ('param', 'arg2'))), ('name', 'stor14', 14))[uint8(arg2 - 1)]
    fighters[arg2].field_512 = block.timestamp
    fighters[arg2].field_768 = 1
    fighters[arg2].field_776 = 0
    fighters[arg2].field_784 = 0
    fighters[arg2].field_1024 = 10^18 * arg3
    fighters[arg2].field_1280 = 0
    if sub_2739cf1c > -2:
        revert with 0, 17
    sub_2739cf1c++
    if sub_6827428f == -1:
        revert with 0, 17
    sub_6827428f++
    if not sub_48a8f0dd.length:
        revert with 0, 18
    if sha3(sub_6827428f) % sub_48a8f0dd.length >= sub_48a8f0dd.length:
        revert with 0, 50
    idx = 0
    while idx < sub_48a8f0dd.length:
        mem[0] = 8
        if sub_48a8f0dd[idx] == fighters[stor8[sha3(stor4) % stor8.length]].field_0:
            if idx >= sub_48a8f0dd.length:
                revert with 0, 50
            if sub_48a8f0dd.length < 1:
                revert with 0, 17
            if sub_48a8f0dd.length - 1 >= sub_48a8f0dd.length:
                revert with 0, 50
            if idx >= sub_48a8f0dd.length:
                revert with 0, 50
            sub_48a8f0dd[idx] = sub_48a8f0dd[sub_48a8f0dd.length]
            if sub_48a8f0dd.length < 1:
                revert with 0, 17
            if sub_48a8f0dd.length - 1 >= sub_48a8f0dd.length:
                revert with 0, 50
            sub_48a8f0dd[sub_48a8f0dd.length] = sub_48a8f0dd[idx]
            if not sub_48a8f0dd.length:
                revert with 0, 49
            mem[0] = 8
            sub_48a8f0dd[sub_48a8f0dd.length] = 0
            sub_48a8f0dd.length--
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    fighters[fighters[arg2].field_0].field_1280 = fighters[stor8[sha3(stor4) % stor8.length]].field_0
    fighters[fighters[stor8[sha3(stor4) % stor8.length]].field_0].field_1280 = fighters[arg2].field_0
    if sub_0cbcbd2f < 1:
        revert with 0, 17
    sub_0cbcbd2f--
    # nil
}



}
