contract main {




// =====================  Runtime code  =====================


const sub_537fd522(?) = 5000000 * 10^18

const sub_80dfb534(?) = 20

const MAX_ALPHA = 8


uint8 stor0; offset 160
address owner;
address stor1;
mapping of struct sub_c48afc6b;
mapping of struct pack;
mapping of uint256 packIndices;
uint256 sub_786de4b8;
uint256 unaccountedRewards;
uint128 stor8;
uint256 sub_d6d6b467;
uint256 sub_1f0868ca;
uint256 MINIMUM_TO_EXIT;
uint256 sub_7f7451e9;
uint256 sub_337df05d;
uint256 lastClaimTimestamp;
uint8 rescueEnabled;
uint8 stor14; offset 8

function sub_1f0868ca(?) payable {
    return sub_1f0868ca
}

function sub_337df05d(?) payable {
    return sub_337df05d
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function rescueEnabled() payable {
    return bool(rescueEnabled)
}

function paused() payable {
    return bool(stor0)
}

function lastClaimTimestamp() payable {
    return lastClaimTimestamp
}

function pack(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return pack[arg1].field_0, pack[arg1].field_0, pack[arg1].field_96
}

function packIndices(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return packIndices[arg1]
}

function sub_786de4b8(?) payable {
    return sub_786de4b8
}

function sub_7f7451e9(?) payable {
    return sub_7f7451e9
}

function owner() payable {
    return owner
}

function unaccountedRewards() payable {
    return unaccountedRewards
}

function sub_c48afc6b(?) payable {
    require calldata.size - 4 >= 32
    return sub_c48afc6b[arg1].field_0, sub_c48afc6b[arg1].field_0, sub_c48afc6b[arg1].field_96
}

function sub_d6d6b467(?) payable {
    return uint256(sub_d6d6b467)
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

function sub_d02d53ee(?) payable {
    require calldata.size - 4 >= 32
    if 0 == sub_786de4b8:
        return 0
    if not sub_786de4b8:
        revert with 0, 18
    return pack[arg1 % stor6].field_96
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rescueEnabled = uint8(arg1)
}

function setSettings(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MINIMUM_TO_EXIT = arg2
    sub_1f0868ca = arg1
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
        if not stor0:
            revert with 0, 'Pauseable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pauseable: paused'
        stor0 = 1
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

function sub_a3ad64c9(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor1)
    staticcall stor1.tokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    return bool(ext_call.return_data[0])
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor14:
        revert with 0, 'No reentrancy'
    stor14 = 1
    if not rescueEnabled:
        revert with 0, 'RESCUE DISABLED'
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[64] = 288
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    idx = 0
    s = 96
    s = 0
    while idx < arg1.length:
        require ext_code.size(stor1)
        staticcall stor1.tokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _43 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        require mem[_43] == bool(mem[_43])
        require mem[_43 + 32] == mem[_43 + 63 len 1]
        require mem[_43 + 64] == mem[_43 + 95 len 1]
        require mem[_43 + 96] == mem[_43 + 127 len 1]
        require mem[_43 + 128] == mem[_43 + 159 len 1]
        require mem[_43 + 160] == mem[_43 + 191 len 1]
        require mem[_43 + 192] == mem[_43 + 223 len 1]
        require mem[_43 + 224] == mem[_43 + 255 len 1]
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        if mem[_43]:
            mem[32] = 3
            _55 = mem[64]
            mem[64] = mem[64] + 96
            mem[_55] = sub_c48afc6b[cd[((32 * idx) + arg1 + 36)]].field_0
            mem[_55 + 32] = sub_c48afc6b[cd[((32 * idx) + arg1 + 36)]].field_16
            mem[_55 + 64] = sub_c48afc6b[cd[((32 * idx) + arg1 + 36)]].field_96
            if sub_c48afc6b[cd[((32 * idx) + arg1 + 36)]].field_96 != msg.sender:
                revert with 0, 'SWIPER, NO SWIPING'
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 3
            sub_c48afc6b[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
            if sub_337df05d < 1:
                revert with 0, 17
            sub_337df05d--
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0x4a1779de: cd[((32 * idx) + arg1 + 36)], 0, 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _55
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        mem[32] = 4
        _53 = mem[64]
        mem[64] = mem[64] + 96
        mem[_53] = pack[cd[((32 * idx) + arg1 + 36)]].field_0
        mem[_53 + 32] = pack[cd[((32 * idx) + arg1 + 36)]].field_16
        mem[_53 + 64] = pack[cd[((32 * idx) + arg1 + 36)]].field_96
        if pack[cd[((32 * idx) + arg1 + 36)]].field_96 != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if sub_786de4b8 < 1:
            revert with 0, 17
        sub_786de4b8--
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_786de4b8 < 1:
            revert with 0, 17
        mem[0] = sub_786de4b8 - 1
        mem[32] = 4
        _68 = mem[64]
        mem[64] = mem[64] + 96
        mem[_68] = pack[stor6 - 1].field_0
        mem[_68 + 32] = pack[stor6 - 1].field_16
        mem[_68 + 64] = pack[stor6 - 1].field_96
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 4
        pack[cd[((32 * idx) + arg1 + 36)]].field_0 = pack[stor6 - 1].field_0
        pack[cd[((32 * idx) + arg1 + 36)]].field_16 = pack[stor6 - 1].field_16
        pack[cd[((32 * idx) + arg1 + 36)]].field_96 = pack[stor6 - 1].field_96
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0x80c61617: cd[((32 * idx) + arg1 + 36)], 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _53
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
    stor14 = 0
}

function sub_6d160114(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor14:
        revert with 0, 'No reentrancy'
    stor14 = 1
    if address(cd[4]) != msg.sender:
        if stor1 != msg.sender:
            revert with 0, 'DONT GIVE YOUR TOKENS AWAY'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]):
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if msg.sender == stor1:
                    require ext_code.size(stor1)
                    staticcall stor1.tokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    require mem[_250] == bool(mem[_250])
                    require mem[_250 + 32] == mem[_250 + 63 len 1]
                    require mem[_250 + 64] == mem[_250 + 95 len 1]
                    require mem[_250 + 96] == mem[_250 + 127 len 1]
                    require mem[_250 + 128] == mem[_250 + 159 len 1]
                    require mem[_250 + 160] == mem[_250 + 191 len 1]
                    require mem[_250 + 192] == mem[_250 + 223 len 1]
                    require mem[_250 + 224] == mem[_250 + 255 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not mem[_250]:
                        if sub_786de4b8 > -2:
                            revert with 0, 17
                        sub_786de4b8++
                        _334 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_334] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_334 + 32] = Mask(80, 0, stor8)
                        mem[_334 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 4
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_80 = 0
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_d6d6b467)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_d6d6b467));
                    else:
                        if stor0:
                            revert with 0, 'Pauseable: paused'
                        if sub_7f7451e9 >= 5000000 * 10^18:
                            _316 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_316] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_316 + 32] = Mask(80, 0, block.timestamp)
                            mem[_316 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_337df05d > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d) and sub_1f0868ca > -1 / (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d):
                                revert with 0, 17
                            if sub_7f7451e9 > !((block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600):
                                revert with 0, 17
                            sub_7f7451e9 += (block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _373 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_373] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_373 + 32] = Mask(80, 0, block.timestamp)
                            mem[_373 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        if sub_337df05d > -2:
                            revert with 0, 17
                        sub_337df05d++
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
                    _247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_247] == mem[_247 + 12 len 20]
                    if mem[_247 + 12 len 20] != msg.sender:
                        revert with 0, 'AINT YO TOKEN'
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor1)
                    staticcall stor1.tokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _295 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    require mem[_295] == bool(mem[_295])
                    require mem[_295 + 32] == mem[_295 + 63 len 1]
                    require mem[_295 + 64] == mem[_295 + 95 len 1]
                    require mem[_295 + 96] == mem[_295 + 127 len 1]
                    require mem[_295 + 128] == mem[_295 + 159 len 1]
                    require mem[_295 + 160] == mem[_295 + 191 len 1]
                    require mem[_295 + 192] == mem[_295 + 223 len 1]
                    require mem[_295 + 224] == mem[_295 + 255 len 1]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not mem[_295]:
                        if sub_786de4b8 > -2:
                            revert with 0, 17
                        sub_786de4b8++
                        _412 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_412] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_412 + 32] = Mask(80, 0, stor8)
                        mem[_412 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 4
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_80 = 0
                        pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = uint256(sub_d6d6b467)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_d6d6b467));
                    else:
                        if stor0:
                            revert with 0, 'Pauseable: paused'
                        if sub_7f7451e9 >= 5000000 * 10^18:
                            _397 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_397] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_397 + 32] = Mask(80, 0, block.timestamp)
                            mem[_397 + 64] = address(cd[4])
                        else:
                            if block.timestamp < lastClaimTimestamp:
                                revert with 0, 17
                            if block.timestamp - lastClaimTimestamp and sub_337df05d > -1 / block.timestamp - lastClaimTimestamp:
                                revert with 0, 17
                            if (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d) and sub_1f0868ca > -1 / (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d):
                                revert with 0, 17
                            if sub_7f7451e9 > !((block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600):
                                revert with 0, 17
                            sub_7f7451e9 += (block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600
                            lastClaimTimestamp = block.timestamp
                            _442 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_442] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_442 + 32] = Mask(80, 0, block.timestamp)
                            mem[_442 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        if sub_337df05d > -2:
                            revert with 0, 17
                        sub_337df05d++
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if tx.origin == address(cd[4]):
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_251] == bool(mem[_251])
                        require mem[_251 + 32] == mem[_251 + 63 len 1]
                        require mem[_251 + 64] == mem[_251 + 95 len 1]
                        require mem[_251 + 96] == mem[_251 + 127 len 1]
                        require mem[_251 + 128] == mem[_251 + 159 len 1]
                        require mem[_251 + 160] == mem[_251 + 191 len 1]
                        require mem[_251 + 192] == mem[_251 + 223 len 1]
                        require mem[_251 + 224] == mem[_251 + 255 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not mem[_251]:
                            if sub_786de4b8 > -2:
                                revert with 0, 17
                            sub_786de4b8++
                            _341 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_341] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_341 + 32] = Mask(80, 0, stor8)
                            mem[_341 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_80 = 0
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_d6d6b467)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_d6d6b467));
                        else:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_7f7451e9 >= 5000000 * 10^18:
                                _322 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_322] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_322 + 32] = Mask(80, 0, block.timestamp)
                                mem[_322 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_337df05d > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d) and sub_1f0868ca > -1 / (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d):
                                    revert with 0, 17
                                if sub_7f7451e9 > !((block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                                sub_7f7451e9 += (block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _378 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_378] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_378 + 32] = Mask(80, 0, block.timestamp)
                                mem[_378 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            if sub_337df05d > -2:
                                revert with 0, 17
                            sub_337df05d++
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
                        _248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_248] == mem[_248 + 12 len 20]
                        if mem[_248 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _296 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_296] == bool(mem[_296])
                        require mem[_296 + 32] == mem[_296 + 63 len 1]
                        require mem[_296 + 64] == mem[_296 + 95 len 1]
                        require mem[_296 + 96] == mem[_296 + 127 len 1]
                        require mem[_296 + 128] == mem[_296 + 159 len 1]
                        require mem[_296 + 160] == mem[_296 + 191 len 1]
                        require mem[_296 + 192] == mem[_296 + 223 len 1]
                        require mem[_296 + 224] == mem[_296 + 255 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not mem[_296]:
                            if sub_786de4b8 > -2:
                                revert with 0, 17
                            sub_786de4b8++
                            _419 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_419] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_419 + 32] = Mask(80, 0, stor8)
                            mem[_419 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_80 = 0
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_d6d6b467)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_d6d6b467));
                        else:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_7f7451e9 >= 5000000 * 10^18:
                                _402 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_402] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_402 + 32] = Mask(80, 0, block.timestamp)
                                mem[_402 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_337df05d > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d) and sub_1f0868ca > -1 / (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d):
                                    revert with 0, 17
                                if sub_7f7451e9 > !((block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                                sub_7f7451e9 += (block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _447 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_447] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_447 + 32] = Mask(80, 0, block.timestamp)
                                mem[_447 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            if sub_337df05d > -2:
                                revert with 0, 17
                            sub_337df05d++
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
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == stor1:
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_252] == bool(mem[_252])
                        require mem[_252 + 32] == mem[_252 + 63 len 1]
                        require mem[_252 + 64] == mem[_252 + 95 len 1]
                        require mem[_252 + 96] == mem[_252 + 127 len 1]
                        require mem[_252 + 128] == mem[_252 + 159 len 1]
                        require mem[_252 + 160] == mem[_252 + 191 len 1]
                        require mem[_252 + 192] == mem[_252 + 223 len 1]
                        require mem[_252 + 224] == mem[_252 + 255 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not mem[_252]:
                            if sub_786de4b8 > -2:
                                revert with 0, 17
                            sub_786de4b8++
                            _348 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_348] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_348 + 32] = Mask(80, 0, stor8)
                            mem[_348 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_80 = 0
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_d6d6b467)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_d6d6b467));
                        else:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_7f7451e9 >= 5000000 * 10^18:
                                _328 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_328] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_328 + 32] = Mask(80, 0, block.timestamp)
                                mem[_328 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_337df05d > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d) and sub_1f0868ca > -1 / (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d):
                                    revert with 0, 17
                                if sub_7f7451e9 > !((block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                                sub_7f7451e9 += (block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _383 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_383] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_383 + 32] = Mask(80, 0, block.timestamp)
                                mem[_383 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            if sub_337df05d > -2:
                                revert with 0, 17
                            sub_337df05d++
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
                        _249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_249] == mem[_249 + 12 len 20]
                        if mem[_249 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(stor1)
                        staticcall stor1.tokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _297 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        require mem[_297] == bool(mem[_297])
                        require mem[_297 + 32] == mem[_297 + 63 len 1]
                        require mem[_297 + 64] == mem[_297 + 95 len 1]
                        require mem[_297 + 96] == mem[_297 + 127 len 1]
                        require mem[_297 + 128] == mem[_297 + 159 len 1]
                        require mem[_297 + 160] == mem[_297 + 191 len 1]
                        require mem[_297 + 192] == mem[_297 + 223 len 1]
                        require mem[_297 + 224] == mem[_297 + 255 len 1]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not mem[_297]:
                            if sub_786de4b8 > -2:
                                revert with 0, 17
                            sub_786de4b8++
                            _426 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_426] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_426 + 32] = Mask(80, 0, stor8)
                            mem[_426 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_80 = 0
                            pack[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = uint256(sub_d6d6b467)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, uint256(sub_d6d6b467));
                        else:
                            if stor0:
                                revert with 0, 'Pauseable: paused'
                            if sub_7f7451e9 >= 5000000 * 10^18:
                                _407 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_407] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_407 + 32] = Mask(80, 0, block.timestamp)
                                mem[_407 + 64] = address(cd[4])
                            else:
                                if block.timestamp < lastClaimTimestamp:
                                    revert with 0, 17
                                if block.timestamp - lastClaimTimestamp and sub_337df05d > -1 / block.timestamp - lastClaimTimestamp:
                                    revert with 0, 17
                                if (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d) and sub_1f0868ca > -1 / (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d):
                                    revert with 0, 17
                                if sub_7f7451e9 > !((block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                                sub_7f7451e9 += (block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600
                                lastClaimTimestamp = block.timestamp
                                _452 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_452] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_452 + 32] = Mask(80, 0, block.timestamp)
                                mem[_452 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                            if sub_337df05d > -2:
                                revert with 0, 17
                            sub_337df05d++
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    stor14 = 0
}

function sub_b5b931a6(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if stor14:
        revert with 0, 'No reentrancy'
    stor14 = 1
    if stor0:
        revert with 0, 'Pauseable: paused'
    if sub_7f7451e9 >= 5000000 * 10^18:
        if msg.sender != tx.origin:
            revert with 0, 'Only EOA'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor1)
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_599] == bool(mem[_599])
            require mem[_599 + 32] == mem[_599 + 63 len 1]
            require mem[_599 + 64] == mem[_599 + 95 len 1]
            require mem[_599 + 96] == mem[_599 + 127 len 1]
            require mem[_599 + 128] == mem[_599 + 159 len 1]
            require mem[_599 + 160] == mem[_599 + 191 len 1]
            require mem[_599 + 192] == mem[_599 + 223 len 1]
            require mem[_599 + 224] == mem[_599 + 255 len 1]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if not mem[_599]:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _627 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_627] == mem[_627 + 12 len 20]
                if mem[_627 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 4
                _654 = mem[64]
                mem[64] = mem[64] + 96
                mem[_654] = pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                mem[_654 + 32] = pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                mem[_654 + 64] = pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                if pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_d6d6b467) < pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                    revert with 0, 17
                if cd[36]:
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                    if sub_786de4b8 < 1:
                        revert with 0, 17
                    sub_786de4b8--
                else:
                    _677 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_677] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_677 + 32] = Mask(80, 0, stor8)
                    mem[_677 + 64] = msg.sender
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_80 = 0
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = uint256(sub_d6d6b467) - pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x80c61617: cd[((32 * idx) + cd[4] + 36)] << 240, uint256(sub_d6d6b467) - pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16, bool(cd[36])
                if 0 > !(uint256(sub_d6d6b467) - pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                    revert with 0, 17
            else:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _620 = mem[64]
                mem[64] = mem[64] + 96
                mem[_620] = sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                mem[_620 + 32] = sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                mem[_620 + 64] = sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                if sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_7f7451e9 < 5000000 * 10^18:
                        if block.timestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                revert with 0, 17
                            if not sub_786de4b8:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _880 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_880] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_880 + 32] = Mask(80, 0, block.timestamp)
                                mem[_880 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    revert with 0, 18
                                if uint256(sub_d6d6b467) > !((20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                    revert with 0, 17
                                uint256(sub_d6d6b467) += (20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                unaccountedRewards = 0
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _991 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_991] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_991 + 32] = Mask(80, 0, block.timestamp)
                                mem[_991 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _713 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_713] == mem[_713 + 12 len 20]
                            require ext_code.size(mem[_713 + 12 len 20])
                            staticcall mem[_713 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _777 = mem[_770]
                            if block.number < 1:
                                revert with 0, 17
                            _819 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_337df05d
                            mem[mem[64] + 180] = sub_786de4b8
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _820 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_820 + 32 len mem[_820]]) xor _777) != 1:
                                mem[_819 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_819 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_819 + 276] = (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                mem[_819 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not sub_786de4b8:
                                    if unaccountedRewards > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += ((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                mem[_819 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_819 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_819 + 276] = 0
                                mem[_819 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 > lastClaimTimestamp:
                            if not cd[36]:
                                if not sub_786de4b8:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _775 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_775] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_775 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_775 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    _853 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_853] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_853 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_853 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _664 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_664] == mem[_664 + 12 len 20]
                                require ext_code.size(mem[_664 + 12 len 20])
                                staticcall mem[_664 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _712 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _719 = mem[_712]
                                if block.number < 1:
                                    revert with 0, 17
                                _747 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _748 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_748 + 32 len mem[_748]]) xor _719):
                                    if not sub_786de4b8:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                mem[_747 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_747 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_747 + 276] = 0
                                mem[_747 + 308] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _893 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_893] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_893 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_893 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !((20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += (20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _1009 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1009] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1009 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1009 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _717 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_717] == mem[_717 + 12 len 20]
                                require ext_code.size(mem[_717 + 12 len 20])
                                staticcall mem[_717 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _773 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _793 = mem[_773]
                                if block.number < 1:
                                    revert with 0, 17
                                _833 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _834 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_834 + 32 len mem[_834]]) xor _793) != 1:
                                    mem[_833 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_833 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_833 + 276] = (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    mem[_833 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not sub_786de4b8:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += ((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                    mem[_833 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_833 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_833 + 276] = 0
                                    mem[_833 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                else:
                    if block.timestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                        revert with 0, 17
                    if block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S BANDS'
                    if sub_7f7451e9 < 5000000 * 10^18:
                        if block.timestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                revert with 0, 17
                            if not sub_786de4b8:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _961 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_961] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_961 + 32] = Mask(80, 0, block.timestamp)
                                mem[_961 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    revert with 0, 18
                                if uint256(sub_d6d6b467) > !((20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                    revert with 0, 17
                                uint256(sub_d6d6b467) += (20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                unaccountedRewards = 0
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _1067 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1067] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1067 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1067 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _739 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_739] == mem[_739 + 12 len 20]
                            require ext_code.size(mem[_739 + 12 len 20])
                            staticcall mem[_739 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _810 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _825 = mem[_810]
                            if block.number < 1:
                                revert with 0, 17
                            _882 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_337df05d
                            mem[mem[64] + 180] = sub_786de4b8
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _883 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_883 + 32 len mem[_883]]) xor _825) != 1:
                                mem[_882 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_882 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_882 + 276] = (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                mem[_882 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not sub_786de4b8:
                                    if unaccountedRewards > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += ((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                mem[_882 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_882 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_882 + 276] = 0
                                mem[_882 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 > lastClaimTimestamp:
                            if not cd[36]:
                                if not sub_786de4b8:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _823 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_823] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_823 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_823 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    _925 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_925] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_925 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_925 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _679 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_679] == mem[_679 + 12 len 20]
                                require ext_code.size(mem[_679 + 12 len 20])
                                staticcall mem[_679 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _738 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _753 = mem[_738]
                                if block.number < 1:
                                    revert with 0, 17
                                _778 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _779 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_779 + 32 len mem[_779]]) xor _753):
                                    if not sub_786de4b8:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                mem[_778 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_778 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_778 + 276] = 0
                                mem[_778 + 308] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _970 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_970] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_970 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_970 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !((20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += (20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _1077 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1077] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1077 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1077 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _744 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_744] == mem[_744 + 12 len 20]
                                require ext_code.size(mem[_744 + 12 len 20])
                                staticcall mem[_744 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _838 = mem[_816]
                                if block.number < 1:
                                    revert with 0, 17
                                _901 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _902 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_902 + 32 len mem[_902]]) xor _838) != 1:
                                    mem[_901 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_901 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_901 + 276] = (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    mem[_901 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not sub_786de4b8:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += ((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                    mem[_901 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_901 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_901 + 276] = 0
                                    mem[_901 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if block.timestamp < lastClaimTimestamp:
            revert with 0, 17
        if block.timestamp - lastClaimTimestamp and sub_337df05d > -1 / block.timestamp - lastClaimTimestamp:
            revert with 0, 17
        if (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d) and sub_1f0868ca > -1 / (block.timestamp * sub_337df05d) - (lastClaimTimestamp * sub_337df05d):
            revert with 0, 17
        if sub_7f7451e9 > !((block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600):
            revert with 0, 17
        sub_7f7451e9 += (block.timestamp * sub_337df05d * sub_1f0868ca) - (lastClaimTimestamp * sub_337df05d * sub_1f0868ca) / 24 * 3600
        lastClaimTimestamp = block.timestamp
        if msg.sender != tx.origin:
            revert with 0, 'Only EOA'
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(stor1)
            staticcall stor1.tokenTraits(uint256 arg1) with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 240)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _600 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            require mem[_600] == bool(mem[_600])
            require mem[_600 + 32] == mem[_600 + 63 len 1]
            require mem[_600 + 64] == mem[_600 + 95 len 1]
            require mem[_600 + 96] == mem[_600 + 127 len 1]
            require mem[_600 + 128] == mem[_600 + 159 len 1]
            require mem[_600 + 160] == mem[_600 + 191 len 1]
            require mem[_600 + 192] == mem[_600 + 223 len 1]
            require mem[_600 + 224] == mem[_600 + 255 len 1]
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if not mem[_600]:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(stor1)
                staticcall stor1.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _629 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_629] == mem[_629 + 12 len 20]
                if mem[_629 + 12 len 20] != this.address:
                    revert with 0, 'AINT A PART OF THE PACK'
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 4
                _658 = mem[64]
                mem[64] = mem[64] + 96
                mem[_658] = pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                mem[_658 + 32] = pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                mem[_658 + 64] = pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                if pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if uint256(sub_d6d6b467) < pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                    revert with 0, 17
                if cd[36]:
                    mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                    if sub_786de4b8 < 1:
                        revert with 0, 17
                    sub_786de4b8--
                else:
                    _680 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_680] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_680 + 32] = Mask(80, 0, stor8)
                    mem[_680 + 64] = msg.sender
                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[32] = 4
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = Mask(80, 0, stor8)
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_80 = 0
                    pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = uint256(sub_d6d6b467) - pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                mem[mem[64] + 64] = bool(cd[36])
                emit 0x80c61617: cd[((32 * idx) + cd[4] + 36)] << 240, uint256(sub_d6d6b467) - pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16, bool(cd[36])
                if 0 > !(uint256(sub_d6d6b467) - pack[cd[((32 * idx) + cd[4] + 36)] << 240].field_16):
                    revert with 0, 17
            else:
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                _624 = mem[64]
                mem[64] = mem[64] + 96
                mem[_624] = sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
                mem[_624 + 32] = sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
                mem[_624 + 64] = sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
                if sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 != msg.sender:
                    revert with 0, 'SWIPER, NO SWIPING'
                if not cd[36]:
                    if sub_7f7451e9 < 5000000 * 10^18:
                        if block.timestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                revert with 0, 17
                            if not sub_786de4b8:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _887 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_887] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_887 + 32] = Mask(80, 0, block.timestamp)
                                mem[_887 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    revert with 0, 18
                                if uint256(sub_d6d6b467) > !((20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                    revert with 0, 17
                                uint256(sub_d6d6b467) += (20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                unaccountedRewards = 0
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _1001 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1001] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1001 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1001 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _716 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_716] == mem[_716 + 12 len 20]
                            require ext_code.size(mem[_716 + 12 len 20])
                            staticcall mem[_716 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _772 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _786 = mem[_772]
                            if block.number < 1:
                                revert with 0, 17
                            _826 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_337df05d
                            mem[mem[64] + 180] = sub_786de4b8
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _827 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_827 + 32 len mem[_827]]) xor _786) != 1:
                                mem[_826 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_826 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_826 + 276] = (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                mem[_826 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not sub_786de4b8:
                                    if unaccountedRewards > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += ((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                mem[_826 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_826 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_826 + 276] = 0
                                mem[_826 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 > lastClaimTimestamp:
                            if not cd[36]:
                                if not sub_786de4b8:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _784 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_784] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_784 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_784 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    _858 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_858] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_858 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_858 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _668 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_668] == mem[_668 + 12 len 20]
                                require ext_code.size(mem[_668 + 12 len 20])
                                staticcall mem[_668 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _715 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _725 = mem[_715]
                                if block.number < 1:
                                    revert with 0, 17
                                _755 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _756 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_756 + 32 len mem[_756]]) xor _725):
                                    if not sub_786de4b8:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                mem[_755 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_755 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_755 + 276] = 0
                                mem[_755 + 308] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _906 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_906] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_906 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_906 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !((20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += (20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _1022 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1022] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1022 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1022 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _718 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_718] == mem[_718 + 12 len 20]
                                require ext_code.size(mem[_718 + 12 len 20])
                                staticcall mem[_718 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _800 = mem[_774]
                                if block.number < 1:
                                    revert with 0, 17
                                _843 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _844 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_844 + 32 len mem[_844]]) xor _800) != 1:
                                    mem[_843 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_843 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_843 + 276] = (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    mem[_843 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not sub_786de4b8:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += ((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                    mem[_843 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_843 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_843 + 276] = 0
                                    mem[_843 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                else:
                    if block.timestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                        revert with 0, 17
                    if block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 < MINIMUM_TO_EXIT:
                        revert with 0, 'GONNA BE COLD WITHOUT TWO DAY'S BANDS'
                    if sub_7f7451e9 < 5000000 * 10^18:
                        if block.timestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / block.timestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                            revert with 0, 17
                        if not cd[36]:
                            if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                revert with 0, 17
                            if not sub_786de4b8:
                                if unaccountedRewards > !(20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                                unaccountedRewards += 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _965 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_965] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_965 + 32] = Mask(80, 0, block.timestamp)
                                mem[_965 + 64] = msg.sender
                            else:
                                if 20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    revert with 0, 18
                                if uint256(sub_d6d6b467) > !((20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                    revert with 0, 17
                                uint256(sub_d6d6b467) += (20 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                unaccountedRewards = 0
                                if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                _1073 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_1073] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_1073 + 32] = Mask(80, 0, block.timestamp)
                                mem[_1073 + 64] = msg.sender
                            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[32] = 3
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                            sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                            mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 32] = 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                            mem[mem[64] + 64] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                            if 0 > !(80 * (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                revert with 0, 17
                        else:
                            require ext_code.size(stor1)
                            staticcall stor1.randomSource() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _742 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_742] == mem[_742 + 12 len 20]
                            require ext_code.size(mem[_742 + 12 len 20])
                            staticcall mem[_742 + 12 len 20].seed() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _832 = mem[_814]
                            if block.number < 1:
                                revert with 0, 17
                            _889 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64] + 148] = sub_337df05d
                            mem[mem[64] + 180] = sub_786de4b8
                            mem[mem[64] + 212] = lastClaimTimestamp
                            _890 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_890 + 32 len mem[_890]]) xor _832) != 1:
                                mem[_889 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_889 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_889 + 276] = (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                mem[_889 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                if 0 > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not sub_786de4b8:
                                    if unaccountedRewards > !((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                    unaccountedRewards += (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                else:
                                    if (block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += ((block.timestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                mem[_889 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_889 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_889 + 276] = 0
                                mem[_889 + 308] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                    else:
                        if sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 > lastClaimTimestamp:
                            if not cd[36]:
                                if not sub_786de4b8:
                                    if unaccountedRewards > -1:
                                        revert with 0, 17
                                    _830 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_830] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_830 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_830 + 64] = msg.sender
                                else:
                                    if 0 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    _934 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_934] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_934 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_934 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 0
                                mem[mem[64] + 64] = bool(cd[36])
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _682 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_682] == mem[_682 + 12 len 20]
                                require ext_code.size(mem[_682 + 12 len 20])
                                staticcall mem[_682 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _741 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _761 = mem[_741]
                                if block.number < 1:
                                    revert with 0, 17
                                _787 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _788 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_788 + 32 len mem[_788]]) xor _761):
                                    if not sub_786de4b8:
                                        if unaccountedRewards > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                mem[_787 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                require ext_code.size(stor1)
                                call stor1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                if sub_337df05d < 1:
                                    revert with 0, 17
                                sub_337df05d--
                                mem[_787 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[_787 + 276] = 0
                                mem[_787 + 308] = bool(cd[36])
                            emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
                        else:
                            if lastClaimTimestamp < sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_1f0868ca > -1 / lastClaimTimestamp - sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
                                revert with 0, 17
                            if not cd[36]:
                                if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 20 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                    revert with 0, 17
                                if not sub_786de4b8:
                                    if unaccountedRewards > !(20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                        revert with 0, 17
                                    unaccountedRewards += 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _981 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_981] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_981 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_981 + 64] = msg.sender
                                else:
                                    if 20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100 > !unaccountedRewards:
                                        revert with 0, 17
                                    if not sub_786de4b8:
                                        revert with 0, 18
                                    if uint256(sub_d6d6b467) > !((20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8):
                                        revert with 0, 17
                                    uint256(sub_d6d6b467) += (20 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100) + unaccountedRewards / sub_786de4b8
                                    unaccountedRewards = 0
                                    if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 and 80 > -1 / (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600:
                                        revert with 0, 17
                                    _1088 = mem[64]
                                    mem[64] = mem[64] + 96
                                    mem[_1088] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_1088 + 32] = Mask(80, 0, block.timestamp)
                                    mem[_1088 + 64] = msg.sender
                                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[32] = 3
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                                sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 32] = 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100
                                mem[mem[64] + 64] = bool(cd[36])
                                emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100, bool(cd[36])
                                if 0 > !(80 * (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 / 100):
                                    revert with 0, 17
                            else:
                                require ext_code.size(stor1)
                                staticcall stor1.randomSource() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _746 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_746] == mem[_746 + 12 len 20]
                                require ext_code.size(mem[_746 + 12 len 20])
                                staticcall mem[_746 + 12 len 20].seed() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _818 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _848 = mem[_818]
                                if block.number < 1:
                                    revert with 0, 17
                                _914 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 148] = sub_337df05d
                                mem[mem[64] + 180] = sub_786de4b8
                                mem[mem[64] + 212] = lastClaimTimestamp
                                _915 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_915 + 32 len mem[_915]]) xor _848) != 1:
                                    mem[_914 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_914 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_914 + 276] = (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    mem[_914 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600, bool(cd[36])
                                    if 0 > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not sub_786de4b8:
                                        if unaccountedRewards > !((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600):
                                            revert with 0, 17
                                        unaccountedRewards += (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600
                                    else:
                                        if (lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600 > !unaccountedRewards:
                                            revert with 0, 17
                                        if not sub_786de4b8:
                                            revert with 0, 18
                                        if uint256(sub_d6d6b467) > !(((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8):
                                            revert with 0, 17
                                        uint256(sub_d6d6b467) += ((lastClaimTimestamp * sub_1f0868ca) - (sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_1f0868ca) / 24 * 3600) + unaccountedRewards / sub_786de4b8
                                        unaccountedRewards = 0
                                    mem[_914 + 312] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    require ext_code.size(stor1)
                                    call stor1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[32] = 3
                                    sub_c48afc6b[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                                    if sub_337df05d < 1:
                                        revert with 0, 17
                                    sub_337df05d--
                                    mem[_914 + 244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                                    mem[_914 + 276] = 0
                                    mem[_914 + 308] = bool(cd[36])
                                    emit 0x4a1779de: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36])
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    stor14 = 0
}



}
