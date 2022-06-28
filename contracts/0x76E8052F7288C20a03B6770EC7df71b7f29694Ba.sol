contract main {




// =====================  Runtime code  =====================


#
#  - sub_48e3ce10(?)
#  - _fallback()
#
address owner;
array of address stor1;
array of address sub_c105aa1b;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 sub_ef352bbe;
mapping of struct sub_00bd6ff9;
array of struct sub_4396cccb;

function sub_00bd6ff9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_00bd6ff9[arg1].field_0, 
           sub_00bd6ff9[arg1].field_256,
           sub_00bd6ff9[arg1].field_512,
           sub_00bd6ff9[arg1].field_768,
           bool(sub_00bd6ff9[arg1].field_1024),
           sub_00bd6ff9[arg1].field_1280,
           sub_00bd6ff9[arg1].field_1536
}

function sub_4396cccb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < sub_4396cccb[arg1].field_0
    return sub_4396cccb[arg1][arg2].field_0
}

function owner() {
    return owner
}

function sub_90e45d90(?) {
    return sub_c105aa1b.length
}

function sub_c105aa1b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_c105aa1b.length
    return sub_c105aa1b[arg1]
}

function DEV() {
    return stor1.length
}

function sub_ef352bbe(?) {
    return sub_ef352bbe
}

function sub_61339810(?) {
    return stor3, stor4, stor5, stor6, bool(stor7), stor8, stor9
}

