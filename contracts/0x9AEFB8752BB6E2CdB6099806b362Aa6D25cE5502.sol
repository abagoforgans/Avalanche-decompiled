contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint64 stor51;
uint128 stor51; offset 64
address owner;
uint8 stor101;
address stor151;
address stor152;
address stor202;
address stor203;
uint8 sub_e3ab5ade; offset 160
uint128 stor204; offset 160
address stor204;
mapping of uint8 stor205;
mapping of uint256 sub_1c97b366;
mapping of uint256 sub_3281b904;
mapping of uint256 sub_44d18414;

function sub_1c97b366(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_1c97b366[arg1][arg2]
}

function sub_24a176bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor205[arg1])
}

function sub_3281b904(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_3281b904[arg1]
}

function sub_44d18414(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_44d18414[arg1]
}

function paused() payable {
    return bool(stor101)
}

function owner() payable {
    return owner
}

function sub_e3ab5ade(?) payable {
    return bool(sub_e3ab5ade)
}

function _fallback() payable {
    revert
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor151)
}

function isTrustedForwarder(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor152)
}

function renouncePauser() payable {
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    emit PauserChanged(stor151, 0);
    stor151 = 0
}

function changePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    require arg1
    emit PauserChanged(stor151, arg1);
    stor151 = arg1
}

function renounceOwnership() payable {
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setTokenManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    stor203 = arg1
}

function sub_59ca6c01(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == address(cd[4])
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    stor202 = address(cd[4])
}

function setLpToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    address(stor204.field_0) = arg1
}

function pause() payable {
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if stor101:
        revert with 0, 'Pausable: paused'
    stor101 = 1
    if stor152 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() payable {
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if not stor101:
        revert with 0, 'Pausable: not paused'
    stor101 = 0
    if stor152 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function sub_e23fec91(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    if stor152 != msg.sender:
        if stor202 != msg.sender:
            revert with 0, 'ERR__UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != stor202:
            revert with 0, 'ERR__UNAUTHORIZED'
    if stor101:
        revert with 0, 'Pausable: paused'
}

function sub_80f816a7(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] == bool(cd[4])
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor204.field_160) = Mask(96, 0, bool(cd[4]))
    emit 0x2b35d8fb: bool(cd[4])
}

function sub_04ca2fe6(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    if stor152 != msg.sender:
        if address(stor204.field_0) != msg.sender:
            revert with 0, 'ERR__UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(stor204.field_0):
            revert with 0, 'ERR__UNAUTHORIZED'
    if stor101:
        revert with 0, 'Pausable: paused'
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_645625f3(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    if stor152 != msg.sender:
        if stor202 != msg.sender:
            revert with 0, 'ERR__UNAUTHORIZED'
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != stor202:
            revert with 0, 'ERR__UNAUTHORIZED'
    if stor101:
        revert with 0, 'Pausable: paused'
    require ext_code.size(stor202)
    staticcall stor202.0xb3524e30 with:
            gas gas_remaining wei
           args address(cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !cd[68]:
        revert with 0, 17
    if sub_e3ab5ade:
        if ext_call.return_data[0] + cd[68] > sub_3281b904[address(cd[36])]:
            revert with 0, 'ERR__LIQUIDITY_EXCEEDS_PTTC'
}

function sub_d1360206(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    if not address(cd[4]):
        revert with 0, 'Token address cannot be 0'
    require ext_code.size(stor203)
    staticcall stor203.0xfa5e2abc with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if cd[36] > sub_3281b904[address(cd[4])]:
        revert with 0, 'ERR__PWC_GT_PTTC'
    if cd[36] != sub_44d18414[address(cd[4])]:
        sub_44d18414[address(cd[4])] = cd[36]
        emit 0x655d8d8c: cd[36], address(cd[4])
}

function sub_f614d9f8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(stor204.field_0))
    staticcall address(stor204.field_0).0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 1
    s = 0
    while idx <= ext_call.return_data[0]:
        mem[0] = address(arg1)
        mem[32] = 207
        mem[mem[64] + 4] = idx
        require ext_code.size(address(stor204.field_0))
        staticcall address(stor204.field_0).0x6352211e with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_18] == mem[_18 + 12 len 20]
        mem[0] = mem[_18 + 12 len 20]
        mem[32] = sha3(address(arg1), 207)
        if idx == -1:
            revert with 0, 17
        if sub_1c97b366[address(arg1)][mem[0]] <= s:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = sub_1c97b366[address(arg1)][mem[0]]
        continue 
    return s
}

