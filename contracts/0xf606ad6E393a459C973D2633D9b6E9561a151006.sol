contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d33505d(?)
#  - sub_9e496641(?)
#
address owner;
uint256 stor1;
uint8 stor2;
address sub_809deb63Address; offset 8
address sub_dac55cd4Address;
address sub_52b8bedfAddress;
uint256 sub_f4e86e84;
uint256 sub_0a8913c9;
uint256 sub_6ee1b577;
uint256 stor8;
uint256 stor9;
uint256 stor10;
array of struct stor11;
mapping of struct stor12;
array of struct stor13;
mapping of uint256 stor14;
uint256 sub_219bec0b;
mapping of uint8 stor17;

function sub_0a8913c9(?) payable {
    return sub_0a8913c9
}

function sub_219bec0b(?) payable {
    if not stor17[msg.sender]:
        revert with 0, 'Arena: Only admins can call this'
    return sub_219bec0b
}

function sub_52b8bedf(?) payable {
    return sub_52b8bedfAddress
}

function paused() payable {
    return bool(stor2)
}

function sub_6ee1b577(?) payable {
    return sub_6ee1b577
}

function sub_809deb63(?) payable {
    return sub_809deb63Address
}

function owner() payable {
    return owner
}

function sub_dac55cd4(?) payable {
    return sub_dac55cd4Address
}

function sub_f4e86e84(?) payable {
    return sub_f4e86e84
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

function sub_4abc1b22(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f4e86e84 = arg1
}

function sub_cbcc1cc5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0a8913c9 = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17[address(arg1)] = 0
}

function setContracts(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_809deb63Address = arg1
    sub_52b8bedfAddress = arg2
    sub_dac55cd4Address = arg3
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

function isStaked(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall sub_809deb63Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        return 0
    return 1
}

function sub_49f73187(?) payable {
    if tx.origin != msg.sender:
        if sub_dac55cd4Address != msg.sender:
            revert with 0, 'Arena: Only EOA'
    staticcall sub_809deb63Address.0x4a5f3a73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] >= block.number:
        revert with 0, 'Arena: Nope!'
    return stor8
}

function sub_d3d58796(?) payable {
    if tx.origin != msg.sender:
        if sub_dac55cd4Address != msg.sender:
            revert with 0, 'Arena: Only EOA'
    staticcall sub_809deb63Address.0x4a5f3a73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] >= block.number:
        revert with 0, 'Arena: Nope!'
    return stor9
}

function sub_cd2b9a95(?) payable {
    if tx.origin != msg.sender:
        if sub_dac55cd4Address != msg.sender:
            revert with 0, 'Arena: Only EOA'
    staticcall sub_809deb63Address.0x4a5f3a73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] >= block.number:
        revert with 0, 'Arena: Nope!'
    return stor10
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Arena: Cannot send to Arena directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function getStakedTokenIds(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall sub_809deb63Address.0x4a5f3a73 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] >= block.number:
        revert with 0, 'Arena: Nope!'
    if stor11[address(arg1)].field_0:
        mem[ceil32(return_data.size) + 128] = stor11[address(arg1)].field_0
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * stor11[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor11[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor11[address(arg1)].field_0, data=mem[ceil32(return_data.size) + 128 len 32 * stor11[address(arg1)].field_0]), 
    mem[ceil32(return_data.size) + (32 * stor11[address(arg1)].field_0) + 128] = 32
    mem[ceil32(return_data.size) + (32 * stor11[address(arg1)].field_0) + 160] = stor11[address(arg1)].field_0
    mem[ceil32(return_data.size) + (32 * stor11[address(arg1)].field_0) + 192 len 32 * stor11[address(arg1)].field_0] = mem[ceil32(return_data.size) + 128 len 32 * stor11[address(arg1)].field_0]
    return memory
      from ceil32(return_data.size) + (32 * stor11[address(arg1)].field_0) + 128
       len (96 * stor11[address(arg1)].field_0) + 64
}