function sub_ce831ed5(?) {
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    call stor1.length with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function checkUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < sub_c105aa1b.length:
        mem[0] = 2
        if sub_c105aa1b[idx] == arg1:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_9d9ca6e2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_4396cccb[address(arg1)].field_0:
        idx = 128
        s = 0
        while (32 * sub_4396cccb[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_4396cccb[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return sub_4396cccb[address(arg1)].field_0
}

function sub_e6be4a72(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1.length, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a56e6f38(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x97a3b584: msg.sender, arg2
}

function sub_3dbff2f0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x97a3b584: address(arg1), arg2
}

function sub_3ed0bc61(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You need to send at least some tokens'
    call address(arg2).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xfe50a5a0: msg.sender, address(this.address), arg1
}

function sub_96a33e8c(?) {
    if block.timestamp <= sub_00bd6ff9[msg.sender].field_1536:
        return msg.sender, 
               sub_00bd6ff9[msg.sender].field_0,
               sub_00bd6ff9[msg.sender].field_512,
               sub_00bd6ff9[msg.sender].field_768,
               sub_00bd6ff9[msg.sender].field_1280,
               sub_00bd6ff9[msg.sender].field_1536,
               bool(sub_00bd6ff9[msg.sender].field_1024)
    return msg.sender, 
           sub_00bd6ff9[msg.sender].field_0,
           sub_00bd6ff9[msg.sender].field_512,
           sub_00bd6ff9[msg.sender].field_768,
           sub_00bd6ff9[msg.sender].field_1280,
           sub_00bd6ff9[msg.sender].field_1536,
           0
}

function sub_f35a1dd1(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 4).length and cd[36] > -1 / ('cd', 4).length:
        revert with 0, 17
    return ('cd', 4).length, ('cd', 4).length * cd[36]
}

function sub_01210628(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        if bool(sub_00bd6ff9[msg.sender].field_1024) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only Owner and VIP users are allowed'
    if sub_4396cccb[address(arg1)].field_0:
        mem[128] = sub_4396cccb[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * sub_4396cccb[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = sub_4396cccb[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < sub_4396cccb[address(arg1)].field_0:
        if idx >= sub_4396cccb[address(arg1)].field_0:
            revert with 0, 50
        if address(arg2) == mem[(32 * idx) + 140 len 20]:
            return 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function ethSendSameValue(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    if arg1.length and arg2 > -1 / arg1.length:
        revert with 0, 17
    if arg1.length:
        if not arg1.length:
            revert with 0, 18
        require arg1.length * arg2 / arg1.length == arg2
    if msg.value < arg1.length * arg2:
        revert with 0, 'insuf balance'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        call mem[(32 * idx) + 140 len 20] with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with 0, 'failed to send'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x714a2add: msg.sender, msg.value
}

function sub_a0db4350(?) payable {
    require calldata.size - 4 >= 8224
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require 67 < calldata.size
    if not bool(ceil32(32 * ('cd', 4).length) + 8289 <= test266151307()):
        revert with 0, 65
    require 8228 <= calldata.size
    idx = 36
    s = ceil32(32 * ('cd', 4).length) + 97
    while idx < 8228:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    if msg.value < mem[ceil32(32 * ('cd', 4).length) + 97]:
        revert with 0, 'insuf balance'
    if mem[96] != 256:
        revert with 0, 'invalid input'
    idx = 0
    while idx < mem[96]:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= 256:
            revert with 0, 50
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 97] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0x714a2add: msg.sender, msg.value
}

function sub_cdfca7f2(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        s = 0
        while s < sub_c105aa1b.length:
            mem[0] = 2
            if sub_c105aa1b[s] != mem[(32 * idx) + 140 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= mem[96]:
            revert with 0, 50
        sub_c105aa1b.length++
        mem[0] = 2
        sub_c105aa1b[sub_c105aa1b.length] = mem[(32 * idx) + 140 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 97] = mem[(32 * idx) + 140 len 20]
        mem[ceil32(32 * ('cd', 4).length) + 129] = block.timestamp
        emit 0xe25a701b: mem[ceil32(32 * ('cd', 4).length) + 97], block.timestamp
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_eb53e9b6(?) payable {
    require calldata.size - 4 >= 32
    if sub_ef352bbe > -2:
        revert with 0, 17
    sub_ef352bbe++
    if 1 == arg1:
        if 24 * 3600 > !block.timestamp:
            revert with 0, 17
        if msg.value < 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must have minimum of 1BNB to subscribe'
        call this.address with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_00bd6ff9[address(msg.sender)].field_0 = sub_ef352bbe
        sub_00bd6ff9[address(msg.sender)].field_256 = msg.sender
        sub_00bd6ff9[address(msg.sender)].field_512 = arg1
        sub_00bd6ff9[address(msg.sender)].field_768 = msg.value
        sub_00bd6ff9[address(msg.sender)].field_1024 = 1
        sub_00bd6ff9[address(msg.sender)].field_1280 = block.timestamp
        sub_00bd6ff9[address(msg.sender)].field_1536 = block.timestamp + (24 * 3600)
        emit 0xb504ff0d: sub_ef352bbe, msg.sender, arg1, msg.value, block.timestamp, block.timestamp + (24 * 3600)
    else:
        if arg1 != 2:
            if 720 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            if msg.value < 4 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must have minimum of 4BNB to subscribe'
            call this.address with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_00bd6ff9[address(msg.sender)].field_0 = sub_ef352bbe
            sub_00bd6ff9[address(msg.sender)].field_256 = msg.sender
            sub_00bd6ff9[address(msg.sender)].field_512 = arg1
            sub_00bd6ff9[address(msg.sender)].field_768 = msg.value
            sub_00bd6ff9[address(msg.sender)].field_1024 = 1
            sub_00bd6ff9[address(msg.sender)].field_1280 = block.timestamp
            sub_00bd6ff9[address(msg.sender)].field_1536 = block.timestamp + (720 * 24 * 3600)
            emit 0xb504ff0d: sub_ef352bbe, msg.sender, arg1, msg.value, block.timestamp, block.timestamp + (720 * 24 * 3600)
        else:
            if 168 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            if msg.value < 2 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You must have minimum of 2BNB to subscribe'
            call this.address with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_00bd6ff9[address(msg.sender)].field_0 = sub_ef352bbe
            sub_00bd6ff9[address(msg.sender)].field_256 = msg.sender
            sub_00bd6ff9[address(msg.sender)].field_512 = arg1
            sub_00bd6ff9[address(msg.sender)].field_768 = msg.value
            sub_00bd6ff9[address(msg.sender)].field_1024 = 1
            sub_00bd6ff9[address(msg.sender)].field_1280 = block.timestamp
            sub_00bd6ff9[address(msg.sender)].field_1536 = block.timestamp + (168 * 24 * 3600)
            emit 0xb504ff0d: sub_ef352bbe, msg.sender, arg1, msg.value, block.timestamp, block.timestamp + (168 * 24 * 3600)
}

function sub_848da830(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 36).length) + 129
    idx = cd[68] + 36
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    if ('cd', 68).length != ('cd', 36).length:
        revert with 0, 'invalid input'
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = this.address
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 134] = 0
    call address(cd[4]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 0
    mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _84 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _87 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(_84)
        mem[mem[64] + 68] = _87
        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(_84), _87
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _90 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_90] == bool(mem[_90])
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        if 0 > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
            revert with 0, 17
        require mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] >= 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit 0xfe50a5a0: address(cd[4]), msg.sender, 0
}

function sub_c8fa4544(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    if arg2 < 1:
        revert with 0, 17
    if arg3 < 1:
        revert with 0, 17
    if arg3 < arg2:
        revert with 0, 17
    if arg3 - arg2 and arg4 > -1 / arg3 - arg2:
        revert with 0, 17
    if not arg3 - arg2:
        mem[100] = this.address
        mem[132] = (arg3 * arg4) - (arg2 * arg4)
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (arg3 * arg4) - (arg2 * arg4)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = arg2 - 1
        while idx < arg3 - 1:
            if idx >= sub_c105aa1b.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_c105aa1b[idx]
            mem[mem[64] + 68] = arg4
            call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), sub_c105aa1b[idx], arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_43] == bool(mem[_43])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if not arg3 - arg2:
            revert with 0, 18
        require (arg3 * arg4) - (arg2 * arg4) / arg3 - arg2 == arg4
        mem[100] = this.address
        mem[132] = (arg3 * arg4) - (arg2 * arg4)
        call address(arg1).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (arg3 * arg4) - (arg2 * arg4)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = arg2 - 1
        while idx < arg3 - 1:
            if idx >= sub_c105aa1b.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_c105aa1b[idx]
            mem[mem[64] + 68] = arg4
            call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), sub_c105aa1b[idx], arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _44 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_44] == bool(mem[_44])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    emit 0xfe50a5a0: address(arg1), address(this.address), (arg3 * arg4) - (arg2 * arg4)
}

