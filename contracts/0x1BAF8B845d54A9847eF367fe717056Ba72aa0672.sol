contract main {




// =====================  Runtime code  =====================


#
#  - sub_3472b34f(?)
#  - feedAll()
#
uint8 stor0;
uint8 stor0; offset 8
address owner;
address sub_62a096ccAddress;
address eggAddress;
uint8 stor103; offset 160
address feedAddress;
address feeReceiverAddress;
uint256 stor104;
array of struct stor105;
mapping of uint256 stor106;

function feed() payable {
    return feedAddress
}

function sub_62a096cc(?) payable {
    return sub_62a096ccAddress
}

function owner() payable {
    return owner
}

function feeReceiver() payable {
    return address(feeReceiverAddress)
}

function egg() payable {
    return eggAddress
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

function getFee() payable {
    staticcall address(feeReceiverAddress).fee() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_695b5390(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor103:
        staticcall feedAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(feedAddress)
        call feedAddress.0x88c00a58 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor103 = 0
        staticcall feedAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
    require return_data.size >= 32
    call feedAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x6f4e0195: ext_call.return_data[0], msg.sender
}

function sub_5d7737de(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0xa5b65da700000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = 32
    require ext_code.size(eggAddress)
    call eggAddress.0xa5b65da7 with:
         gas gas_remaining wei
        args Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall eggAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    require return_data.size >= 32
    call eggAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0x5f405061: ext_call.return_data[0], msg.sender
}

function init(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if sub_62a096ccAddress:
            revert with 0, 'already initialized'
        if not uint8(stor0.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        sub_62a096ccAddress = arg1
        eggAddress = arg2
        feedAddress = arg3
        uint256(stor104) = msg.sender or Mask(96, 160, uint256(stor104))
    else:
        if uint8(stor0.field_0) >= 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        if sub_62a096ccAddress:
            revert with 0, 'already initialized'
        if not uint8(stor0.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        sub_62a096ccAddress = arg1
        eggAddress = arg2
        feedAddress = arg3
        uint256(stor104) = msg.sender or Mask(96, 160, uint256(stor104))
        uint8(stor0.field_8) = 0
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        if stor106[cd[((32 * idx) + arg1 + 36)]]:
            revert with 0, 'Invalid chiknId'
        stor105.length++
        stor105[stor105.length].field_0 = cd[((32 * idx) + arg1 + 36)]
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 106
        stor106[cd[((32 * idx) + arg1 + 36)]] = stor105.length
        if idx >= arg1.length:
            revert with 0, 50
        mem[132] = this.address
        mem[164] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(sub_62a096ccAddress)
        call sub_62a096ccAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= arg1.length:
            revert with 0, 50
        mem[96] = cd[((32 * idx) + arg1 + 36)]
        mem[128] = msg.sender
        emit Deposit(cd[((32 * idx) + arg1 + 36)], msg.sender);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require arg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ext_code.size(eggAddress)
    call eggAddress.stake(uint256[] arg1) with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len 32 * arg1.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_683b7d2d(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require (32 * ('cd', 4).length) + cd[4] + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < (32 * ('cd', 4).length) + cd[4] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        if not stor106[mem[(32 * idx) + 128]]:
            revert with 0, 'Invalid chiknId'
        if stor106[mem[(32 * idx) + 128]] < 1:
            revert with 0, 17
        if stor105.length < 1:
            revert with 0, 17
        if stor105.length - 1 == stor106[mem[(32 * idx) + 128]] - 1:
            if not stor105.length:
                revert with 0, 49
            stor105[stor105.length].field_0 = 0
            stor105.length--
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 106
            stor106[mem[(32 * idx) + 128]] = 0
            if idx >= mem[96]:
                revert with 0, 50
            _78 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
            mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
            mem[ceil32(32 * ('cd', 4).length) + 165] = _78
            require ext_code.size(sub_62a096ccAddress)
            call sub_62a096ccAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _78
        else:
            if stor105.length - 1 >= stor105.length:
                revert with 0, 50
            if stor106[mem[(32 * idx) + 128]] - 1 >= stor105.length:
                revert with 0, 50
            stor105[stor106[mem[(32 * idx) + 128]]].field_0 = stor105[stor105.length].field_0
            stor106[stor105[stor105.length].field_0] = stor106[mem[(32 * idx) + 128]]
            if not stor105.length:
                revert with 0, 49
            stor105[stor105.length].field_0 = 0
            stor105.length--
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 106
            stor106[mem[(32 * idx) + 128]] = 0
            if idx >= mem[96]:
                revert with 0, 50
            _85 = mem[(32 * idx) + 128]
            mem[ceil32(32 * ('cd', 4).length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
            mem[ceil32(32 * ('cd', 4).length) + 133] = msg.sender
            mem[ceil32(32 * ('cd', 4).length) + 165] = _85
            require ext_code.size(sub_62a096ccAddress)
            call sub_62a096ccAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, _85
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 0, 50
        mem[ceil32(32 * ('cd', 4).length) + 97] = mem[(32 * idx) + 128]
        mem[ceil32(32 * ('cd', 4).length) + 129] = msg.sender
        emit 0x31242168: mem[ceil32(32 * ('cd', 4).length) + 97], msg.sender
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function withdraw(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor103:
        mem[ceil32(32 * arg1.length) + 101] = this.address
        staticcall feedAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 101] = msg.sender
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 133] = ext_call.return_data[0]
        call feedAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x6f4e0195: ext_call.return_data[0], msg.sender
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 97] = 0xa5b65da700000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 101] = 32
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 133] = arg1.length
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 165 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
        require ext_code.size(eggAddress)
        call eggAddress.0xa5b65da7 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 101] = this.address
        staticcall eggAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        require return_data.size >= 32
        mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 101] = msg.sender
        mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
        call eggAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 129] = msg.sender
        emit 0x5f405061: ext_call.return_data[0], msg.sender
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            if not stor106[mem[(32 * idx) + 128]]:
                revert with 0, 'Invalid chiknId'
            if stor106[mem[(32 * idx) + 128]] < 1:
                revert with 0, 17
            if stor105.length < 1:
                revert with 0, 17
            if stor105.length - 1 == stor106[mem[(32 * idx) + 128]] - 1:
                if not stor105.length:
                    revert with 0, 49
                stor105[stor105.length].field_0 = 0
                stor105.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 106
                stor106[mem[(32 * idx) + 128]] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                _352 = mem[(32 * idx) + 128]
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 101] = this.address
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 165] = _352
                require ext_code.size(sub_62a096ccAddress)
                call sub_62a096ccAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _352
            else:
                if stor105.length - 1 >= stor105.length:
                    revert with 0, 50
                if stor106[mem[(32 * idx) + 128]] - 1 >= stor105.length:
                    revert with 0, 50
                stor105[stor106[mem[(32 * idx) + 128]]].field_0 = stor105[stor105.length].field_0
                stor106[stor105[stor105.length].field_0] = stor106[mem[(32 * idx) + 128]]
                if not stor105.length:
                    revert with 0, 49
                stor105[stor105.length].field_0 = 0
                stor105.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 106
                stor106[mem[(32 * idx) + 128]] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                _364 = mem[(32 * idx) + 128]
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 101] = this.address
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 165] = _364
                require ext_code.size(sub_62a096ccAddress)
                call sub_62a096ccAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _364
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 0, 50
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = mem[(32 * idx) + 128]
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 129] = msg.sender
            emit 0x31242168: mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97], msg.sender
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        require ext_code.size(feedAddress)
        call feedAddress.0x88c00a58 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor103 = 0
        mem[ceil32(32 * arg1.length) + 101] = this.address
        staticcall feedAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * arg1.length) + 97] = ext_call.return_data[0]
        require return_data.size >= 32
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 101] = msg.sender
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 133] = ext_call.return_data[0]
        call feedAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[ceil32(32 * arg1.length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit 0x6f4e0195: ext_call.return_data[0], msg.sender
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 97] = 0xa5b65da700000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 101] = 32
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 133] = arg1.length
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 165 len 32 * arg1.length] = mem[128 len 32 * arg1.length]
        require ext_code.size(eggAddress)
        call eggAddress.0xa5b65da7 with:
             gas gas_remaining wei
            args Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 101] = this.address
        staticcall eggAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * arg1.length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        require return_data.size >= 32
        mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 101] = msg.sender
        mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 133] = ext_call.return_data[0]
        call eggAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[ceil32(32 * arg1.length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
        mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 129] = msg.sender
        emit 0x5f405061: ext_call.return_data[0], msg.sender
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        idx = 0
        while idx < arg1.length:
            if idx >= mem[96]:
                revert with 0, 50
            if not stor106[mem[(32 * idx) + 128]]:
                revert with 0, 'Invalid chiknId'
            if stor106[mem[(32 * idx) + 128]] < 1:
                revert with 0, 17
            if stor105.length < 1:
                revert with 0, 17
            if stor105.length - 1 == stor106[mem[(32 * idx) + 128]] - 1:
                if not stor105.length:
                    revert with 0, 49
                stor105[stor105.length].field_0 = 0
                stor105.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 106
                stor106[mem[(32 * idx) + 128]] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                _355 = mem[(32 * idx) + 128]
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 101] = this.address
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 165] = _355
                require ext_code.size(sub_62a096ccAddress)
                call sub_62a096ccAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _355
            else:
                if stor105.length - 1 >= stor105.length:
                    revert with 0, 50
                if stor106[mem[(32 * idx) + 128]] - 1 >= stor105.length:
                    revert with 0, 50
                stor105[stor106[mem[(32 * idx) + 128]]].field_0 = stor105[stor105.length].field_0
                stor106[stor105[stor105.length].field_0] = stor106[mem[(32 * idx) + 128]]
                if not stor105.length:
                    revert with 0, 49
                stor105[stor105.length].field_0 = 0
                stor105.length--
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 106
                stor106[mem[(32 * idx) + 128]] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                _369 = mem[(32 * idx) + 128]
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 101] = this.address
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 133] = msg.sender
                mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 165] = _369
                require ext_code.size(sub_62a096ccAddress)
                call sub_62a096ccAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, _369
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx >= mem[96]:
                revert with 0, 50
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97] = mem[(32 * idx) + 128]
            mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 129] = msg.sender
            emit 0x31242168: mem[ceil32(32 * arg1.length) + (6 * ceil32(return_data.size)) + 97], msg.sender
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function withdrawAll() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor105.length:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not stor103:
            mem[(32 * stor105.length) + 132] = this.address
            staticcall feedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * stor105.length) + ceil32(return_data.size) + 132] = msg.sender
            mem[(32 * stor105.length) + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            call feedAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x6f4e0195: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = 0xa5b65da700000000000000000000000000000000000000000000000000000000
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132] = 32
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 164] = stor105.length
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 196 len 32 * stor105.length] = mem[128 len 32 * stor105.length]
            require ext_code.size(eggAddress)
            call eggAddress.0xa5b65da7 with:
                 gas gas_remaining wei
                args mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132 len (96 * stor105.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132] = this.address
            staticcall eggAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            require return_data.size >= 32
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            call eggAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
            emit 0x5f405061: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 0
            while idx < stor105.length:
                if idx >= stor105.length:
                    revert with 0, 50
                if not stor106[mem[(32 * idx) + 128]]:
                    revert with 0, 'Invalid chiknId'
                if stor106[mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if stor105.length < 1:
                    revert with 0, 17
                if stor105.length - 1 == stor106[mem[(32 * idx) + 128]] - 1:
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _259 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _259
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _259
                else:
                    if stor105.length - 1 >= stor105.length:
                        revert with 0, 50
                    if stor106[mem[(32 * idx) + 128]] - 1 >= stor105.length:
                        revert with 0, 50
                    stor105[stor106[mem[(32 * idx) + 128]]].field_0 = stor105[stor105.length].field_0
                    stor106[stor105[stor105.length].field_0] = stor106[mem[(32 * idx) + 128]]
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _277 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _277
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _277
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= stor105.length:
                    revert with 0, 50
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = mem[(32 * idx) + 128]
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
                emit 0x31242168: mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128], msg.sender
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            require ext_code.size(feedAddress)
            call feedAddress.0x88c00a58 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor103 = 0
            mem[(32 * stor105.length) + 132] = this.address
            staticcall feedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + 128] = ext_call.return_data[0]
            require return_data.size >= 32
            mem[(32 * stor105.length) + ceil32(return_data.size) + 132] = msg.sender
            mem[(32 * stor105.length) + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            call feedAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x6f4e0195: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = 0xa5b65da700000000000000000000000000000000000000000000000000000000
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132] = 32
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 164] = stor105.length
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 196 len 32 * stor105.length] = mem[128 len 32 * stor105.length]
            require ext_code.size(eggAddress)
            call eggAddress.0xa5b65da7 with:
                 gas gas_remaining wei
                args mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132 len (96 * stor105.length) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132] = this.address
            staticcall eggAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            require return_data.size >= 32
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            call eggAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
            emit 0x5f405061: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 0
            while idx < stor105.length:
                if idx >= stor105.length:
                    revert with 0, 50
                if not stor106[mem[(32 * idx) + 128]]:
                    revert with 0, 'Invalid chiknId'
                if stor106[mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if stor105.length < 1:
                    revert with 0, 17
                if stor105.length - 1 == stor106[mem[(32 * idx) + 128]] - 1:
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _262 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _262
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _262
                else:
                    if stor105.length - 1 >= stor105.length:
                        revert with 0, 50
                    if stor106[mem[(32 * idx) + 128]] - 1 >= stor105.length:
                        revert with 0, 50
                    stor105[stor106[mem[(32 * idx) + 128]]].field_0 = stor105[stor105.length].field_0
                    stor106[stor105[stor105.length].field_0] = stor106[mem[(32 * idx) + 128]]
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _282 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _282
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _282
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= stor105.length:
                    revert with 0, 50
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = mem[(32 * idx) + 128]
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
                emit 0x31242168: mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128], msg.sender
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        mem[128] = uint256(stor105.field_0)
        idx = 128
        s = 0
        while (32 * stor105.length) + 96 > idx:
            mem[idx + 32] = stor105[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not stor103:
            mem[(32 * stor105.length) + 132] = this.address
            staticcall feedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * stor105.length) + ceil32(return_data.size) + 132] = msg.sender
            mem[(32 * stor105.length) + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            call feedAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x6f4e0195: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = 0xa5b65da700000000000000000000000000000000000000000000000000000000
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 164] = stor105.length
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 196 len 32 * stor105.length] = mem[128 len 32 * stor105.length]
            require ext_code.size(eggAddress)
            call eggAddress.0xa5b65da7 with:
                 gas gas_remaining wei
                args Array(len=stor105.length, data=mem[128 len 32 * stor105.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132] = this.address
            staticcall eggAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            require return_data.size >= 32
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            call eggAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
            emit 0x5f405061: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 0
            while idx < stor105.length:
                if idx >= stor105.length:
                    revert with 0, 50
                if not stor106[mem[(32 * idx) + 128]]:
                    revert with 0, 'Invalid chiknId'
                if stor106[mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if stor105.length < 1:
                    revert with 0, 17
                if stor105.length - 1 == stor106[mem[(32 * idx) + 128]] - 1:
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _499 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _499
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _499
                else:
                    if stor105.length - 1 >= stor105.length:
                        revert with 0, 50
                    if stor106[mem[(32 * idx) + 128]] - 1 >= stor105.length:
                        revert with 0, 50
                    stor105[stor106[mem[(32 * idx) + 128]]].field_0 = stor105[stor105.length].field_0
                    stor106[stor105[stor105.length].field_0] = stor106[mem[(32 * idx) + 128]]
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _511 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _511
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _511
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= stor105.length:
                    revert with 0, 50
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = mem[(32 * idx) + 128]
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
                emit 0x31242168: mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128], msg.sender
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            require ext_code.size(feedAddress)
            call feedAddress.0x88c00a58 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            stor103 = 0
            mem[(32 * stor105.length) + 132] = this.address
            staticcall feedAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + 128] = ext_call.return_data[0]
            require return_data.size >= 32
            mem[(32 * stor105.length) + ceil32(return_data.size) + 132] = msg.sender
            mem[(32 * stor105.length) + ceil32(return_data.size) + 164] = ext_call.return_data[0]
            call feedAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit 0x6f4e0195: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = 0xa5b65da700000000000000000000000000000000000000000000000000000000
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 164] = stor105.length
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 196 len 32 * stor105.length] = mem[128 len 32 * stor105.length]
            require ext_code.size(eggAddress)
            call eggAddress.0xa5b65da7 with:
                 gas gas_remaining wei
                args Array(len=stor105.length, data=mem[128 len 32 * stor105.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 132] = this.address
            staticcall eggAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(32 * stor105.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            require return_data.size >= 32
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            call eggAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            mem[(32 * stor105.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
            emit 0x5f405061: ext_call.return_data[0], msg.sender
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            idx = 0
            while idx < stor105.length:
                if idx >= stor105.length:
                    revert with 0, 50
                if not stor106[mem[(32 * idx) + 128]]:
                    revert with 0, 'Invalid chiknId'
                if stor106[mem[(32 * idx) + 128]] < 1:
                    revert with 0, 17
                if stor105.length < 1:
                    revert with 0, 17
                if stor105.length - 1 == stor106[mem[(32 * idx) + 128]] - 1:
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _502 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _502
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _502
                else:
                    if stor105.length - 1 >= stor105.length:
                        revert with 0, 50
                    if stor106[mem[(32 * idx) + 128]] - 1 >= stor105.length:
                        revert with 0, 50
                    stor105[stor106[mem[(32 * idx) + 128]]].field_0 = stor105[stor105.length].field_0
                    stor106[stor105[stor105.length].field_0] = stor106[mem[(32 * idx) + 128]]
                    if not stor105.length:
                        revert with 0, 49
                    stor105[stor105.length].field_0 = 0
                    stor105.length--
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 106
                    stor106[mem[(32 * idx) + 128]] = 0
                    if idx >= stor105.length:
                        revert with 0, 50
                    _516 = mem[(32 * idx) + 128]
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 132] = this.address
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 164] = msg.sender
                    mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 196] = _516
                    require ext_code.size(sub_62a096ccAddress)
                    call sub_62a096ccAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _516
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= stor105.length:
                    revert with 0, 50
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128] = mem[(32 * idx) + 128]
                mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 160] = msg.sender
                emit 0x31242168: mem[(32 * stor105.length) + (6 * ceil32(return_data.size)) + 128], msg.sender
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}