function getStake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    staticcall sub_809deb63Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Arena: Token is not staked (_getStake)'
    staticcall sub_809deb63Address.0x32385e25 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] >= block.number:
        revert with 0, 'Arena: Nope!'
    staticcall sub_809deb63Address.0x36a54b90 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if stor12[arg1].field_768 != msg.sender:
            if not stor17[msg.sender]:
                revert with 0, 32, 43, 0xfe4172656e613a20596f7520646f6e2774206f776e207468697320746f6b656e, '(_getStake)' << 168
        return stor12[arg1].field_0, stor12[arg1].field_256, stor12[arg1].field_512, stor12[arg1].field_768
    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if not bool((6 * ceil32(return_data.size)) + 736 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    require ext_call.return_data[96] == ext_call.return_data[126 len 2]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[224] == ext_call.return_data[248 len 8]
    if stor14[arg1] >= stor13[ext_call.return_data[191 len 1]].field_0:
        revert with 0, 50
    if stor13[ext_call.return_data[191 len 1]][stor14[arg1]].field_768 != msg.sender:
        if not stor17[msg.sender]:
            revert with 0, 32, 43, 0xfe4172656e613a20596f7520646f6e2774206f776e207468697320746f6b656e, '(_getStake)' << 168
    return stor13[ext_call.return_data[191 len 1]][stor14[arg1]].field_0, 
           stor13[ext_call.return_data[191 len 1]][stor14[arg1]].field_256,
           stor13[ext_call.return_data[191 len 1]][stor14[arg1]].field_512,
           stor13[ext_call.return_data[191 len 1]][stor14[arg1]].field_768
}