function sub_16167600(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    if ('cd', 36).length and cd[68] > -1 / ('cd', 36).length:
        revert with 0, 17
    if not ('cd', 36).length:
        if ('cd', 36).length * cd[68] > !cd[68]:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 36).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 36).length) + 133] = (('cd', 36).length * cd[68]) + cd[68]
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (('cd', 36).length * cd[68]) + cd[68]
        mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = (('cd', 36).length * cd[68]) + cd[68]
        emit 0x97a3b584: msg.sender, (('cd', 36).length * cd[68]) + cd[68]
        if var62001 < 1:
            revert with 0, 17
        if var66002 >= var66001:
            emit 0xfe50a5a0: address(cd[4]), msg.sender, (('cd', 36).length * cd[68]) + cd[68]
        if var68001 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[var72001] = msg.sender
        mem[var72001 + 32] = address(var72003)
        mem[var72001 + 64] = cd[68]
        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 101 len var74001 + -ceil32(32 * ('cd', 36).length) + -ceil32(return_data.size) - 101]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97
        require var78002 - var78001 >= 32
        require mem[var80002] == bool(mem[var80002])
        if var86001 == -1:
            revert with 0, 17
        if var94001 < 1:
            revert with 0, 17
        # nil
    else:
        if not ('cd', 36).length:
            revert with 0, 18
        require ('cd', 36).length * cd[68] / ('cd', 36).length == cd[68]
        if ('cd', 36).length * cd[68] > !cd[68]:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 36).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 36).length) + 133] = (('cd', 36).length * cd[68]) + cd[68]
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (('cd', 36).length * cd[68]) + cd[68]
        mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = (('cd', 36).length * cd[68]) + cd[68]
        emit 0x97a3b584: msg.sender, (('cd', 36).length * cd[68]) + cd[68]
        if var66001 < 1:
            revert with 0, 17
        if var70002 >= var70001:
            emit 0xfe50a5a0: address(cd[4]), msg.sender, (('cd', 36).length * cd[68]) + cd[68]
        if var72001 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[var76001] = msg.sender
        mem[var76001 + 32] = address(var76003)
        mem[var76001 + 64] = cd[68]
        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 101 len var78001 + -ceil32(32 * ('cd', 36).length) + -ceil32(return_data.size) - 101]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97
        require var82002 - var82001 >= 32
        require mem[var84002] == bool(mem[var84002])
        if var90001 == -1:
            revert with 0, 17
        if var98001 < 1:
            revert with 0, 17
        # nil
}

