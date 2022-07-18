contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address stor1;
address stor2;
mapping of struct sub_ebfa75cc;
uint256 sub_5619a140;
uint256 MINIMUM_TO_EXIT;
uint256 TAX_PERCENTAGE;
uint256 sub_e89f3573;
uint256 sub_f2fab86d;
uint256 sub_3e5294e2;
uint256 sub_273d9f3f;
uint8 stor11;

function sub_273d9f3f(?) payable {
    return sub_273d9f3f
}

function MINIMUM_TO_EXIT() payable {
    return MINIMUM_TO_EXIT
}

function sub_3e5294e2(?) payable {
    return sub_3e5294e2
}

function sub_5619a140(?) payable {
    return sub_5619a140
}

function paused() payable {
    return bool(stor0)
}

function TAX_PERCENTAGE() payable {
    return TAX_PERCENTAGE
}

function owner() payable {
    return owner
}

function sub_e89f3573(?) payable {
    return sub_e89f3573
}

function sub_ebfa75cc(?) payable {
    require calldata.size - 4 >= 32
    return sub_ebfa75cc[arg1].field_0, sub_ebfa75cc[arg1].field_0, sub_ebfa75cc[arg1].field_96
}

function sub_f2fab86d(?) payable {
    return sub_f2fab86d
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

function sub_7ae14afa(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
    stor2 = address(arg2)
}

function setSettings(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5619a140 = arg1
    sub_e89f3573 = arg2
    TAX_PERCENTAGE = arg3
    MINIMUM_TO_EXIT = arg4
    sub_f2fab86d = arg5
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
            revert with 0, 'Pausable: not paused'
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        if stor0:
            revert with 0, 'Pausable: paused'
        stor0 = 1
        emit Paused(msg.sender);
}

function sub_f2646dcb(?) payable {
    require calldata.size - 4 >= 32
    staticcall stor1.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 2
    if ext_call.return_data[0] > 1:
        revert with 0, 33
    if ext_call.return_data[0]:
        return 0
    return 1
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot send tokens to Hive directly'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_f8d20665(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall stor1.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 2
    if ext_call.return_data[0] > 1:
        revert with 0, 33
    if ext_call.return_data[0]:
        if not sub_273d9f3f:
            revert with 0, 17
        sub_273d9f3f--
    else:
        if not sub_3e5294e2:
            revert with 0, 17
        sub_3e5294e2--
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args this.address, sub_ebfa75cc[arg1].field_0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ebfa75cc[arg1].field_0 = 0
}

function sub_200b9821(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if stor11:
        revert with 0, 'No reentrancy'
    stor11 = 1
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, 'Only EOA'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 3
        _57 = mem[64]
        mem[64] = mem[64] + 96
        mem[_57] = sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_0
        mem[_57 + 32] = sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16
        mem[_57 + 64] = sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_96
        if sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 != msg.sender:
            revert with 0, 'SWIPER, NO SWIPING'
        if block.timestamp < sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
            revert with 0, 17
        if block.timestamp - sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 <= MINIMUM_TO_EXIT:
            revert with 0, 'GONNA BE  COLD WITHOUT TWO DAY'S HONEY'
        if block.timestamp < sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
            revert with 0, 17
        if block.timestamp - sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 and sub_5619a140 > -1 / block.timestamp - sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16:
            revert with 0, 17
        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[4] + 36)])
        staticcall stor1.getTokenTraits(uint256 arg1) with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not cd[36]:
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_68] < 2
            if mem[_68] > 1:
                revert with 0, 33
            if mem[_68]:
                if (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 and sub_e89f3573 > -1 / (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600:
                    revert with 0, 17
                _72 = mem[64]
                mem[64] = mem[64] + 96
                mem[_72] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[_72 + 32] = Mask(80, 0, block.timestamp)
                mem[_72 + 64] = msg.sender
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 * sub_e89f3573
                mem[mem[64] + 64] = bool(cd[36])
                mem[mem[64] + 96] = 0
                emit 0x49ca5970: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 * sub_e89f3573, bool(cd[36]), 0
                if 0 > !((block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 * sub_e89f3573):
                    revert with 0, 17
            else:
                if 100 < TAX_PERCENTAGE:
                    revert with 0, 17
                if (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 and -TAX_PERCENTAGE + 100 > -1 / (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600:
                    revert with 0, 17
                _86 = mem[64]
                mem[64] = mem[64] + 96
                mem[_86] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[_86 + 32] = Mask(80, 0, block.timestamp)
                mem[_86 + 64] = msg.sender
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[4] + 36)])
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_96 = msg.sender
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (100 * (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600) - (TAX_PERCENTAGE * (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600) / 100
                mem[mem[64] + 64] = bool(cd[36])
                mem[mem[64] + 96] = 0
                emit 0x49ca5970: cd[((32 * idx) + cd[4] + 36)] << 240, (100 * (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600) - (TAX_PERCENTAGE * (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600) / 100, bool(cd[36]), 0
                if 0 > !((100 * (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600) - (TAX_PERCENTAGE * (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600) / 100):
                    revert with 0, 17
        else:
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] < 2
            if mem[_69] > 1:
                revert with 0, 33
            if mem[_69]:
                if (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 and sub_e89f3573 > -1 / (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600:
                    revert with 0, 17
                if not sub_273d9f3f:
                    revert with 0, 17
                sub_273d9f3f--
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                mem[mem[64]] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 32] = (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 * sub_e89f3573
                mem[mem[64] + 64] = bool(cd[36])
                mem[mem[64] + 96] = 0
                emit 0x49ca5970: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 * sub_e89f3573, bool(cd[36]), 0
                if 0 > !((block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600 * sub_e89f3573):
                    revert with 0, 17
            else:
                if block.number < 1:
                    revert with 0, 17
                _73 = mem[64]
                mem[mem[64] + 32] = tx.origin
                mem[mem[64] + 52] = block.hash(block.number - 1)
                mem[mem[64] + 84] = block.timestamp
                mem[mem[64] + 116] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 148] = sub_3e5294e2
                mem[mem[64] + 180] = sub_273d9f3f
                _74 = mem[64]
                mem[mem[64]] = 180
                mem[64] = mem[64] + 212
                if not sub_3e5294e2:
                    revert with 0, 17
                sub_3e5294e2--
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, uint16(cd[((32 * idx) + cd[4] + 36)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 3
                sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_0 = 0
                mem[_73 + 212] = uint16(cd[((32 * idx) + cd[4] + 36)])
                if sha3(mem[_74 + 32 len mem[_74]]) % 100 < sub_f2fab86d:
                    mem[_73 + 244] = 0
                    mem[_73 + 276] = bool(cd[36])
                    mem[_73 + 308] = 1
                    emit 0x49ca5970: cd[((32 * idx) + cd[4] + 36)] << 240, 0, bool(cd[36]), 1
                else:
                    mem[_73 + 244] = (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600
                    mem[_73 + 276] = bool(cd[36])
                    mem[_73 + 308] = 0
                    emit 0x49ca5970: cd[((32 * idx) + cd[4] + 36)] << 240, (block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600, bool(cd[36]), 0
                    if 0 > !((block.timestamp * sub_5619a140) - (sub_ebfa75cc[cd[((32 * idx) + cd[4] + 36)] << 240].field_16 * sub_5619a140) / 24 * 3600):
                        revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor11 = 0
}

function sub_4fee53a7(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if stor11:
        revert with 0, 'No reentrancy'
    stor11 = 1
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
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    _130 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_130] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_130 + 32] = Mask(80, 0, block.timestamp)
                    mem[_130 + 64] = address(cd[4])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _157 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_157] < 2
                    if mem[_157] > 1:
                        revert with 0, 33
                    if mem[_157]:
                        if not sub_273d9f3f + 1:
                            revert with 0, 17
                        sub_273d9f3f++
                    else:
                        if not sub_3e5294e2 + 1:
                            revert with 0, 17
                        sub_3e5294e2++
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    staticcall stor1.0x6352211e with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _127 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_127] == mem[_127 + 12 len 20]
                    if mem[_127 + 12 len 20] != msg.sender:
                        revert with 0, 'AINT YO TOKEN'
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 36] = this.address
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
                    if stor0:
                        revert with 0, 'Pausable: paused'
                    _190 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_190] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[_190 + 32] = Mask(80, 0, block.timestamp)
                    mem[_190 + 64] = address(cd[4])
                    mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 3
                    sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                    sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                    sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    staticcall stor1.getTokenTraits(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _214 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_214] < 2
                    if mem[_214] > 1:
                        revert with 0, 33
                    if mem[_214]:
                        if not sub_273d9f3f + 1:
                            revert with 0, 17
                        sub_273d9f3f++
                    else:
                        if not sub_3e5294e2 + 1:
                            revert with 0, 17
                        sub_3e5294e2++
                mem[mem[64]] = address(cd[4])
                mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 64] = block.timestamp
                emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
            if not idx + 1:
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
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        _136 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_136] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_136 + 32] = Mask(80, 0, block.timestamp)
                        mem[_136 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _159 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_159] < 2
                        if mem[_159] > 1:
                            revert with 0, 33
                        if mem[_159]:
                            if not sub_273d9f3f + 1:
                                revert with 0, 17
                            sub_273d9f3f++
                        else:
                            if not sub_3e5294e2 + 1:
                                revert with 0, 17
                            sub_3e5294e2++
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _128 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_128] == mem[_128 + 12 len 20]
                        if mem[_128 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 36] = this.address
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
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        _196 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_196] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_196 + 32] = Mask(80, 0, block.timestamp)
                        mem[_196 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _216 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_216] < 2
                        if mem[_216] > 1:
                            revert with 0, 33
                        if mem[_216]:
                            if not sub_273d9f3f + 1:
                                revert with 0, 17
                            sub_273d9f3f++
                        else:
                            if not sub_3e5294e2 + 1:
                                revert with 0, 17
                            sub_3e5294e2++
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                if not idx + 1:
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
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        _142 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_142] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_142 + 32] = Mask(80, 0, block.timestamp)
                        mem[_142 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_161] < 2
                        if mem[_161] > 1:
                            revert with 0, 33
                        if mem[_161]:
                            if not sub_273d9f3f + 1:
                                revert with 0, 17
                            sub_273d9f3f++
                        else:
                            if not sub_3e5294e2 + 1:
                                revert with 0, 17
                            sub_3e5294e2++
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _129 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_129] == mem[_129 + 12 len 20]
                        if mem[_129 + 12 len 20] != msg.sender:
                            revert with 0, 'AINT YO TOKEN'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 36] = this.address
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
                        if stor0:
                            revert with 0, 'Pausable: paused'
                        _202 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_202] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_202 + 32] = Mask(80, 0, block.timestamp)
                        mem[_202 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 3
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_0 = uint16(cd[((32 * idx) + cd[36] + 36)])
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_16 = Mask(80, 0, block.timestamp)
                        sub_ebfa75cc[cd[((32 * idx) + cd[36] + 36)] << 240].field_96 = address(cd[4])
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall stor1.getTokenTraits(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _218 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_218] < 2
                        if mem[_218] > 1:
                            revert with 0, 33
                        if mem[_218]:
                            if not sub_273d9f3f + 1:
                                revert with 0, 17
                            sub_273d9f3f++
                        else:
                            if not sub_3e5294e2 + 1:
                                revert with 0, 17
                            sub_3e5294e2++
                    mem[mem[64]] = address(cd[4])
                    mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = block.timestamp
                    emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                if not idx + 1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    stor11 = 0
}



}