function sub_9fb6ea12(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor2:
        revert with 0, 'Pausable: paused'
    if msg.sender == tx.origin:
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        staticcall sub_809deb63Address.0x4a5f3a73 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[24 len 8]
        if ext_call.return_data[24 len 8] >= block.number:
            revert with 0, 'Arena: Nope!'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if msg.sender == sub_dac55cd4Address:
                if uint16(cd[((32 * idx) + cd[4] + 36)]):
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_809deb63Address.0x36a54b90 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _215 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_215] == bool(mem[_215])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    if mem[_215]:
                        _226 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_226] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_226 + 32] = 0
                        mem[_226 + 64] = Mask(80, 0, block.timestamp)
                        mem[_226 + 96] = msg.sender
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                        mem[32] = 11
                        stor11[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 11)
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                        if stor8 == -1:
                            revert with 0, 17
                        stor8++
                    else:
                        _225 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_225] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_225 + 32] = sub_219bec0b
                        mem[_225 + 64] = block.timestamp
                        mem[_225 + 96] = msg.sender
                        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        _255 = mem[64]
                        if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 256
                        require mem[_251] == bool(mem[_251])
                        mem[_255] = mem[_251]
                        require mem[_251 + 32] == bool(mem[_251 + 32])
                        mem[_255 + 32] = mem[_251 + 32]
                        require mem[_251 + 64] == bool(mem[_251 + 64])
                        mem[_255 + 64] = mem[_251 + 64]
                        require mem[_251 + 96] == mem[_251 + 126 len 2]
                        mem[_255 + 96] = mem[_251 + 96]
                        mem[_255 + 128] = mem[_251 + 128]
                        require mem[_251 + 160] == mem[_251 + 191 len 1]
                        mem[_255 + 160] = mem[_251 + 160]
                        mem[_255 + 192] = mem[_251 + 192]
                        require mem[_251 + 224] == mem[_251 + 248 len 8]
                        mem[_255 + 224] = mem[_251 + 224]
                        if stor10 > !mem[_255 + 191 len 1]:
                            revert with 0, 17
                        stor10 += mem[_255 + 191 len 1]
                        if stor9 == -1:
                            revert with 0, 17
                        stor9++
                        mem[0] = mem[_255 + 191 len 1]
                        stor14[cd[((32 * idx) + cd[4] + 36)] << 240] = stor13[mem[0]].field_0
                        stor13[mem[0]].field_0++
                        stor13[mem[0]][stor13[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor13[mem[0]][stor13[mem[0]].field_0].field_256 = sub_219bec0b
                        stor13[mem[0]][stor13[mem[0]].field_0].field_512 = block.timestamp
                        stor13[mem[0]][stor13[mem[0]].field_0].field_768 = msg.sender
                        mem[32] = 11
                        stor11[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 11)
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                    emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_201] == mem[_201 + 12 len 20]
                if mem[_201 + 12 len 20] != msg.sender:
                    revert with 0, 32, 50, 0xfe4172656e613a20596f7520646f6e2774206f776e207468697320746f6b656e, '(stakeManyToArena)' << 112
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall sub_809deb63Address.0x36a54b90 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _252 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_252] == bool(mem[_252])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if mem[_252]:
                    _268 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_268] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_268 + 32] = 0
                    mem[_268 + 64] = Mask(80, 0, block.timestamp)
                    mem[_268 + 96] = msg.sender
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                    mem[32] = 11
                    stor11[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 11)
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                    if stor8 == -1:
                        revert with 0, 17
                    stor8++
                else:
                    _267 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_267] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_267 + 32] = sub_219bec0b
                    mem[_267 + 64] = block.timestamp
                    mem[_267 + 96] = msg.sender
                    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _290 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _293 = mem[64]
                    if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[_290] == bool(mem[_290])
                    mem[_293] = mem[_290]
                    require mem[_290 + 32] == bool(mem[_290 + 32])
                    mem[_293 + 32] = mem[_290 + 32]
                    require mem[_290 + 64] == bool(mem[_290 + 64])
                    mem[_293 + 64] = mem[_290 + 64]
                    require mem[_290 + 96] == mem[_290 + 126 len 2]
                    mem[_293 + 96] = mem[_290 + 96]
                    mem[_293 + 128] = mem[_290 + 128]
                    require mem[_290 + 160] == mem[_290 + 191 len 1]
                    mem[_293 + 160] = mem[_290 + 160]
                    mem[_293 + 192] = mem[_290 + 192]
                    require mem[_290 + 224] == mem[_290 + 248 len 8]
                    mem[_293 + 224] = mem[_290 + 224]
                    if stor10 > !mem[_293 + 191 len 1]:
                        revert with 0, 17
                    stor10 += mem[_293 + 191 len 1]
                    if stor9 == -1:
                        revert with 0, 17
                    stor9++
                    mem[0] = mem[_293 + 191 len 1]
                    stor14[cd[((32 * idx) + cd[4] + 36)] << 240] = stor13[mem[0]].field_0
                    stor13[mem[0]].field_0++
                    stor13[mem[0]][stor13[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor13[mem[0]][stor13[mem[0]].field_0].field_256 = sub_219bec0b
                    stor13[mem[0]][stor13[mem[0]].field_0].field_512 = block.timestamp
                    stor13[mem[0]][stor13[mem[0]].field_0].field_768 = msg.sender
                    mem[32] = 11
                    stor11[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 11)
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _193 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ('cd', 4).length
        idx = 0
        s = mem[64] + 64
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == uint16(cd[t])
            mem[s] = uint16(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x316db566: mem[mem[64] len _193 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
    else:
        if sub_dac55cd4Address != msg.sender:
            revert with 0, 'Arena: Only EOA'
        if stor1 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor1 = 2
        staticcall sub_809deb63Address.0x4a5f3a73 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[24 len 8]
        if ext_call.return_data[24 len 8] >= block.number:
            revert with 0, 'Arena: Nope!'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
            if msg.sender == sub_dac55cd4Address:
                if uint16(cd[((32 * idx) + cd[4] + 36)]):
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    staticcall sub_809deb63Address.0x36a54b90 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _217 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_217] == bool(mem[_217])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    if mem[_217]:
                        _233 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_233] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_233 + 32] = 0
                        mem[_233 + 64] = Mask(80, 0, block.timestamp)
                        mem[_233 + 96] = msg.sender
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                        stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                        mem[32] = 11
                        stor11[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 11)
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                        if stor8 == -1:
                            revert with 0, 17
                        stor8++
                    else:
                        _232 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_232] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_232 + 32] = sub_219bec0b
                        mem[_232 + 64] = block.timestamp
                        mem[_232 + 96] = msg.sender
                        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 256
                        _257 = mem[64]
                        if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 256
                        require mem[_253] == bool(mem[_253])
                        mem[_257] = mem[_253]
                        require mem[_253 + 32] == bool(mem[_253 + 32])
                        mem[_257 + 32] = mem[_253 + 32]
                        require mem[_253 + 64] == bool(mem[_253 + 64])
                        mem[_257 + 64] = mem[_253 + 64]
                        require mem[_253 + 96] == mem[_253 + 126 len 2]
                        mem[_257 + 96] = mem[_253 + 96]
                        mem[_257 + 128] = mem[_253 + 128]
                        require mem[_253 + 160] == mem[_253 + 191 len 1]
                        mem[_257 + 160] = mem[_253 + 160]
                        mem[_257 + 192] = mem[_253 + 192]
                        require mem[_253 + 224] == mem[_253 + 248 len 8]
                        mem[_257 + 224] = mem[_253 + 224]
                        if stor10 > !mem[_257 + 191 len 1]:
                            revert with 0, 17
                        stor10 += mem[_257 + 191 len 1]
                        if stor9 == -1:
                            revert with 0, 17
                        stor9++
                        mem[0] = mem[_257 + 191 len 1]
                        stor14[cd[((32 * idx) + cd[4] + 36)] << 240] = stor13[mem[0]].field_0
                        stor13[mem[0]].field_0++
                        stor13[mem[0]][stor13[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor13[mem[0]][stor13[mem[0]].field_0].field_256 = sub_219bec0b
                        stor13[mem[0]][stor13[mem[0]].field_0].field_512 = block.timestamp
                        stor13[mem[0]][stor13[mem[0]].field_0].field_768 = msg.sender
                        mem[32] = 11
                        stor11[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 11)
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                    emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_202] == mem[_202 + 12 len 20]
                if mem[_202 + 12 len 20] != msg.sender:
                    revert with 0, 32, 50, 0xfe4172656e613a20596f7520646f6e2774206f776e207468697320746f6b656e, '(stakeManyToArena)' << 112
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint16(cd[((32 * idx) + cd[4] + 36)])
                require ext_code.size(sub_809deb63Address)
                call sub_809deb63Address.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall sub_809deb63Address.0x36a54b90 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_254] == bool(mem[_254])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if mem[_254]:
                    _275 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_275] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_275 + 32] = 0
                    mem[_275 + 64] = Mask(80, 0, block.timestamp)
                    mem[_275 + 96] = msg.sender
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                    stor12[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                    mem[32] = 11
                    stor11[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 11)
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                    if stor8 == -1:
                        revert with 0, 17
                    stor8++
                else:
                    _274 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_274] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_274 + 32] = sub_219bec0b
                    mem[_274 + 64] = block.timestamp
                    mem[_274 + 96] = msg.sender
                    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _292 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 256
                    _294 = mem[64]
                    if mem[64] + 256 < mem[64] or mem[64] + 256 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[_292] == bool(mem[_292])
                    mem[_294] = mem[_292]
                    require mem[_292 + 32] == bool(mem[_292 + 32])
                    mem[_294 + 32] = mem[_292 + 32]
                    require mem[_292 + 64] == bool(mem[_292 + 64])
                    mem[_294 + 64] = mem[_292 + 64]
                    require mem[_292 + 96] == mem[_292 + 126 len 2]
                    mem[_294 + 96] = mem[_292 + 96]
                    mem[_294 + 128] = mem[_292 + 128]
                    require mem[_292 + 160] == mem[_292 + 191 len 1]
                    mem[_294 + 160] = mem[_292 + 160]
                    mem[_294 + 192] = mem[_292 + 192]
                    require mem[_292 + 224] == mem[_292 + 248 len 8]
                    mem[_294 + 224] = mem[_292 + 224]
                    if stor10 > !mem[_294 + 191 len 1]:
                        revert with 0, 17
                    stor10 += mem[_294 + 191 len 1]
                    if stor9 == -1:
                        revert with 0, 17
                    stor9++
                    mem[0] = mem[_294 + 191 len 1]
                    stor14[cd[((32 * idx) + cd[4] + 36)] << 240] = stor13[mem[0]].field_0
                    stor13[mem[0]].field_0++
                    stor13[mem[0]][stor13[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor13[mem[0]][stor13[mem[0]].field_0].field_256 = sub_219bec0b
                    stor13[mem[0]][stor13[mem[0]].field_0].field_512 = block.timestamp
                    stor13[mem[0]][stor13[mem[0]].field_0].field_768 = msg.sender
                    mem[32] = 11
                    stor11[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 11)
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor11[address(msg.sender)][stor11[address(msg.sender)].field_0].field_16 = 0
                emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _194 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ('cd', 4).length
        idx = 0
        s = mem[64] + 64
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == uint16(cd[t])
            mem[s] = uint16(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x316db566: mem[mem[64] len _194 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
    stor1 = 1
}



}