function sub_7d533ff9(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Only Owner is allowed'
    if ('cd', 36).length and cd[68] > -1 / ('cd', 36).length:
        revert with 0, 17
    if not ('cd', 36).length:
        if ('cd', 36).length * cd[68] > !cd[68]:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 36).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 36).length) + 133] = (('cd', 36).length * cd[68]) + cd[68]
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (('cd', 36).length * cd[68]) + cd[68]
        mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = (('cd', 36).length * cd[68]) + cd[68]
        emit 0x97a3b584: address(this.address), (('cd', 36).length * cd[68]) + cd[68]
        if var62001 < 1:
            revert with 0, 17
        if var66002 >= var66001:
            emit 0xfe50a5a0: address(cd[4]), address(this.address), (('cd', 36).length * cd[68]) + cd[68]
        if var68001 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[var72001] = this.address
        mem[var72001 + 32] = address(var72003)
        mem[var72001 + 64] = cd[68]
        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 101 len var74001 + -ceil32(32 * ('cd', 36).length) + -ceil32(return_data.size) - 101]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97
        require var78002 - var78001 >= 32
        require mem[var80002] == bool(mem[var80002])
        if var86001 == -1:
            revert with 0, 17
        if var94001 < 1:
            revert with 0, 17
        # nil
    else:
        if not ('cd', 36).length:
            revert with 0, 18
        require ('cd', 36).length * cd[68] / ('cd', 36).length == cd[68]
        if ('cd', 36).length * cd[68] > !cd[68]:
            revert with 0, 17
        mem[ceil32(32 * ('cd', 36).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 36).length) + 133] = (('cd', 36).length * cd[68]) + cd[68]
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), (('cd', 36).length * cd[68]) + cd[68]
        mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = (('cd', 36).length * cd[68]) + cd[68]
        emit 0x97a3b584: address(this.address), (('cd', 36).length * cd[68]) + cd[68]
        if var66001 < 1:
            revert with 0, 17
        if var70002 >= var70001:
            emit 0xfe50a5a0: address(cd[4]), address(this.address), (('cd', 36).length * cd[68]) + cd[68]
        if var72001 >= ('cd', 36).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[var76001] = this.address
        mem[var76001 + 32] = address(var76003)
        mem[var76001 + 64] = cd[68]
        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 101 len var78001 + -ceil32(32 * ('cd', 36).length) + -ceil32(return_data.size) - 101]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + (2 * ceil32(return_data.size)) + 97
        require var82002 - var82001 >= 32
        require mem[var84002] == bool(mem[var84002])
        if var90001 == -1:
            revert with 0, 17
        if var98001 < 1:
            revert with 0, 17
        # nil
}

