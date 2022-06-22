contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d33505d(?)
#  - sub_394ffebd(?)
#
address owner;
uint256 stor1;
uint8 stor2;
address randomizerAddress; offset 8
address sub_809deb63Address;
address sub_dac55cd4Address;
address sub_f3211b5eAddress;
uint256 sub_f4e86e84;
uint256 sub_ccf7e0e6;
uint256 sub_0e96c798;
uint256 stor9;
uint256 stor10;
uint256 stor11;
array of struct stor12;
mapping of struct stor13;
array of struct stor14;
mapping of uint256 stor15;
uint256 sub_8c59295c;
mapping of uint8 stor18;

function sub_0e96c798(?) payable {
    return sub_0e96c798
}

function paused() payable {
    return bool(stor2)
}

function sub_809deb63(?) payable {
    return sub_809deb63Address
}

function sub_8c59295c(?) payable {
    if not stor18[msg.sender]:
        revert with 0, 'Arena: Only admins can call this'
    return sub_8c59295c
}

function owner() payable {
    return owner
}

function sub_ccf7e0e6(?) payable {
    return sub_ccf7e0e6
}

function sub_dac55cd4(?) payable {
    return sub_dac55cd4Address
}

function randomizer() payable {
    return randomizerAddress
}

function sub_f3211b5e(?) payable {
    return sub_f3211b5eAddress
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

function sub_8f46d3cc(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ccf7e0e6 = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = 1
}

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor18[address(arg1)] = 0
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

function setContracts(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    randomizerAddress = arg1
    sub_809deb63Address = arg2
    sub_f3211b5eAddress = arg3
    sub_dac55cd4Address = arg4
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

function sub_f0e2e6ca(?) payable {
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

function sub_2071511b(?) payable {
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
    return stor11
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

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not randomizerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Arena: Randomizer contract not set'
    if not sub_809deb63Address:
        revert with 0, 'Arena: NFT contract not set'
    if not sub_dac55cd4Address:
        revert with 0, 'Arena: Game contract not set'
    if not sub_f3211b5eAddress:
        revert with 0, 'Arena: Blood contract not set'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not stor2:
            revert with 0, 'Pausable: not paused'
        stor2 = 0
        emit Unpaused(msg.sender);
    else:
        if stor2:
            revert with 0, 'Pausable: paused'
        stor2 = 1
        emit Paused(msg.sender);
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
    if stor12[address(arg1)].field_0:
        mem[ceil32(return_data.size) + 128] = stor12[address(arg1)].field_0
        idx = ceil32(return_data.size) + 128
        s = 0
        while ceil32(return_data.size) + (32 * stor12[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor12[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor12[address(arg1)].field_0, data=mem[ceil32(return_data.size) + 128 len 32 * stor12[address(arg1)].field_0]), 
    mem[ceil32(return_data.size) + (32 * stor12[address(arg1)].field_0) + 128] = 32
    mem[ceil32(return_data.size) + (32 * stor12[address(arg1)].field_0) + 160] = stor12[address(arg1)].field_0
    mem[ceil32(return_data.size) + (32 * stor12[address(arg1)].field_0) + 192 len 32 * stor12[address(arg1)].field_0] = mem[ceil32(return_data.size) + 128 len 32 * stor12[address(arg1)].field_0]
    return memory
      from ceil32(return_data.size) + (32 * stor12[address(arg1)].field_0) + 128
       len (96 * stor12[address(arg1)].field_0) + 64
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
    staticcall sub_809deb63Address.0x49492fa1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        if stor13[arg1].field_768 != msg.sender:
            if not stor18[msg.sender]:
                revert with 0, 32, 43, 0xfe4172656e613a20596f7520646f6e2774206f776e207468697320746f6b656e, '(_getStake)' << 168
        return stor13[arg1].field_0, stor13[arg1].field_256, stor13[arg1].field_512, stor13[arg1].field_768
    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 352
    if not bool((6 * ceil32(return_data.size)) + 832 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    require ext_call.return_data[96] == ext_call.return_data[126 len 2]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    require ext_call.return_data[320] == ext_call.return_data[344 len 8]
    if stor15[arg1] >= stor14[ext_call.return_data[191 len 1]].field_0:
        revert with 0, 50
    if stor14[ext_call.return_data[191 len 1]][stor15[arg1]].field_768 != msg.sender:
        if not stor18[msg.sender]:
            revert with 0, 32, 43, 0xfe4172656e613a20596f7520646f6e2774206f776e207468697320746f6b656e, '(_getStake)' << 168
    return stor14[ext_call.return_data[191 len 1]][stor15[arg1]].field_0, 
           stor14[ext_call.return_data[191 len 1]][stor15[arg1]].field_256,
           stor14[ext_call.return_data[191 len 1]][stor15[arg1]].field_512,
           stor14[ext_call.return_data[191 len 1]][stor15[arg1]].field_768
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
                    staticcall sub_809deb63Address.0x49492fa1 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_227] == bool(mem[_227])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    if mem[_227]:
                        _238 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_238] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_238 + 32] = 0
                        mem[_238 + 64] = Mask(80, 0, block.timestamp)
                        mem[_238 + 96] = msg.sender
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                        mem[32] = 12
                        stor12[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 12)
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                        if stor9 == -1:
                            revert with 0, 17
                        stor9++
                    else:
                        _237 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_237] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_237 + 32] = sub_8c59295c
                        mem[_237 + 64] = block.timestamp
                        mem[_237 + 96] = msg.sender
                        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        _269 = mem[64]
                        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 352
                        require mem[_263] == bool(mem[_263])
                        mem[_269] = mem[_263]
                        require mem[_263 + 32] == bool(mem[_263 + 32])
                        mem[_269 + 32] = mem[_263 + 32]
                        require mem[_263 + 64] == bool(mem[_263 + 64])
                        mem[_269 + 64] = mem[_263 + 64]
                        require mem[_263 + 96] == mem[_263 + 126 len 2]
                        mem[_269 + 96] = mem[_263 + 96]
                        mem[_269 + 128] = mem[_263 + 128]
                        require mem[_263 + 160] == mem[_263 + 191 len 1]
                        mem[_269 + 160] = mem[_263 + 160]
                        mem[_269 + 192] = mem[_263 + 192]
                        require mem[_263 + 224] == mem[_263 + 255 len 1]
                        mem[_269 + 224] = mem[_263 + 224]
                        require mem[_263 + 256] == mem[_263 + 287 len 1]
                        mem[_269 + 256] = mem[_263 + 256]
                        require mem[_263 + 288] == mem[_263 + 319 len 1]
                        mem[_269 + 288] = mem[_263 + 288]
                        require mem[_263 + 320] == mem[_263 + 344 len 8]
                        mem[_269 + 320] = mem[_263 + 320]
                        if stor11 > !mem[_269 + 191 len 1]:
                            revert with 0, 17
                        stor11 += mem[_269 + 191 len 1]
                        if stor10 == -1:
                            revert with 0, 17
                        stor10++
                        mem[0] = mem[_269 + 191 len 1]
                        stor15[cd[((32 * idx) + cd[4] + 36)] << 240] = stor14[mem[0]].field_0
                        stor14[mem[0]].field_0++
                        stor14[mem[0]][stor14[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor14[mem[0]][stor14[mem[0]].field_0].field_256 = sub_8c59295c
                        stor14[mem[0]][stor14[mem[0]].field_0].field_512 = block.timestamp
                        stor14[mem[0]][stor14[mem[0]].field_0].field_768 = msg.sender
                        mem[32] = 12
                        stor12[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 12)
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                    emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_213] == mem[_213 + 12 len 20]
                if mem[_213 + 12 len 20] != msg.sender:
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
                staticcall sub_809deb63Address.0x49492fa1 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _264 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_264] == bool(mem[_264])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if mem[_264]:
                    _278 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_278] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_278 + 32] = 0
                    mem[_278 + 64] = Mask(80, 0, block.timestamp)
                    mem[_278 + 96] = msg.sender
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                    mem[32] = 12
                    stor12[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 12)
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                    if stor9 == -1:
                        revert with 0, 17
                    stor9++
                else:
                    _277 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_277] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_277 + 32] = sub_8c59295c
                    mem[_277 + 64] = block.timestamp
                    mem[_277 + 96] = msg.sender
                    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _301 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    _303 = mem[64]
                    if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 352
                    require mem[_301] == bool(mem[_301])
                    mem[_303] = mem[_301]
                    require mem[_301 + 32] == bool(mem[_301 + 32])
                    mem[_303 + 32] = mem[_301 + 32]
                    require mem[_301 + 64] == bool(mem[_301 + 64])
                    mem[_303 + 64] = mem[_301 + 64]
                    require mem[_301 + 96] == mem[_301 + 126 len 2]
                    mem[_303 + 96] = mem[_301 + 96]
                    mem[_303 + 128] = mem[_301 + 128]
                    require mem[_301 + 160] == mem[_301 + 191 len 1]
                    mem[_303 + 160] = mem[_301 + 160]
                    mem[_303 + 192] = mem[_301 + 192]
                    require mem[_301 + 224] == mem[_301 + 255 len 1]
                    mem[_303 + 224] = mem[_301 + 224]
                    require mem[_301 + 256] == mem[_301 + 287 len 1]
                    mem[_303 + 256] = mem[_301 + 256]
                    require mem[_301 + 288] == mem[_301 + 319 len 1]
                    mem[_303 + 288] = mem[_301 + 288]
                    require mem[_301 + 320] == mem[_301 + 344 len 8]
                    mem[_303 + 320] = mem[_301 + 320]
                    if stor11 > !mem[_303 + 191 len 1]:
                        revert with 0, 17
                    stor11 += mem[_303 + 191 len 1]
                    if stor10 == -1:
                        revert with 0, 17
                    stor10++
                    mem[0] = mem[_303 + 191 len 1]
                    stor15[cd[((32 * idx) + cd[4] + 36)] << 240] = stor14[mem[0]].field_0
                    stor14[mem[0]].field_0++
                    stor14[mem[0]][stor14[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor14[mem[0]][stor14[mem[0]].field_0].field_256 = sub_8c59295c
                    stor14[mem[0]][stor14[mem[0]].field_0].field_512 = block.timestamp
                    stor14[mem[0]][stor14[mem[0]].field_0].field_768 = msg.sender
                    mem[32] = 12
                    stor12[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 12)
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _205 = mem[64]
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
        emit 0x316db566: mem[mem[64] len _205 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
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
                    staticcall sub_809deb63Address.0x49492fa1 with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _229 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_229] == bool(mem[_229])
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                    if mem[_229]:
                        _245 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_245] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_245 + 32] = 0
                        mem[_245 + 64] = Mask(80, 0, block.timestamp)
                        mem[_245 + 96] = msg.sender
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                        stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                        mem[32] = 12
                        stor12[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 12)
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                        if stor9 == -1:
                            revert with 0, 17
                        stor9++
                    else:
                        _244 = mem[64]
                        mem[64] = mem[64] + 128
                        mem[_244] = uint16(cd[((32 * idx) + cd[4] + 36)])
                        mem[_244 + 32] = sub_8c59295c
                        mem[_244 + 64] = block.timestamp
                        mem[_244 + 96] = msg.sender
                        staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[4] + 36)] << 240)
                        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 352
                        _271 = mem[64]
                        if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 352
                        require mem[_265] == bool(mem[_265])
                        mem[_271] = mem[_265]
                        require mem[_265 + 32] == bool(mem[_265 + 32])
                        mem[_271 + 32] = mem[_265 + 32]
                        require mem[_265 + 64] == bool(mem[_265 + 64])
                        mem[_271 + 64] = mem[_265 + 64]
                        require mem[_265 + 96] == mem[_265 + 126 len 2]
                        mem[_271 + 96] = mem[_265 + 96]
                        mem[_271 + 128] = mem[_265 + 128]
                        require mem[_265 + 160] == mem[_265 + 191 len 1]
                        mem[_271 + 160] = mem[_265 + 160]
                        mem[_271 + 192] = mem[_265 + 192]
                        require mem[_265 + 224] == mem[_265 + 255 len 1]
                        mem[_271 + 224] = mem[_265 + 224]
                        require mem[_265 + 256] == mem[_265 + 287 len 1]
                        mem[_271 + 256] = mem[_265 + 256]
                        require mem[_265 + 288] == mem[_265 + 319 len 1]
                        mem[_271 + 288] = mem[_265 + 288]
                        require mem[_265 + 320] == mem[_265 + 344 len 8]
                        mem[_271 + 320] = mem[_265 + 320]
                        if stor11 > !mem[_271 + 191 len 1]:
                            revert with 0, 17
                        stor11 += mem[_271 + 191 len 1]
                        if stor10 == -1:
                            revert with 0, 17
                        stor10++
                        mem[0] = mem[_271 + 191 len 1]
                        stor15[cd[((32 * idx) + cd[4] + 36)] << 240] = stor14[mem[0]].field_0
                        stor14[mem[0]].field_0++
                        stor14[mem[0]][stor14[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor14[mem[0]][stor14[mem[0]].field_0].field_256 = sub_8c59295c
                        stor14[mem[0]][stor14[mem[0]].field_0].field_512 = block.timestamp
                        stor14[mem[0]][stor14[mem[0]].field_0].field_768 = msg.sender
                        mem[32] = 12
                        stor12[address(msg.sender)].field_0++
                        mem[0] = sha3(address(msg.sender), 12)
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                        stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                    emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            else:
                mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
                staticcall sub_809deb63Address.0x6352211e with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _214 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_214] == mem[_214 + 12 len 20]
                if mem[_214 + 12 len 20] != msg.sender:
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
                staticcall sub_809deb63Address.0x49492fa1 with:
                        gas gas_remaining wei
                       args (cd[((32 * idx) + cd[4] + 36)] << 240)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == bool(mem[_266])
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
                if mem[_266]:
                    _285 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_285] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_285 + 32] = 0
                    mem[_285 + 64] = Mask(80, 0, block.timestamp)
                    mem[_285 + 96] = msg.sender
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_256 = 0
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_512 = Mask(80, 0, block.timestamp)
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_592 = 0
                    stor13[cd[((32 * idx) + cd[4] + 36)] << 240].field_768 = msg.sender
                    mem[32] = 12
                    stor12[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 12)
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                    if stor9 == -1:
                        revert with 0, 17
                    stor9++
                else:
                    _284 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_284] = uint16(cd[((32 * idx) + cd[4] + 36)])
                    mem[_284 + 32] = sub_8c59295c
                    mem[_284 + 64] = block.timestamp
                    mem[_284 + 96] = msg.sender
                    staticcall sub_809deb63Address.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[4] + 36)] << 240)
                    mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 352
                    _305 = mem[64]
                    if mem[64] + 352 < mem[64] or mem[64] + 352 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 352
                    require mem[_302] == bool(mem[_302])
                    mem[_305] = mem[_302]
                    require mem[_302 + 32] == bool(mem[_302 + 32])
                    mem[_305 + 32] = mem[_302 + 32]
                    require mem[_302 + 64] == bool(mem[_302 + 64])
                    mem[_305 + 64] = mem[_302 + 64]
                    require mem[_302 + 96] == mem[_302 + 126 len 2]
                    mem[_305 + 96] = mem[_302 + 96]
                    mem[_305 + 128] = mem[_302 + 128]
                    require mem[_302 + 160] == mem[_302 + 191 len 1]
                    mem[_305 + 160] = mem[_302 + 160]
                    mem[_305 + 192] = mem[_302 + 192]
                    require mem[_302 + 224] == mem[_302 + 255 len 1]
                    mem[_305 + 224] = mem[_302 + 224]
                    require mem[_302 + 256] == mem[_302 + 287 len 1]
                    mem[_305 + 256] = mem[_302 + 256]
                    require mem[_302 + 288] == mem[_302 + 319 len 1]
                    mem[_305 + 288] = mem[_302 + 288]
                    require mem[_302 + 320] == mem[_302 + 344 len 8]
                    mem[_305 + 320] = mem[_302 + 320]
                    if stor11 > !mem[_305 + 191 len 1]:
                        revert with 0, 17
                    stor11 += mem[_305 + 191 len 1]
                    if stor10 == -1:
                        revert with 0, 17
                    stor10++
                    mem[0] = mem[_305 + 191 len 1]
                    stor15[cd[((32 * idx) + cd[4] + 36)] << 240] = stor14[mem[0]].field_0
                    stor14[mem[0]].field_0++
                    stor14[mem[0]][stor14[mem[0]].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor14[mem[0]][stor14[mem[0]].field_0].field_256 = sub_8c59295c
                    stor14[mem[0]][stor14[mem[0]].field_0].field_512 = block.timestamp
                    stor14[mem[0]][stor14[mem[0]].field_0].field_768 = msg.sender
                    mem[32] = 12
                    stor12[address(msg.sender)].field_0++
                    mem[0] = sha3(address(msg.sender), 12)
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                    stor12[address(msg.sender)][stor12[address(msg.sender)].field_0].field_16 = 0
                emit TokenStaked(msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)]));
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _206 = mem[64]
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
        emit 0x316db566: mem[mem[64] len _206 + (32 * ('cd', 4).length) + -mem[64] + 64], msg.sender
    stor1 = 1
}



}
