contract main {




// =====================  Runtime code  =====================


const sub_96f76455(?) = 40555150 * 10^18


uint8 paused; offset 160
address owner;
address stor1;
address stor2;
mapping of struct realOwner;
uint256 sub_451502c9;
uint256 sub_2f3b5e4e;
uint256 sub_0410c6fa;
uint256 lastClaimTimestamp;
uint8 stor8;

function sub_0410c6fa(?) payable {
    return sub_0410c6fa
}

function sub_2f3b5e4e(?) payable {
    return sub_2f3b5e4e
}

function rescueEnabled() payable {
    return bool(stor8)
}

function sub_451502c9(?) payable {
    return sub_451502c9
}

function getRealOwner(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return realOwner[arg1].field_96
}

function paused() payable {
    return bool(paused)
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function owner() payable {
    return owner
}

function sub_d12399e9(?) payable {
    require calldata.size - 4 >= 32
    return realOwner[arg1].field_0, realOwner[arg1].field_0, realOwner[arg1].field_96
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

function sub_0249b628(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_451502c9 = arg1
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = uint8(arg1)
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

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not paused:
            revert with 0, 'Pausable: not paused'
        paused = 0
        emit Unpaused(msg.sender);
    else:
        if paused:
            revert with 0, 'Pausable: paused'
        paused = 1
        emit Paused(msg.sender);
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to Barn directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not stor8:
        revert with 0, 'RESCUE DISABLED'
    require msg.sender == tx.origin
    mem[64] = 192
    idx = 0
    s = 96
    s = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 3
        _14 = mem[64]
        mem[64] = mem[64] + 96
        mem[_14] = realOwner[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_14 + 32] = realOwner[cd[((32 * idx) + arg1 + 36)]].field_16
        mem[_14 + 64] = realOwner[cd[((32 * idx) + arg1 + 36)]].field_96
        if realOwner[cd[((32 * idx) + arg1 + 36)]].field_96 != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 3
        realOwner[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
        if sub_0410c6fa < 1:
            revert with 0, 17
        sub_0410c6fa--
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 100] = 128
        mem[mem[64] + 132] = 0
        require ext_code.size(stor1)
        call stor1.0xb88d4fde with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0xd6a51526: cd[((32 * idx) + arg1 + 36)], 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _14
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
}

function sub_ef8868b7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if msg.sender == address(cd[4]):
        require msg.sender == tx.origin
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == stor1:
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if sub_2f3b5e4e >= 40555150 * 10^18:
                        _93 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_93] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_93 + 32] = Mask(80, 0, block.timestamp)
                        mem[_93 + 64] = address(cd[4])
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and sub_0410c6fa > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa) and sub_451502c9 > -1 / (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa):
                            revert with 0, 17
                        if sub_2f3b5e4e > !((block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600):
                            revert with 0, 17
                        sub_2f3b5e4e += (block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        _119 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_119] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_119 + 32] = Mask(80, 0, block.timestamp)
                        mem[_119 + 64] = address(cd[4])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                    if sub_0410c6fa > -2:
                        revert with 0, 17
                    sub_0410c6fa++
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _87 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_87] == mem[_87 + 12 len 20]
                if mem[_87 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if paused:
                    revert with 0, 'Pausable: paused'
                if sub_2f3b5e4e >= 40555150 * 10^18:
                    _124 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_124] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_124 + 32] = Mask(80, 0, block.timestamp)
                    mem[_124 + 64] = address(cd[4])
                else:
                    if block.timestamp < lastClaimTimestamp:
                        revert with 0, 17
                    if block.timestamp - lastClaimTimestamp and sub_0410c6fa > -1 / block.timestamp - lastClaimTimestamp:
                        revert with 0, 17
                    if (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa) and sub_451502c9 > -1 / (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa):
                        revert with 0, 17
                    if sub_2f3b5e4e > !((block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600):
                        revert with 0, 17
                    sub_2f3b5e4e += (block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600
                    lastClaimTimestamp = block.timestamp
                    _149 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_149] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_149 + 32] = Mask(80, 0, block.timestamp)
                    mem[_149 + 64] = address(cd[4])
                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 3
                realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                if sub_0410c6fa > -2:
                    revert with 0, 17
                sub_0410c6fa++
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 64] = block.timestamp
                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        require msg.sender == tx.origin
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if msg.sender == stor1:
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if paused:
                        revert with 0, 'Pausable: paused'
                    if sub_2f3b5e4e >= 40555150 * 10^18:
                        _99 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_99] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_99 + 32] = Mask(80, 0, block.timestamp)
                        mem[_99 + 64] = address(cd[4])
                    else:
                        if block.timestamp < lastClaimTimestamp:
                            revert with 0, 17
                        if block.timestamp - lastClaimTimestamp and sub_0410c6fa > -1 / block.timestamp - lastClaimTimestamp:
                            revert with 0, 17
                        if (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa) and sub_451502c9 > -1 / (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa):
                            revert with 0, 17
                        if sub_2f3b5e4e > !((block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600):
                            revert with 0, 17
                        sub_2f3b5e4e += (block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600
                        lastClaimTimestamp = block.timestamp
                        _129 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_129] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_129 + 32] = Mask(80, 0, block.timestamp)
                        mem[_129 + 64] = address(cd[4])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                    if sub_0410c6fa > -2:
                        revert with 0, 17
                    sub_0410c6fa++
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[36] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _88 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_88] == mem[_88 + 12 len 20]
                if mem[_88 + 12 len 20] != msg.sender:
                    revert with 0, 'AINT YO TOKEN'
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if paused:
                    revert with 0, 'Pausable: paused'
                if sub_2f3b5e4e >= 40555150 * 10^18:
                    _134 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_134] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_134 + 32] = Mask(80, 0, block.timestamp)
                    mem[_134 + 64] = address(cd[4])
                else:
                    if block.timestamp < lastClaimTimestamp:
                        revert with 0, 17
                    if block.timestamp - lastClaimTimestamp and sub_0410c6fa > -1 / block.timestamp - lastClaimTimestamp:
                        revert with 0, 17
                    if (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa) and sub_451502c9 > -1 / (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa):
                        revert with 0, 17
                    if sub_2f3b5e4e > !((block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600):
                        revert with 0, 17
                    sub_2f3b5e4e += (block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600
                    lastClaimTimestamp = block.timestamp
                    _154 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_154] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_154 + 32] = Mask(80, 0, block.timestamp)
                    mem[_154 + 64] = address(cd[4])
                mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 3
                realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                realOwner[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                if sub_0410c6fa > -2:
                    revert with 0, 17
                sub_0410c6fa++
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 64] = block.timestamp
                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function sub_bade9108(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if paused:
        revert with 0, 'Pausable: paused'
    if sub_2f3b5e4e >= 40555150 * 10^18:
        require msg.sender == tx.origin
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 3
            _124 = mem[64]
            mem[64] = mem[64] + 96
            mem[_124] = realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
            mem[_124 + 32] = realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
            mem[_124 + 64] = realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
            if realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            if sub_2f3b5e4e < 40555150 * 10^18:
                if block.timestamp < realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                    revert with 0, 17
                if block.timestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_451502c9 > -1 / block.timestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                    revert with 0, 17
                if not cd[36]:
                    _171 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_171] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_171 + 32] = Mask(80, 0, block.timestamp)
                    mem[_171 + 64] = msg.sender
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                else:
                    _172 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_172] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_172 + 32] = Mask(80, 0, block.timestamp)
                    mem[_172 + 64] = msg.sender
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                    if sub_0410c6fa < 1:
                        revert with 0, 17
                    sub_0410c6fa--
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600
                mem[mem[64] + 64] = bool(cd[36])
                emit 0xd6a51526: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600, bool(cd[36])
                if s > !((block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600)
                continue 
            if realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 > lastClaimTimestamp:
                if not cd[36]:
                    _137 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_137] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_137 + 32] = Mask(80, 0, block.timestamp)
                    mem[_137 + 64] = msg.sender
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                else:
                    _138 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_138] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_138 + 32] = Mask(80, 0, block.timestamp)
                    mem[_138 + 64] = msg.sender
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                    if sub_0410c6fa < 1:
                        revert with 0, 17
                    sub_0410c6fa--
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = bool(cd[36])
                emit 0xd6a51526: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if lastClaimTimestamp < realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                revert with 0, 17
            if lastClaimTimestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_451502c9 > -1 / lastClaimTimestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                revert with 0, 17
            if not cd[36]:
                _175 = mem[64]
                mem[64] = mem[64] + 96
                mem[_175] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[_175 + 32] = Mask(80, 0, block.timestamp)
                mem[_175 + 64] = msg.sender
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
            else:
                _176 = mem[64]
                mem[64] = mem[64] + 96
                mem[_176] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[_176 + 32] = Mask(80, 0, block.timestamp)
                mem[_176 + 64] = msg.sender
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                if sub_0410c6fa < 1:
                    revert with 0, 17
                sub_0410c6fa--
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                require ext_code.size(stor1)
                call stor1.0xb88d4fde with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 32] = (lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600
            mem[mem[64] + 64] = bool(cd[36])
            emit 0xd6a51526: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600, bool(cd[36])
            if s > !((lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600)
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 0, 17
        if block.timestamp - lastClaimTimestamp and sub_0410c6fa > -1 / block.timestamp - lastClaimTimestamp:
            revert with 0, 17
        if (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa) and sub_451502c9 > -1 / (block.timestamp * sub_0410c6fa) - (lastClaimTimestamp * sub_0410c6fa):
            revert with 0, 17
        if sub_2f3b5e4e > !((block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600):
            revert with 0, 17
        sub_2f3b5e4e += (block.timestamp * sub_0410c6fa * sub_451502c9) - (lastClaimTimestamp * sub_0410c6fa * sub_451502c9) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        require msg.sender == tx.origin
        idx = 0
        s = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 3
            _126 = mem[64]
            mem[64] = mem[64] + 96
            mem[_126] = realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
            mem[_126 + 32] = realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
            mem[_126 + 64] = realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
            if realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            if sub_2f3b5e4e < 40555150 * 10^18:
                if block.timestamp < realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                    revert with 0, 17
                if block.timestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_451502c9 > -1 / block.timestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                    revert with 0, 17
                if not cd[36]:
                    _173 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_173] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_173 + 32] = Mask(80, 0, block.timestamp)
                    mem[_173 + 64] = msg.sender
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                else:
                    _174 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_174] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_174 + 32] = Mask(80, 0, block.timestamp)
                    mem[_174 + 64] = msg.sender
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                    if sub_0410c6fa < 1:
                        revert with 0, 17
                    sub_0410c6fa--
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600
                mem[mem[64] + 64] = bool(cd[36])
                emit 0xd6a51526: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600, bool(cd[36])
                if s > !((block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + ((block.timestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600)
                continue 
            if realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 > lastClaimTimestamp:
                if not cd[36]:
                    _139 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_139] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_139 + 32] = Mask(80, 0, block.timestamp)
                    mem[_139 + 64] = msg.sender
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                else:
                    _140 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_140] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_140 + 32] = Mask(80, 0, block.timestamp)
                    mem[_140 + 64] = msg.sender
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                    if sub_0410c6fa < 1:
                        revert with 0, 17
                    sub_0410c6fa--
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 100] = 128
                    mem[mem[64] + 132] = 0
                    require ext_code.size(stor1)
                    call stor1.0xb88d4fde with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 3
                    realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = bool(cd[36])
                emit 0xd6a51526: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if lastClaimTimestamp < realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                revert with 0, 17
            if lastClaimTimestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_451502c9 > -1 / lastClaimTimestamp - realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                revert with 0, 17
            if not cd[36]:
                _185 = mem[64]
                mem[64] = mem[64] + 96
                mem[_185] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[_185 + 32] = Mask(80, 0, block.timestamp)
                mem[_185 + 64] = msg.sender
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
            else:
                _186 = mem[64]
                mem[64] = mem[64] + 96
                mem[_186] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[_186 + 32] = Mask(80, 0, block.timestamp)
                mem[_186 + 64] = msg.sender
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                if sub_0410c6fa < 1:
                    revert with 0, 17
                sub_0410c6fa--
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 100] = 128
                mem[mem[64] + 132] = 0
                require ext_code.size(stor1)
                call stor1.0xb88d4fde with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + cd[4] + 36)] << 240, 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 32] = (lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600
            mem[mem[64] + 64] = bool(cd[36])
            emit 0xd6a51526: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600, bool(cd[36])
            if s > !((lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + ((lastClaimTimestamp * sub_451502c9) - (realOwner[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_451502c9) / 24 * 3600)
            continue 
    if s:
        require ext_code.size(stor2)
        call stor2.mint(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