function sub_96a5fd47(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if msg.sender == owner:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _164 = mem[(32 * idx) + 128]
            if msg.sender == owner:
                mem[0] = msg.sender
                mem[32] = 12
                _169 = mem[64]
                mem[64] = mem[64] + (32 * sub_4396cccb[address(msg.sender)].field_0) + 32
                mem[_169] = sub_4396cccb[address(msg.sender)].field_0
                if sub_4396cccb[address(msg.sender)].field_0:
                    mem[_169 + 32] = sub_4396cccb[address(msg.sender)].field_0
                    s = _169 + 32
                    t = sha3(sha3(address(msg.sender), 12))
                    while _169 + (32 * sub_4396cccb[address(msg.sender)].field_0) > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                s = 0
                while s < sub_4396cccb[address(msg.sender)].field_0:
                    if s >= sub_4396cccb[address(msg.sender)].field_0:
                        revert with 0, 50
                    if address(_164) != mem[(32 * s) + _169 + 44 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if bool(sub_00bd6ff9[msg.sender].field_1024) != 1:
                    revert with 0, 'Only Owner and VIP users are allowed'
                mem[0] = msg.sender
                mem[32] = 12
                _174 = mem[64]
                mem[64] = mem[64] + (32 * sub_4396cccb[address(msg.sender)].field_0) + 32
                mem[_174] = sub_4396cccb[address(msg.sender)].field_0
                if sub_4396cccb[address(msg.sender)].field_0:
                    mem[_174 + 32] = sub_4396cccb[address(msg.sender)].field_0
                    s = _174 + 32
                    t = sha3(sha3(address(msg.sender), 12))
                    while _174 + (32 * sub_4396cccb[address(msg.sender)].field_0) > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                s = 0
                while s < sub_4396cccb[address(msg.sender)].field_0:
                    if s >= sub_4396cccb[address(msg.sender)].field_0:
                        revert with 0, 50
                    if address(_164) != mem[(32 * s) + _174 + 44 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            mem[32] = 12
            if idx >= mem[96]:
                revert with 0, 50
            sub_4396cccb[address(msg.sender)].field_0++
            sub_4396cccb[address(msg.sender)][sub_4396cccb[address(msg.sender)].field_0].field_0 = mem[(32 * idx) + 140 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            s = 0
            while s < sub_c105aa1b.length:
                mem[0] = 2
                if sub_c105aa1b[s] != mem[(32 * idx) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            sub_c105aa1b.length++
            mem[0] = 2
            sub_c105aa1b[sub_c105aa1b.length] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[32] = 11
        if bool(sub_00bd6ff9[msg.sender].field_1024) != 1:
            revert with 0, 'Only Owner and VIP users are allowed'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _165 = mem[(32 * idx) + 128]
            if msg.sender == owner:
                mem[0] = msg.sender
                mem[32] = 12
                _171 = mem[64]
                mem[64] = mem[64] + (32 * sub_4396cccb[address(msg.sender)].field_0) + 32
                mem[_171] = sub_4396cccb[address(msg.sender)].field_0
                if sub_4396cccb[address(msg.sender)].field_0:
                    mem[_171 + 32] = sub_4396cccb[address(msg.sender)].field_0
                    s = _171 + 32
                    t = sha3(sha3(address(msg.sender), 12))
                    while _171 + (32 * sub_4396cccb[address(msg.sender)].field_0) > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                s = 0
                while s < sub_4396cccb[address(msg.sender)].field_0:
                    if s >= sub_4396cccb[address(msg.sender)].field_0:
                        revert with 0, 50
                    if address(_165) != mem[(32 * s) + _171 + 44 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                if bool(sub_00bd6ff9[msg.sender].field_1024) != 1:
                    revert with 0, 'Only Owner and VIP users are allowed'
                mem[0] = msg.sender
                mem[32] = 12
                _178 = mem[64]
                mem[64] = mem[64] + (32 * sub_4396cccb[address(msg.sender)].field_0) + 32
                mem[_178] = sub_4396cccb[address(msg.sender)].field_0
                if sub_4396cccb[address(msg.sender)].field_0:
                    mem[_178 + 32] = sub_4396cccb[address(msg.sender)].field_0
                    s = _178 + 32
                    t = sha3(sha3(address(msg.sender), 12))
                    while _178 + (32 * sub_4396cccb[address(msg.sender)].field_0) > s:
                        mem[s + 32] = stor1[t]
                        s = s + 32
                        t = t + 1
                        continue 
                s = 0
                while s < sub_4396cccb[address(msg.sender)].field_0:
                    if s >= sub_4396cccb[address(msg.sender)].field_0:
                        revert with 0, 50
                    if address(_165) != mem[(32 * s) + _178 + 44 len 20]:
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            mem[32] = 12
            if idx >= mem[96]:
                revert with 0, 50
            sub_4396cccb[address(msg.sender)].field_0++
            sub_4396cccb[address(msg.sender)][sub_4396cccb[address(msg.sender)].field_0].field_0 = mem[(32 * idx) + 140 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            s = 0
            while s < sub_c105aa1b.length:
                mem[0] = 2
                if sub_c105aa1b[s] != mem[(32 * idx) + 140 len 20]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if idx >= mem[96]:
                revert with 0, 50
            sub_c105aa1b.length++
            mem[0] = 2
            sub_c105aa1b[sub_c105aa1b.length] = mem[(32 * idx) + 140 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_889715c8(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = ceil32(32 * ('cd', 36).length) + 129
    idx = cd[68] + 36
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if msg.sender == owner:
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            continue 
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = this.address
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 134] = s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130] = s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        emit 0x97a3b584: address(this.address), s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        if var73001 < 1:
            revert with 0, 17
        if var77002 >= var77001:
            emit 0xfe50a5a0: address(cd[4]), address(this.address), var77004
        if var79001 >= ('cd', 36).length:
            revert with 0, 50
        if var81006 >= ('cd', 68).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[var85001] = this.address
        mem[var85001 + 32] = address(var85003)
        mem[var85001 + 64] = var85002
        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 102 len var87001 + -ceil32(32 * ('cd', 36).length) + -ceil32(32 * ('cd', 68).length) + -ceil32(return_data.size) - 102]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 98
        require var91002 - var91001 >= 32
        require mem[var93002] == bool(mem[var93002])
        if var97002 >= ('cd', 68).length:
            revert with 0, 50
        if var101001 < var101002:
            revert with 0, 17
        # nil
    else:
        mem[32] = 11
        if bool(sub_00bd6ff9[msg.sender].field_1024) != 1:
            revert with 0, 'Only Owner and VIP users are allowed'
        idx = 0
        s = 0
        while idx < ('cd', 68).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            continue 
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = this.address
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 134] = s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        call address(cd[4]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[0] = msg.sender
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 130] = s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        emit 0x97a3b584: address(this.address), s * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length * ('cd', 68).length
        if var74001 < 1:
            revert with 0, 17
        if var78002 >= var78001:
            emit 0xfe50a5a0: address(cd[4]), address(this.address), var78004
        if var80001 >= ('cd', 36).length:
            revert with 0, 50
        if var82006 >= ('cd', 68).length:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[var86001] = this.address
        mem[var86001 + 32] = address(var86003)
        mem[var86001 + 64] = var86002
        call address(cd[4]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 102 len var88001 + -ceil32(32 * ('cd', 36).length) + -ceil32(32 * ('cd', 68).length) + -ceil32(return_data.size) - 102]
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(return_data.size)) + 98
        require var92002 - var92001 >= 32
        require mem[var94002] == bool(mem[var94002])
        if var98002 >= ('cd', 68).length:
            revert with 0, 50
        if var102001 < var102002:
            revert with 0, 17
        # nil
}



}