function sub_b6f13320(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    if not address(cd[4]):
        revert with 0, 'Token address cannot be 0'
    require ext_code.size(stor203)
    staticcall stor203.0xfa5e2abc with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor202)
    staticcall stor202.0xb3524e30 with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > cd[36]:
        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
    if cd[36] < sub_44d18414[address(cd[4])]:
        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
    if cd[36] != sub_3281b904[address(cd[4])]:
        sub_3281b904[address(cd[4])] = cd[36]
        emit 0x3aa2b0bd: cd[36], address(cd[4])
}

function sub_9cbdba3d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == bool(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'ERR__LENGTH_MISMATCH'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 205
        stor205[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * ('cd', 4).length) + 160]))
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        emit 0x3b2137fe: mem[(32 * idx) + 140 len 20], bool(mem[(32 * idx) + (32 * ('cd', 4).length) + 160])
        idx = idx + 1
        continue 
}

function sub_4fa55693(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if not address(cd[4]):
        revert with 0, 'Token address cannot be 0'
    require ext_code.size(stor203)
    staticcall stor203.0xfa5e2abc with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool(ceil32(return_data.size) + 320 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor202)
    staticcall stor202.0xb3524e30 with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > cd[36]:
        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
    if cd[36] < sub_44d18414[address(cd[4])]:
        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
    if cd[36] != sub_3281b904[address(cd[4])]:
        sub_3281b904[address(cd[4])] = cd[36]
        emit 0x3aa2b0bd: cd[36], address(cd[4])
    if not address(cd[4]):
        revert with 0, 'Token address cannot be 0'
    require ext_code.size(stor203)
    staticcall stor203.0xfa5e2abc with:
            gas gas_remaining wei
           args address(cd[4])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    if not bool((4 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool((4 * ceil32(return_data.size)) + 544 <= test266151307()):
        revert with 0, 65
    if not ext_call.return_data[32]:
        revert with 0, 'Token not supported'
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
    if cd[68] > sub_3281b904[address(cd[4])]:
        revert with 0, 'ERR__PWC_GT_PTTC'
    if cd[68] != sub_44d18414[address(cd[4])]:
        sub_44d18414[address(cd[4])] = cd[68]
        emit 0x655d8d8c: cd[68], address(cd[4])
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        stor152 = arg1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor152 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor152 = arg1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor152 = arg1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        stor152 = arg1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        stor152 = arg1
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if not uint8(stor0.field_8):
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if not uint8(stor0.field_8):
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
    if stor152 != msg.sender:
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        uint64(stor51.field_0) = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        Mask(96, 0, stor51.field_64) = 0
        emit OwnershipTransferred(owner, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    if not arg5:
        revert with 0, 'Pauser Address cannot be 0'
    if uint8(stor0.field_8):
        stor101 = 0
        stor151 = arg5
        sub_e3ab5ade = 1
        stor202 = arg2
        stor203 = arg3
        address(stor204.field_0) = arg4
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor101 = 0
            stor151 = arg5
            sub_e3ab5ade = 1
            stor202 = arg2
            stor203 = arg3
            address(stor204.field_0) = arg4
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                stor101 = 0
                stor151 = arg5
                sub_e3ab5ade = 1
                stor202 = arg2
                stor203 = arg3
                address(stor204.field_0) = arg4
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    stor101 = 0
                    stor151 = arg5
                    sub_e3ab5ade = 1
                    stor202 = arg2
                    stor203 = arg3
                    address(stor204.field_0) = arg4
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    stor101 = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    stor151 = arg5
                    uint8(stor0.field_8) = 0
                    sub_e3ab5ade = 1
                    stor202 = arg2
                    stor203 = arg3
                    address(stor204.field_0) = arg4
                    uint8(stor0.field_8) = 0
}

function sub_f8454133(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 36).length) + 160 < 128 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160 > test266151307():
        revert with 0, 65
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + 160
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if (32 * ('cd', 68).length) + 192 < 160 or (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192 > test266151307():
        revert with 0, 65
    mem[64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192
    mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor152 != msg.sender:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'ERR__LENGTH_MISMACH'
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'ERR__LENGTH_MISMACH'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _3089 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            _3093 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _3097 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if stor152 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Token address cannot be 0'
                require ext_code.size(stor203)
                staticcall stor203.0xfa5e2abc with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3125 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3133 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3133] = mem[_3125]
                require mem[_3125 + 32] == bool(mem[_3125 + 32])
                mem[_3133 + 32] = mem[_3125 + 32]
                mem[_3133 + 64] = mem[_3125 + 64]
                mem[_3133 + 96] = mem[_3125 + 96]
                require return_data.size - 128 >= 64
                _3153 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3153] = mem[_3125 + 128]
                mem[_3153 + 32] = mem[_3125 + 160]
                mem[_3133 + 128] = _3153
                if not mem[_3133 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3089)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3089)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3211 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3211] > _3093:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3093 < sub_44d18414[address(_3089)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3089)
                    mem[32] = 208
                    if _3093 == sub_3281b904[address(_3089)]:
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3367 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3393 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3393] = mem[_3367]
                        require mem[_3367 + 32] == bool(mem[_3367 + 32])
                        mem[_3393 + 32] = mem[_3367 + 32]
                        mem[_3393 + 64] = mem[_3367 + 64]
                        mem[_3393 + 96] = mem[_3367 + 96]
                        require return_data.size - 128 >= 64
                        _3473 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3473] = mem[_3367 + 128]
                        mem[_3473 + 32] = mem[_3367 + 160]
                        mem[_3393 + 128] = _3473
                        if not mem[_3393 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3089)
                        mem[32] = 208
                        sub_3281b904[address(_3089)] = _3093
                        emit 0x3aa2b0bd: _3093, address(_3089)
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3419 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3419] = mem[_3394]
                        require mem[_3394 + 32] == bool(mem[_3394 + 32])
                        mem[_3419 + 32] = mem[_3394 + 32]
                        mem[_3419 + 64] = mem[_3394 + 64]
                        mem[_3419 + 96] = mem[_3394 + 96]
                        require return_data.size - 128 >= 64
                        _3504 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3504] = mem[_3394 + 128]
                        mem[_3504 + 32] = mem[_3394 + 160]
                        mem[_3419 + 128] = _3504
                        if not mem[_3419 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3089)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3089)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3203 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3203] > _3093:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3093 < sub_44d18414[address(_3089)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3089)
                    mem[32] = 208
                    if _3093 == sub_3281b904[address(_3089)]:
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3369 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3369] = mem[_3347]
                        require mem[_3347 + 32] == bool(mem[_3347 + 32])
                        mem[_3369 + 32] = mem[_3347 + 32]
                        mem[_3369 + 64] = mem[_3347 + 64]
                        mem[_3369 + 96] = mem[_3347 + 96]
                        require return_data.size - 128 >= 64
                        _3439 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3439] = mem[_3347 + 128]
                        mem[_3439 + 32] = mem[_3347 + 160]
                        mem[_3369 + 128] = _3439
                        if not mem[_3369 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3089)
                        mem[32] = 208
                        sub_3281b904[address(_3089)] = _3093
                        emit 0x3aa2b0bd: _3093, address(_3089)
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3370 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3395 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3395] = mem[_3370]
                        require mem[_3370 + 32] == bool(mem[_3370 + 32])
                        mem[_3395 + 32] = mem[_3370 + 32]
                        mem[_3395 + 64] = mem[_3370 + 64]
                        mem[_3395 + 96] = mem[_3370 + 96]
                        require return_data.size - 128 >= 64
                        _3475 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3475] = mem[_3370 + 128]
                        mem[_3475 + 32] = mem[_3370 + 160]
                        mem[_3395 + 128] = _3475
                        if not mem[_3395 + 32]:
                            revert with 0, 'Token not supported'
            else:
                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 'Ownable: caller is not the owner'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Token address cannot be 0'
                require ext_code.size(stor203)
                staticcall stor203.0xfa5e2abc with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3122 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3126 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3126] = mem[_3122]
                require mem[_3122 + 32] == bool(mem[_3122 + 32])
                mem[_3126 + 32] = mem[_3122 + 32]
                mem[_3126 + 64] = mem[_3122 + 64]
                mem[_3126 + 96] = mem[_3122 + 96]
                require return_data.size - 128 >= 64
                _3143 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3143] = mem[_3122 + 128]
                mem[_3143 + 32] = mem[_3122 + 160]
                mem[_3126 + 128] = _3143
                if not mem[_3126 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3089)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3089)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3204 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3204] > _3093:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3093 < sub_44d18414[address(_3089)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3089)
                    mem[32] = 208
                    if _3093 == sub_3281b904[address(_3089)]:
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3371 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3371] = mem[_3349]
                        require mem[_3349 + 32] == bool(mem[_3349 + 32])
                        mem[_3371 + 32] = mem[_3349 + 32]
                        mem[_3371 + 64] = mem[_3349 + 64]
                        mem[_3371 + 96] = mem[_3349 + 96]
                        require return_data.size - 128 >= 64
                        _3440 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3440] = mem[_3349 + 128]
                        mem[_3440 + 32] = mem[_3349 + 160]
                        mem[_3371 + 128] = _3440
                        if not mem[_3371 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3089)
                        mem[32] = 208
                        sub_3281b904[address(_3089)] = _3093
                        emit 0x3aa2b0bd: _3093, address(_3089)
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3372 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3396 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3396] = mem[_3372]
                        require mem[_3372 + 32] == bool(mem[_3372 + 32])
                        mem[_3396 + 32] = mem[_3372 + 32]
                        mem[_3396 + 64] = mem[_3372 + 64]
                        mem[_3396 + 96] = mem[_3372 + 96]
                        require return_data.size - 128 >= 64
                        _3477 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3477] = mem[_3372 + 128]
                        mem[_3477 + 32] = mem[_3372 + 160]
                        mem[_3396 + 128] = _3477
                        if not mem[_3396 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3089)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3089)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3193] > _3093:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3093 < sub_44d18414[address(_3089)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3089)
                    mem[32] = 208
                    if _3093 == sub_3281b904[address(_3089)]:
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3328 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3351 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3351] = mem[_3328]
                        require mem[_3328 + 32] == bool(mem[_3328 + 32])
                        mem[_3351 + 32] = mem[_3328 + 32]
                        mem[_3351 + 64] = mem[_3328 + 64]
                        mem[_3351 + 96] = mem[_3328 + 96]
                        require return_data.size - 128 >= 64
                        _3411 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3411] = mem[_3328 + 128]
                        mem[_3411 + 32] = mem[_3328 + 160]
                        mem[_3351 + 128] = _3411
                        if not mem[_3351 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3089)
                        mem[32] = 208
                        sub_3281b904[address(_3089)] = _3093
                        emit 0x3aa2b0bd: _3093, address(_3089)
                        if not address(_3089):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3089)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3352 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3373 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3373] = mem[_3352]
                        require mem[_3352 + 32] == bool(mem[_3352 + 32])
                        mem[_3373 + 32] = mem[_3352 + 32]
                        mem[_3373 + 64] = mem[_3352 + 64]
                        mem[_3373 + 96] = mem[_3352 + 96]
                        require return_data.size - 128 >= 64
                        _3442 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3442] = mem[_3352 + 128]
                        mem[_3442 + 32] = mem[_3352 + 160]
                        mem[_3373 + 128] = _3442
                        if not mem[_3373 + 32]:
                            revert with 0, 'Token not supported'
            if stor152 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            else:
                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 'Ownable: caller is not the owner'
            if _3097 > sub_3281b904[address(_3089)]:
                revert with 0, 'ERR__PWC_GT_PTTC'
            mem[0] = address(_3089)
            mem[32] = 209
            if _3097 != sub_44d18414[address(_3089)]:
                mem[0] = address(_3089)
                mem[32] = 209
                sub_44d18414[address(_3089)] = _3097
                mem[mem[64]] = _3097
                emit 0x655d8d8c: _3097, address(_3089)
            idx = idx + 1
            continue 
    else:
        if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0, 'Ownable: caller is not the owner'
        if ('cd', 4).length != ('cd', 36).length:
            revert with 0, 'ERR__LENGTH_MISMACH'
        if ('cd', 36).length != ('cd', 68).length:
            revert with 0, 'ERR__LENGTH_MISMACH'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 0, 50
            _3091 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            _3095 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _3098 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
            if stor152 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Token address cannot be 0'
                require ext_code.size(stor203)
                staticcall stor203.0xfa5e2abc with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3127 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3134 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3134] = mem[_3127]
                require mem[_3127 + 32] == bool(mem[_3127 + 32])
                mem[_3134 + 32] = mem[_3127 + 32]
                mem[_3134 + 64] = mem[_3127 + 64]
                mem[_3134 + 96] = mem[_3127 + 96]
                require return_data.size - 128 >= 64
                _3155 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3155] = mem[_3127 + 128]
                mem[_3155 + 32] = mem[_3127 + 160]
                mem[_3134 + 128] = _3155
                if not mem[_3134 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3091)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3091)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3216] > _3095:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3095 < sub_44d18414[address(_3091)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3091)
                    mem[32] = 208
                    if _3095 == sub_3281b904[address(_3091)]:
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3374 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3399 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3399] = mem[_3374]
                        require mem[_3374 + 32] == bool(mem[_3374 + 32])
                        mem[_3399 + 32] = mem[_3374 + 32]
                        mem[_3399 + 64] = mem[_3374 + 64]
                        mem[_3399 + 96] = mem[_3374 + 96]
                        require return_data.size - 128 >= 64
                        _3480 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3480] = mem[_3374 + 128]
                        mem[_3480 + 32] = mem[_3374 + 160]
                        mem[_3399 + 128] = _3480
                        if not mem[_3399 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3091)
                        mem[32] = 208
                        sub_3281b904[address(_3091)] = _3095
                        emit 0x3aa2b0bd: _3095, address(_3091)
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3428 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3428] = mem[_3400]
                        require mem[_3400 + 32] == bool(mem[_3400 + 32])
                        mem[_3428 + 32] = mem[_3400 + 32]
                        mem[_3428 + 64] = mem[_3400 + 64]
                        mem[_3428 + 96] = mem[_3400 + 96]
                        require return_data.size - 128 >= 64
                        _3512 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3512] = mem[_3400 + 128]
                        mem[_3512 + 32] = mem[_3400 + 160]
                        mem[_3428 + 128] = _3512
                        if not mem[_3428 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3091)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3091)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3208 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3208] > _3095:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3095 < sub_44d18414[address(_3091)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3091)
                    mem[32] = 208
                    if _3095 == sub_3281b904[address(_3091)]:
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3355 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3376 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3376] = mem[_3355]
                        require mem[_3355 + 32] == bool(mem[_3355 + 32])
                        mem[_3376 + 32] = mem[_3355 + 32]
                        mem[_3376 + 64] = mem[_3355 + 64]
                        mem[_3376 + 96] = mem[_3355 + 96]
                        require return_data.size - 128 >= 64
                        _3445 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3445] = mem[_3355 + 128]
                        mem[_3445 + 32] = mem[_3355 + 160]
                        mem[_3376 + 128] = _3445
                        if not mem[_3376 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3091)
                        mem[32] = 208
                        sub_3281b904[address(_3091)] = _3095
                        emit 0x3aa2b0bd: _3095, address(_3091)
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3377 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3401 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3401] = mem[_3377]
                        require mem[_3377 + 32] == bool(mem[_3377 + 32])
                        mem[_3401 + 32] = mem[_3377 + 32]
                        mem[_3401 + 64] = mem[_3377 + 64]
                        mem[_3401 + 96] = mem[_3377 + 96]
                        require return_data.size - 128 >= 64
                        _3482 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3482] = mem[_3377 + 128]
                        mem[_3482 + 32] = mem[_3377 + 160]
                        mem[_3401 + 128] = _3482
                        if not mem[_3401 + 32]:
                            revert with 0, 'Token not supported'
            else:
                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 'Ownable: caller is not the owner'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Token address cannot be 0'
                require ext_code.size(stor203)
                staticcall stor203.0xfa5e2abc with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + 128])
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3124 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3128 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3128] = mem[_3124]
                require mem[_3124 + 32] == bool(mem[_3124 + 32])
                mem[_3128 + 32] = mem[_3124 + 32]
                mem[_3128 + 64] = mem[_3124 + 64]
                mem[_3128 + 96] = mem[_3124 + 96]
                require return_data.size - 128 >= 64
                _3144 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3144] = mem[_3124 + 128]
                mem[_3144 + 32] = mem[_3124 + 160]
                mem[_3128 + 128] = _3144
                if not mem[_3128 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3091)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3091)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3209] > _3095:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3095 < sub_44d18414[address(_3091)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3091)
                    mem[32] = 208
                    if _3095 == sub_3281b904[address(_3091)]:
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3357 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3378 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3378] = mem[_3357]
                        require mem[_3357 + 32] == bool(mem[_3357 + 32])
                        mem[_3378 + 32] = mem[_3357 + 32]
                        mem[_3378 + 64] = mem[_3357 + 64]
                        mem[_3378 + 96] = mem[_3357 + 96]
                        require return_data.size - 128 >= 64
                        _3446 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3446] = mem[_3357 + 128]
                        mem[_3446 + 32] = mem[_3357 + 160]
                        mem[_3378 + 128] = _3446
                        if not mem[_3378 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3091)
                        mem[32] = 208
                        sub_3281b904[address(_3091)] = _3095
                        emit 0x3aa2b0bd: _3095, address(_3091)
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3379 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3402 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3402] = mem[_3379]
                        require mem[_3379 + 32] == bool(mem[_3379 + 32])
                        mem[_3402 + 32] = mem[_3379 + 32]
                        mem[_3402 + 64] = mem[_3379 + 64]
                        mem[_3402 + 96] = mem[_3379 + 96]
                        require return_data.size - 128 >= 64
                        _3484 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3484] = mem[_3379 + 128]
                        mem[_3484 + 32] = mem[_3379 + 160]
                        mem[_3402 + 128] = _3484
                        if not mem[_3402 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    mem[mem[64] + 4] = address(_3091)
                    require ext_code.size(stor202)
                    staticcall stor202.0xb3524e30 with:
                            gas gas_remaining wei
                           args address(_3091)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_3200] > _3095:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _3095 < sub_44d18414[address(_3091)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_3091)
                    mem[32] = 208
                    if _3095 == sub_3281b904[address(_3091)]:
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3359 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3359] = mem[_3335]
                        require mem[_3335 + 32] == bool(mem[_3335 + 32])
                        mem[_3359 + 32] = mem[_3335 + 32]
                        mem[_3359 + 64] = mem[_3335 + 64]
                        mem[_3359 + 96] = mem[_3335 + 96]
                        require return_data.size - 128 >= 64
                        _3418 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3418] = mem[_3335 + 128]
                        mem[_3418 + 32] = mem[_3335 + 160]
                        mem[_3359 + 128] = _3418
                        if not mem[_3359 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_3091)
                        mem[32] = 208
                        sub_3281b904[address(_3091)] = _3095
                        emit 0x3aa2b0bd: _3095, address(_3091)
                        if not address(_3091):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_3091)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3360 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3380 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3380] = mem[_3360]
                        require mem[_3360 + 32] == bool(mem[_3360 + 32])
                        mem[_3380 + 32] = mem[_3360 + 32]
                        mem[_3380 + 64] = mem[_3360 + 64]
                        mem[_3380 + 96] = mem[_3360 + 96]
                        require return_data.size - 128 >= 64
                        _3448 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3448] = mem[_3360 + 128]
                        mem[_3448 + 32] = mem[_3360 + 160]
                        mem[_3380 + 128] = _3448
                        if not mem[_3380 + 32]:
                            revert with 0, 'Token not supported'
            if stor152 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            else:
                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 'Ownable: caller is not the owner'
            if _3098 > sub_3281b904[address(_3091)]:
                revert with 0, 'ERR__PWC_GT_PTTC'
            mem[0] = address(_3091)
            mem[32] = 209
            if _3098 != sub_44d18414[address(_3091)]:
                mem[0] = address(_3091)
                mem[32] = 209
                sub_44d18414[address(_3091)] = _3098
                mem[mem[64]] = _3098
                emit 0x655d8d8c: _3098, address(_3091)
            idx = idx + 1
            continue 
}



}
