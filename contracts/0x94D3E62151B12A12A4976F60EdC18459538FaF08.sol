contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint64 stor51;
uint128 stor51; offset 64
address owner;
uint8 paused;
address stor151;
address stor152;
address stor202;
address stor203;
uint8 stor204; offset 160
uint128 stor204; offset 160
address stor204;
mapping of uint8 stor205;
mapping of uint256 stor206;
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
    return bool(paused)
}

function owner() payable {
    return owner
}

function sub_e3ab5ade(?) payable {
    return bool(uint8(stor204.field_160))
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
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor152 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() payable {
    if stor151 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only pauser is allowed to perform this operation'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor152 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor205[address(cd[4])]:
        if sub_1c97b366[address(cd[36])][address(cd[4])] < cd[68]:
            revert with 0, 17
        sub_1c97b366[address(cd[36])][address(cd[4])] -= cd[68]
        if stor206[address(cd[36])] < cd[68]:
            revert with 0, 17
        stor206[address(cd[36])] -= cd[68]
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor205[address(cd[4])]:
        if stor206[address(cd[36])] > !cd[68]:
            revert with 0, 17
        if uint8(stor204.field_160):
            if stor206[address(cd[36])] + cd[68] > sub_3281b904[address(cd[36])]:
                revert with 0, 'ERR__LIQUIDITY_EXCEEDS_PTTC'
        if sub_1c97b366[address(cd[36])][address(cd[4])] > !cd[68]:
            revert with 0, 17
        if uint8(stor204.field_160):
            if sub_1c97b366[address(cd[36])][address(cd[4])] + cd[68] > sub_44d18414[address(cd[36])]:
                revert with 0, 'ERR__LIQUIDITY_EXCEEDS_PTWC'
        if stor206[address(cd[36])] > !cd[68]:
            revert with 0, 17
        stor206[address(cd[36])] += cd[68]
        if sub_1c97b366[address(cd[36])][address(cd[4])] > !cd[68]:
            revert with 0, 17
        sub_1c97b366[address(cd[36])][address(cd[4])] += cd[68]
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
    if cd[36] < stor206[address(cd[4])]:
        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
    if cd[36] < sub_44d18414[address(cd[4])]:
        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
    if cd[36] != sub_3281b904[address(cd[4])]:
        sub_3281b904[address(cd[4])] = cd[36]
        emit 0x3aa2b0bd: cd[36], address(cd[4])
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
    if paused:
        revert with 0, 'Pausable: paused'
    if not stor205[address(cd[4])]:
        if sub_1c97b366[address(cd[68])][address(cd[4])] < cd[100]:
            revert with 0, 17
        sub_1c97b366[address(cd[68])][address(cd[4])] -= cd[100]
        if stor206[address(cd[68])] < cd[100]:
            revert with 0, 17
        stor206[address(cd[68])] -= cd[100]
    if not stor205[address(cd[36])]:
        if stor206[address(cd[68])] > !cd[100]:
            revert with 0, 17
        if uint8(stor204.field_160):
            if stor206[address(cd[68])] + cd[100] > sub_3281b904[address(cd[68])]:
                revert with 0, 'ERR__LIQUIDITY_EXCEEDS_PTTC'
        if sub_1c97b366[address(cd[68])][address(cd[36])] > !cd[100]:
            revert with 0, 17
        if uint8(stor204.field_160):
            if sub_1c97b366[address(cd[68])][address(cd[36])] + cd[100] > sub_44d18414[address(cd[68])]:
                revert with 0, 'ERR__LIQUIDITY_EXCEEDS_PTWC'
        if stor206[address(cd[68])] > !cd[100]:
            revert with 0, 17
        stor206[address(cd[68])] += cd[100]
        if sub_1c97b366[address(cd[68])][address(cd[36])] > !cd[100]:
            revert with 0, 17
        sub_1c97b366[address(cd[68])][address(cd[36])] += cd[100]
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
    if cd[36] < stor206[address(cd[4])]:
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
    if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    require return_data.size - 128 >= 64
    if not bool((2 * ceil32(return_data.size)) + 544 <= test266151307()):
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
        paused = 0
        stor151 = arg5
        uint8(stor204.field_160) = 1
        stor202 = arg2
        stor203 = arg3
        address(stor204.field_0) = arg4
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            stor151 = arg5
            uint8(stor204.field_160) = 1
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
                paused = 0
                stor151 = arg5
                uint8(stor204.field_160) = 1
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
                    paused = 0
                    stor151 = arg5
                    uint8(stor204.field_160) = 1
                    stor202 = arg2
                    stor203 = arg3
                    address(stor204.field_0) = arg4
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    paused = 0
                    uint8(stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    stor151 = arg5
                    uint8(stor0.field_8) = 0
                    uint8(stor204.field_160) = 1
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
            _2993 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            _2997 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _3001 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
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
                _3029 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3037 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3037] = mem[_3029]
                require mem[_3029 + 32] == bool(mem[_3029 + 32])
                mem[_3037 + 32] = mem[_3029 + 32]
                mem[_3037 + 64] = mem[_3029 + 64]
                mem[_3037 + 96] = mem[_3029 + 96]
                require return_data.size - 128 >= 64
                _3057 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3057] = mem[_3029 + 128]
                mem[_3057 + 32] = mem[_3029 + 160]
                mem[_3037 + 128] = _3057
                if not mem[_3037 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2997 < stor206[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2997 < sub_44d18414[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2993)
                    mem[32] = 208
                    if _2997 == sub_3281b904[address(_2993)]:
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3273 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3273] = mem[_3247]
                        require mem[_3247 + 32] == bool(mem[_3247 + 32])
                        mem[_3273 + 32] = mem[_3247 + 32]
                        mem[_3273 + 64] = mem[_3247 + 64]
                        mem[_3273 + 96] = mem[_3247 + 96]
                        require return_data.size - 128 >= 64
                        _3353 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3353] = mem[_3247 + 128]
                        mem[_3353 + 32] = mem[_3247 + 160]
                        mem[_3273 + 128] = _3353
                        if not mem[_3273 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2993)
                        mem[32] = 208
                        sub_3281b904[address(_2993)] = _2997
                        emit 0x3aa2b0bd: _2997, address(_2993)
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3274 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3299 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3299] = mem[_3274]
                        require mem[_3274 + 32] == bool(mem[_3274 + 32])
                        mem[_3299 + 32] = mem[_3274 + 32]
                        mem[_3299 + 64] = mem[_3274 + 64]
                        mem[_3299 + 96] = mem[_3274 + 96]
                        require return_data.size - 128 >= 64
                        _3384 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3384] = mem[_3274 + 128]
                        mem[_3384 + 32] = mem[_3274 + 160]
                        mem[_3299 + 128] = _3384
                        if not mem[_3299 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2997 < stor206[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2997 < sub_44d18414[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2993)
                    mem[32] = 208
                    if _2997 == sub_3281b904[address(_2993)]:
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3227 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3249 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3249] = mem[_3227]
                        require mem[_3227 + 32] == bool(mem[_3227 + 32])
                        mem[_3249 + 32] = mem[_3227 + 32]
                        mem[_3249 + 64] = mem[_3227 + 64]
                        mem[_3249 + 96] = mem[_3227 + 96]
                        require return_data.size - 128 >= 64
                        _3319 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3319] = mem[_3227 + 128]
                        mem[_3319 + 32] = mem[_3227 + 160]
                        mem[_3249 + 128] = _3319
                        if not mem[_3249 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2993)
                        mem[32] = 208
                        sub_3281b904[address(_2993)] = _2997
                        emit 0x3aa2b0bd: _2997, address(_2993)
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3275 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3275] = mem[_3250]
                        require mem[_3250 + 32] == bool(mem[_3250 + 32])
                        mem[_3275 + 32] = mem[_3250 + 32]
                        mem[_3275 + 64] = mem[_3250 + 64]
                        mem[_3275 + 96] = mem[_3250 + 96]
                        require return_data.size - 128 >= 64
                        _3355 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3355] = mem[_3250 + 128]
                        mem[_3355 + 32] = mem[_3250 + 160]
                        mem[_3275 + 128] = _3355
                        if not mem[_3275 + 32]:
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
                _3026 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3030 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3030] = mem[_3026]
                require mem[_3026 + 32] == bool(mem[_3026 + 32])
                mem[_3030 + 32] = mem[_3026 + 32]
                mem[_3030 + 64] = mem[_3026 + 64]
                mem[_3030 + 96] = mem[_3026 + 96]
                require return_data.size - 128 >= 64
                _3047 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3047] = mem[_3026 + 128]
                mem[_3047 + 32] = mem[_3026 + 160]
                mem[_3030 + 128] = _3047
                if not mem[_3030 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2997 < stor206[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2997 < sub_44d18414[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2993)
                    mem[32] = 208
                    if _2997 == sub_3281b904[address(_2993)]:
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3251 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3251] = mem[_3229]
                        require mem[_3229 + 32] == bool(mem[_3229 + 32])
                        mem[_3251 + 32] = mem[_3229 + 32]
                        mem[_3251 + 64] = mem[_3229 + 64]
                        mem[_3251 + 96] = mem[_3229 + 96]
                        require return_data.size - 128 >= 64
                        _3320 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3320] = mem[_3229 + 128]
                        mem[_3320 + 32] = mem[_3229 + 160]
                        mem[_3251 + 128] = _3320
                        if not mem[_3251 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2993)
                        mem[32] = 208
                        sub_3281b904[address(_2993)] = _2997
                        emit 0x3aa2b0bd: _2997, address(_2993)
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3276 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3276] = mem[_3252]
                        require mem[_3252 + 32] == bool(mem[_3252 + 32])
                        mem[_3276 + 32] = mem[_3252 + 32]
                        mem[_3276 + 64] = mem[_3252 + 64]
                        mem[_3276 + 96] = mem[_3252 + 96]
                        require return_data.size - 128 >= 64
                        _3357 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3357] = mem[_3252 + 128]
                        mem[_3357 + 32] = mem[_3252 + 160]
                        mem[_3276 + 128] = _3357
                        if not mem[_3276 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2997 < stor206[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2997 < sub_44d18414[address(_2993)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2993)
                    mem[32] = 208
                    if _2997 == sub_3281b904[address(_2993)]:
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3208 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3231 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3231] = mem[_3208]
                        require mem[_3208 + 32] == bool(mem[_3208 + 32])
                        mem[_3231 + 32] = mem[_3208 + 32]
                        mem[_3231 + 64] = mem[_3208 + 64]
                        mem[_3231 + 96] = mem[_3208 + 96]
                        require return_data.size - 128 >= 64
                        _3291 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3291] = mem[_3208 + 128]
                        mem[_3291 + 32] = mem[_3208 + 160]
                        mem[_3231 + 128] = _3291
                        if not mem[_3231 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2993)
                        mem[32] = 208
                        sub_3281b904[address(_2993)] = _2997
                        emit 0x3aa2b0bd: _2997, address(_2993)
                        if not address(_2993):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2993)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3232 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3253 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3253] = mem[_3232]
                        require mem[_3232 + 32] == bool(mem[_3232 + 32])
                        mem[_3253 + 32] = mem[_3232 + 32]
                        mem[_3253 + 64] = mem[_3232 + 64]
                        mem[_3253 + 96] = mem[_3232 + 96]
                        require return_data.size - 128 >= 64
                        _3322 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3322] = mem[_3232 + 128]
                        mem[_3322 + 32] = mem[_3232 + 160]
                        mem[_3253 + 128] = _3322
                        if not mem[_3253 + 32]:
                            revert with 0, 'Token not supported'
            if stor152 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            else:
                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 'Ownable: caller is not the owner'
            if _3001 > sub_3281b904[address(_2993)]:
                revert with 0, 'ERR__PWC_GT_PTTC'
            mem[0] = address(_2993)
            mem[32] = 209
            if _3001 != sub_44d18414[address(_2993)]:
                mem[0] = address(_2993)
                mem[32] = 209
                sub_44d18414[address(_2993)] = _3001
                mem[mem[64]] = _3001
                emit 0x655d8d8c: _3001, address(_2993)
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
            _2995 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * ('cd', 4).length) + 128]:
                revert with 0, 50
            _2999 = mem[(32 * idx) + (32 * ('cd', 4).length) + 160]
            if idx >= mem[(32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 160]:
                revert with 0, 50
            _3002 = mem[(32 * idx) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 192]
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
                _3031 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3038 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3038] = mem[_3031]
                require mem[_3031 + 32] == bool(mem[_3031 + 32])
                mem[_3038 + 32] = mem[_3031 + 32]
                mem[_3038 + 64] = mem[_3031 + 64]
                mem[_3038 + 96] = mem[_3031 + 96]
                require return_data.size - 128 >= 64
                _3059 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3059] = mem[_3031 + 128]
                mem[_3059 + 32] = mem[_3031 + 160]
                mem[_3038 + 128] = _3059
                if not mem[_3038 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2999 < stor206[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2999 < sub_44d18414[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2995)
                    mem[32] = 208
                    if _2999 == sub_3281b904[address(_2995)]:
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3279 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3279] = mem[_3254]
                        require mem[_3254 + 32] == bool(mem[_3254 + 32])
                        mem[_3279 + 32] = mem[_3254 + 32]
                        mem[_3279 + 64] = mem[_3254 + 64]
                        mem[_3279 + 96] = mem[_3254 + 96]
                        require return_data.size - 128 >= 64
                        _3360 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3360] = mem[_3254 + 128]
                        mem[_3360 + 32] = mem[_3254 + 160]
                        mem[_3279 + 128] = _3360
                        if not mem[_3279 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2995)
                        mem[32] = 208
                        sub_3281b904[address(_2995)] = _2999
                        emit 0x3aa2b0bd: _2999, address(_2995)
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3280 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3308 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3308] = mem[_3280]
                        require mem[_3280 + 32] == bool(mem[_3280 + 32])
                        mem[_3308 + 32] = mem[_3280 + 32]
                        mem[_3308 + 64] = mem[_3280 + 64]
                        mem[_3308 + 96] = mem[_3280 + 96]
                        require return_data.size - 128 >= 64
                        _3392 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3392] = mem[_3280 + 128]
                        mem[_3392 + 32] = mem[_3280 + 160]
                        mem[_3308 + 128] = _3392
                        if not mem[_3308 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2999 < stor206[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2999 < sub_44d18414[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2995)
                    mem[32] = 208
                    if _2999 == sub_3281b904[address(_2995)]:
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3256 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3256] = mem[_3235]
                        require mem[_3235 + 32] == bool(mem[_3235 + 32])
                        mem[_3256 + 32] = mem[_3235 + 32]
                        mem[_3256 + 64] = mem[_3235 + 64]
                        mem[_3256 + 96] = mem[_3235 + 96]
                        require return_data.size - 128 >= 64
                        _3325 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3325] = mem[_3235 + 128]
                        mem[_3325 + 32] = mem[_3235 + 160]
                        mem[_3256 + 128] = _3325
                        if not mem[_3256 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2995)
                        mem[32] = 208
                        sub_3281b904[address(_2995)] = _2999
                        emit 0x3aa2b0bd: _2999, address(_2995)
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3281 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3281] = mem[_3257]
                        require mem[_3257 + 32] == bool(mem[_3257 + 32])
                        mem[_3281 + 32] = mem[_3257 + 32]
                        mem[_3281 + 64] = mem[_3257 + 64]
                        mem[_3281 + 96] = mem[_3257 + 96]
                        require return_data.size - 128 >= 64
                        _3362 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3362] = mem[_3257 + 128]
                        mem[_3362 + 32] = mem[_3257 + 160]
                        mem[_3281 + 128] = _3362
                        if not mem[_3281 + 32]:
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
                _3028 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _3032 = mem[64]
                if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 160
                mem[_3032] = mem[_3028]
                require mem[_3028 + 32] == bool(mem[_3028 + 32])
                mem[_3032 + 32] = mem[_3028 + 32]
                mem[_3032 + 64] = mem[_3028 + 64]
                mem[_3032 + 96] = mem[_3028 + 96]
                require return_data.size - 128 >= 64
                _3048 = mem[64]
                if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                    revert with 0, 65
                mem[64] = mem[64] + 64
                mem[_3048] = mem[_3028 + 128]
                mem[_3048 + 32] = mem[_3028 + 160]
                mem[_3032 + 128] = _3048
                if not mem[_3032 + 32]:
                    revert with 0, 'Token not supported'
                if stor152 != msg.sender:
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2999 < stor206[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2999 < sub_44d18414[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2995)
                    mem[32] = 208
                    if _2999 == sub_3281b904[address(_2995)]:
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3258 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3258] = mem[_3237]
                        require mem[_3237 + 32] == bool(mem[_3237 + 32])
                        mem[_3258 + 32] = mem[_3237 + 32]
                        mem[_3258 + 64] = mem[_3237 + 64]
                        mem[_3258 + 96] = mem[_3237 + 96]
                        require return_data.size - 128 >= 64
                        _3326 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3326] = mem[_3237 + 128]
                        mem[_3326 + 32] = mem[_3237 + 160]
                        mem[_3258 + 128] = _3326
                        if not mem[_3258 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2995)
                        mem[32] = 208
                        sub_3281b904[address(_2995)] = _2999
                        emit 0x3aa2b0bd: _2999, address(_2995)
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3282 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3282] = mem[_3259]
                        require mem[_3259 + 32] == bool(mem[_3259 + 32])
                        mem[_3282 + 32] = mem[_3259 + 32]
                        mem[_3282 + 64] = mem[_3259 + 64]
                        mem[_3282 + 96] = mem[_3259 + 96]
                        require return_data.size - 128 >= 64
                        _3364 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3364] = mem[_3259 + 128]
                        mem[_3364 + 32] = mem[_3259 + 160]
                        mem[_3282 + 128] = _3364
                        if not mem[_3282 + 32]:
                            revert with 0, 'Token not supported'
                else:
                    if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                        revert with 0, 'Ownable: caller is not the owner'
                    if _2999 < stor206[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LESS_THAN_SL'
                    if _2999 < sub_44d18414[address(_2995)]:
                        revert with 0, 'ERR__TOTAL_CAP_LT_PTWC'
                    mem[0] = address(_2995)
                    mem[32] = 208
                    if _2999 == sub_3281b904[address(_2995)]:
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3215 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3239 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3239] = mem[_3215]
                        require mem[_3215 + 32] == bool(mem[_3215 + 32])
                        mem[_3239 + 32] = mem[_3215 + 32]
                        mem[_3239 + 64] = mem[_3215 + 64]
                        mem[_3239 + 96] = mem[_3215 + 96]
                        require return_data.size - 128 >= 64
                        _3298 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3298] = mem[_3215 + 128]
                        mem[_3298 + 32] = mem[_3215 + 160]
                        mem[_3239 + 128] = _3298
                        if not mem[_3239 + 32]:
                            revert with 0, 'Token not supported'
                    else:
                        mem[0] = address(_2995)
                        mem[32] = 208
                        sub_3281b904[address(_2995)] = _2999
                        emit 0x3aa2b0bd: _2999, address(_2995)
                        if not address(_2995):
                            revert with 0, 'Token address cannot be 0'
                        require ext_code.size(stor203)
                        staticcall stor203.0xfa5e2abc with:
                                gas gas_remaining wei
                               args address(_2995)
                        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3240 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 192
                        _3260 = mem[64]
                        if mem[64] + 160 > test266151307() or mem[64] + 160 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 160
                        mem[_3260] = mem[_3240]
                        require mem[_3240 + 32] == bool(mem[_3240 + 32])
                        mem[_3260 + 32] = mem[_3240 + 32]
                        mem[_3260 + 64] = mem[_3240 + 64]
                        mem[_3260 + 96] = mem[_3240 + 96]
                        require return_data.size - 128 >= 64
                        _3328 = mem[64]
                        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
                            revert with 0, 65
                        mem[64] = mem[64] + 64
                        mem[_3328] = mem[_3240 + 128]
                        mem[_3328 + 32] = mem[_3240 + 160]
                        mem[_3260 + 128] = _3328
                        if not mem[_3260 + 32]:
                            revert with 0, 'Token not supported'
            if stor152 != msg.sender:
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
            else:
                if owner != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
                    revert with 0, 'Ownable: caller is not the owner'
            if _3002 > sub_3281b904[address(_2995)]:
                revert with 0, 'ERR__PWC_GT_PTTC'
            mem[0] = address(_2995)
            mem[32] = 209
            if _3002 != sub_44d18414[address(_2995)]:
                mem[0] = address(_2995)
                mem[32] = 209
                sub_44d18414[address(_2995)] = _3002
                mem[mem[64]] = _3002
                emit 0x655d8d8c: _3002, address(_2995)
            idx = idx + 1
            continue 
}



}
