contract main {




// =====================  Runtime code  =====================


const sub_d424ac74(?) = 5000000000 * 10^18

const sub_f8e20941(?) = 20

const MAX_LEVEL = 8


function sub_0a5c7872(?) payable {
    return ('storage', 256, 0, 12)
}

function sub_10c38d13(?) payable {
    return ('storage', 256, 0, 13)
}

function staking(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return ('storage', 16, 0, ('sha3', ('data', ('param', 'arg1'), 4))), 
           ('storage', 80, 0, ('sha3', ('data', ('param', 'arg1'), 4))),
           ('storage', 160, 96, ('sha3', ('data', ('param', 'arg1'), 4)))
}

function sub_28213cc2(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 5)))
    return ('storage', 16, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 5))), ('param', 'arg2'))), 
           ('storage', 80, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 5))), ('param', 'arg2'))),
           ('storage', 160, 96, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 5))), ('param', 'arg2')))
}

function sub_2a7dc5ec(?) payable {
    return ('storage', 256, 0, 9)
}

function MINIMUM_TO_EXIT() payable {
    return ('storage', 256, 0, 11)
}

function rescueEnabled() payable {
    return bool(('storage', 8, 0, 15))
}

function paused() payable {
    return bool(('storage', 8, 160, 0))
}

function sub_5f596bed(?) payable {
    return ('storage', 256, 0, 7)
}

function lastClaimTimestamp() payable {
    return ('storage', 256, 0, 14)
}

function canClaim() payable {
    return bool(('storage', 8, 16, 15))
}

function sub_7dd88fdc(?) payable {
    require calldata.size - 4 >= 32
    return ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 6)))
}

function owner() payable {
    return ('storage', 160, 0, 0)
}

function sub_b69c585b(?) payable {
    return ('storage', 256, 0, 10)
}

function unaccountedRewards() payable {
    return ('storage', 256, 0, 8)
}

function sub_cc617cfb(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < ('storage', 256, 0, ('sha3', ('data', ('param', 'arg1'), 1)))
    return ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('param', 'arg1'), 1))), ('param', 'arg2')))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor[0].field_0) = 0
    emit OwnershipTransferred(('storage', 160, 0, 0), 0);
}

function setGame(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor[2].field_0) = arg1
}

function setRescueEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor[15].field_0) = uint8(arg1)
}

function sub_9d34b691(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor[15].field_16) = Mask(240, 0, bool(arg1))
}

function setSettings(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor[11].field_0) = arg2
    uint256(stor[10].field_0) = arg1
}

function withdraw() payable {
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call ('storage', 160, 0, 0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(stor[0].field_0) = arg1
    emit OwnershipTransferred(('storage', 160, 0, 0), arg1);
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 160, 0, 0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        if not ('storage', 8, 160, 0):
            revert with 0, 'Pausable: not paused'
        uint8(stor[0].field_160) = 0
        emit Unpaused(msg.sender);
    else:
        if ('storage', 8, 160, 0):
            revert with 0, 'Pausable: paused'
        uint8(stor[0].field_160) = 1
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You can't send token directly in stacking'
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_d2aaf6f3(?) payable {
    require calldata.size - 4 >= 32
    staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 416
    if not bool(ceil32(return_data.size) + 512 <= test266151307()):
        revert with 0, 65
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    require ext_call.return_data[320] == ext_call.return_data[351 len 1]
    require ext_call.return_data[352] == ext_call.return_data[383 len 1]
    require ext_call.return_data[384] == ext_call.return_data[415 len 1]
    return bool(ext_call.return_data[0])
}

function sub_c7373593(?) payable {
    require calldata.size - 4 >= 32
    if ('storage', 256, 0, 7) != 0:
        if not ('storage', 256, 0, 7):
            revert with 0, 18
        idx = 5
        s = 0
        while idx <= 8:
            mem[0] = idx
            mem[32] = 5
            if ('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))) and idx > -1 / ('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))):
                revert with 0, 17
            if s > !(('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))) * idx):
                revert with 0, 17
            if arg1 % ('storage', 256, 0, 7) >= s + (('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))) * idx):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))) * idx)
                continue 
            if not ('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))):
                revert with 0, 18
            if Mask(224, 0, arg1) >> 32 % ('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))) >= ('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))):
                revert with 0, 50
            return ('storage', 160, 96, ('add', ('sha3', ('sha3', ('data', ('var', 0), 5))), ('mod', ('mask_shl', 256, -32, -32, ('param', 'arg1')), ('storage', 256, 0, ('sha3', ('data', ('var', 0), 5))))))
        return 0
    else:
        return 0
}

function getTokensOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))):
        mem[128] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))))
        idx = 128
        s = 0
        while (32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))) + 96 > idx:
            mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))))
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1))), data=mem[128 len 32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))]), 
    mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))) + 128] = 32
    mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))) + 160] = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))
    mem[(32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))) + 192 len 32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))] = mem[128 len 32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))]
    return memory
      from (32 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))) + 128
       len (96 * ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('param', 'arg1')), 1)))) + 64
}

function sub_9062ae06(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 416
        _53 = mem[64]
        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 416
        require mem[_52] == bool(mem[_52])
        mem[_53] = mem[_52]
        require mem[_52 + 32] == mem[_52 + 63 len 1]
        mem[_53 + 32] = mem[_52 + 32]
        require mem[_52 + 64] == mem[_52 + 95 len 1]
        mem[_53 + 64] = mem[_52 + 64]
        require mem[_52 + 96] == mem[_52 + 127 len 1]
        mem[_53 + 96] = mem[_52 + 96]
        require mem[_52 + 128] == mem[_52 + 159 len 1]
        mem[_53 + 128] = mem[_52 + 128]
        require mem[_52 + 160] == mem[_52 + 191 len 1]
        mem[_53 + 160] = mem[_52 + 160]
        require mem[_52 + 192] == mem[_52 + 223 len 1]
        mem[_53 + 192] = mem[_52 + 192]
        require mem[_52 + 224] == mem[_52 + 255 len 1]
        mem[_53 + 224] = mem[_52 + 224]
        require mem[_52 + 256] == mem[_52 + 287 len 1]
        mem[_53 + 256] = mem[_52 + 256]
        require mem[_52 + 288] == mem[_52 + 319 len 1]
        mem[_53 + 288] = mem[_52 + 288]
        require mem[_52 + 320] == mem[_52 + 351 len 1]
        mem[_53 + 320] = mem[_52 + 320]
        require mem[_52 + 352] == mem[_52 + 383 len 1]
        mem[_53 + 352] = mem[_52 + 352]
        require mem[_52 + 384] == mem[_52 + 415 len 1]
        mem[_53 + 384] = mem[_52 + 384]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        if mem[_53]:
            mem[0] = uint16(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 4
            _69 = mem[64]
            mem[64] = mem[64] + 96
            mem[_69] = ('storage', 16, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4)))
            mem[_69 + 32] = ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4)))
            mem[_69 + 64] = ('storage', 160, 96, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4)))
            if 5000000000 * 10^18 > ('storage', 256, 0, 12):
                if block.timestamp < ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))):
                    revert with 0, 17
                if block.timestamp - ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))):
                    revert with 0, 17
                if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600:
                    revert with 0, 17
                if s > !(80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                continue 
            if ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) > ('storage', 256, 0, 14):
                if s > -1:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if ('storage', 256, 0, 14) < ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))):
                revert with 0, 17
            if ('storage', 256, 0, 14) - ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))):
                revert with 0, 17
            if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600:
                revert with 0, 17
            if s > !(80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 4))) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
            continue 
        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 240)
        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _74 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 416
        _76 = mem[64]
        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 416
        require mem[_74] == bool(mem[_74])
        mem[_76] = mem[_74]
        require mem[_74 + 32] == mem[_74 + 63 len 1]
        mem[_76 + 32] = mem[_74 + 32]
        require mem[_74 + 64] == mem[_74 + 95 len 1]
        mem[_76 + 64] = mem[_74 + 64]
        require mem[_74 + 96] == mem[_74 + 127 len 1]
        mem[_76 + 96] = mem[_74 + 96]
        require mem[_74 + 128] == mem[_74 + 159 len 1]
        mem[_76 + 128] = mem[_74 + 128]
        require mem[_74 + 160] == mem[_74 + 191 len 1]
        mem[_76 + 160] = mem[_74 + 160]
        require mem[_74 + 192] == mem[_74 + 223 len 1]
        mem[_76 + 192] = mem[_74 + 192]
        require mem[_74 + 224] == mem[_74 + 255 len 1]
        mem[_76 + 224] = mem[_74 + 224]
        require mem[_74 + 256] == mem[_74 + 287 len 1]
        mem[_76 + 256] = mem[_74 + 256]
        require mem[_74 + 288] == mem[_74 + 319 len 1]
        mem[_76 + 288] = mem[_74 + 288]
        require mem[_74 + 320] == mem[_74 + 351 len 1]
        mem[_76 + 320] = mem[_74 + 320]
        require mem[_74 + 352] == mem[_74 + 383 len 1]
        mem[_76 + 352] = mem[_74 + 352]
        require mem[_74 + 384] == mem[_74 + 415 len 1]
        mem[_76 + 384] = mem[_74 + 384]
        _90 = mem[_76 + 384]
        if 8 < mem[_76 + 415 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_76 + 415 len 1] + 8)
        _91 = sha3(mem[0], 5)
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint16(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 6
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
            revert with 0, 50
        mem[0] = sha3(mem[0], 5)
        _94 = mem[64]
        mem[64] = mem[64] + 96
        mem[_94] = ('storage', 16, 0, ('add', ('sha3', ('var', '_91')), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6)))))
        mem[_94 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_91')), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6)))))
        mem[_94 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_91')), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6)))))
        if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_91')), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6))))):
            revert with 0, 17
        if uint8(-uint8(_90) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_91')), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6))))) > -1 / uint8(-uint8(_90) + 8):
            revert with 0, 17
        if s > !((('storage', 256, 0, 9) * uint8(-uint8(_90) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_91')), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6))))) * uint8(-uint8(_90) + 8))):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (('storage', 256, 0, 9) * uint8(-uint8(_90) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_91')), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 16, 0, 240, ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('cd', 4)))), 6))))) * uint8(-uint8(_90) + 8))
        continue 
    return s
}

function rescue(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if ('storage', 8, 8, 15):
        revert with 0, 'You can't reentrantry'
    uint8(stor[15].field_8) = 1
    if not ('storage', 8, 0, 15):
        revert with 0, 'RESCUE not activated'
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
        mem[0] = msg.sender
        mem[32] = 1
        s = 0
        while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
            if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                revert with 0, 50
            if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != cd[((32 * idx) + arg1 + 36)]:
                if s == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                s = s + 1
                continue 
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                revert with 0, 17
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                revert with 0, 50
            if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                revert with 0, 50
            uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
            mem[32] = 1
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                revert with 0, 49
            mem[0] = sha3(address(msg.sender), 1)
            uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
            uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
            staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 416] = ext_call.return_data[0 len 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 416
            _323 = mem[64]
            if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 416
            require mem[_321] == bool(mem[_321])
            mem[_323] = mem[_321]
            require mem[_321 + 32] == mem[_321 + 63 len 1]
            mem[_323 + 32] = mem[_321 + 32]
            require mem[_321 + 64] == mem[_321 + 95 len 1]
            mem[_323 + 64] = mem[_321 + 64]
            require mem[_321 + 96] == mem[_321 + 127 len 1]
            mem[_323 + 96] = mem[_321 + 96]
            require mem[_321 + 128] == mem[_321 + 159 len 1]
            mem[_323 + 128] = mem[_321 + 128]
            require mem[_321 + 160] == mem[_321 + 191 len 1]
            mem[_323 + 160] = mem[_321 + 160]
            require mem[_321 + 192] == mem[_321 + 223 len 1]
            mem[_323 + 192] = mem[_321 + 192]
            require mem[_321 + 224] == mem[_321 + 255 len 1]
            mem[_323 + 224] = mem[_321 + 224]
            require mem[_321 + 256] == mem[_321 + 287 len 1]
            mem[_323 + 256] = mem[_321 + 256]
            require mem[_321 + 288] == mem[_321 + 319 len 1]
            mem[_323 + 288] = mem[_321 + 288]
            require mem[_321 + 320] == mem[_321 + 351 len 1]
            mem[_323 + 320] = mem[_321 + 320]
            require mem[_321 + 352] == mem[_321 + 383 len 1]
            mem[_323 + 352] = mem[_321 + 352]
            require mem[_321 + 384] == mem[_321 + 415 len 1]
            mem[_323 + 384] = mem[_321 + 384]
            if mem[_323]:
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 4
                _365 = mem[64]
                mem[64] = mem[64] + 96
                mem[_365] = ('storage', 16, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4)))
                mem[_365 + 32] = ('storage', 80, 16, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4)))
                mem[_365 + 64] = ('storage', 160, 96, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4)))
                if ('storage', 160, 96, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4))) != msg.sender:
                    revert with 0, 'Not your properties'
                mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
                require ext_code.size(('storage', 160, 0, 2))
                call ('storage', 160, 0, 2).0x23b872dd with:
                     gas gas_remaining wei
                    args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[32] = 4
                uint256(stor[sha3(cd[((32 * idx) + arg1 + 36)], 4)].field_0) = 0
                if ('storage', 256, 0, 13) < 1:
                    revert with 0, 17
                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = 1
                emit 0x16d31e5e: cd[((32 * idx) + arg1 + 36)], 0, 1
                if idx == -1:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 1
                idx = idx + 1
                s = _365
                s = cd[((32 * idx) + arg1 + 36)]
                continue 
            staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 416] = ext_call.return_data[0 len 416]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _370 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 416
            _374 = mem[64]
            if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + 416
            require mem[_370] == bool(mem[_370])
            mem[_374] = mem[_370]
            require mem[_370 + 32] == mem[_370 + 63 len 1]
            mem[_374 + 32] = mem[_370 + 32]
            require mem[_370 + 64] == mem[_370 + 95 len 1]
            mem[_374 + 64] = mem[_370 + 64]
            require mem[_370 + 96] == mem[_370 + 127 len 1]
            mem[_374 + 96] = mem[_370 + 96]
            require mem[_370 + 128] == mem[_370 + 159 len 1]
            mem[_374 + 128] = mem[_370 + 128]
            require mem[_370 + 160] == mem[_370 + 191 len 1]
            mem[_374 + 160] = mem[_370 + 160]
            require mem[_370 + 192] == mem[_370 + 223 len 1]
            mem[_374 + 192] = mem[_370 + 192]
            require mem[_370 + 224] == mem[_370 + 255 len 1]
            mem[_374 + 224] = mem[_370 + 224]
            require mem[_370 + 256] == mem[_370 + 287 len 1]
            mem[_374 + 256] = mem[_370 + 256]
            require mem[_370 + 288] == mem[_370 + 319 len 1]
            mem[_374 + 288] = mem[_370 + 288]
            require mem[_370 + 320] == mem[_370 + 351 len 1]
            mem[_374 + 320] = mem[_370 + 320]
            require mem[_370 + 352] == mem[_370 + 383 len 1]
            mem[_374 + 352] = mem[_370 + 352]
            require mem[_370 + 384] == mem[_370 + 415 len 1]
            mem[_374 + 384] = mem[_370 + 384]
            _409 = mem[_374 + 384]
            if 8 < mem[_374 + 415 len 1]:
                revert with 0, 17
            mem[0] = uint8(-mem[_374 + 415 len 1] + 8)
            _412 = sha3(mem[0], 5)
            mem[32] = 6
            if ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                revert with 0, 50
            mem[0] = sha3(mem[0], 5)
            _416 = mem[64]
            mem[64] = mem[64] + 96
            mem[_416] = ('storage', 16, 0, ('add', ('sha3', ('var', '_412')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))))
            mem[_416 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_412')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))))
            mem[_416 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_412')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))))
            if ('storage', 160, 96, ('add', ('sha3', ('var', '_412')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))))) != msg.sender:
                revert with 0, 'Not your properties'
            if ('storage', 256, 0, 7) < uint8(-uint8(_409) + 8):
                revert with 0, 17
            uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_409) + 8)
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(('storage', 160, 0, 2))
            call ('storage', 160, 0, 2).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[32] = 5
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))) < 1:
                revert with 0, 17
            if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))):
                revert with 0, 50
            mem[0] = sha3(-uint8(_409) + 8 << 248, 5)
            _439 = mem[64]
            mem[64] = mem[64] + 96
            mem[_439] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5)))))
            mem[_439 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5)))))
            mem[_439 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5)))))
            if ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))):
                revert with 0, 50
            uint16(stor[('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) + sha3(sha3(-uint8(_409) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5)))))
            Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) + sha3(sha3(-uint8(_409) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5)))))
            address(stor[('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) + sha3(sha3(-uint8(_409) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5)))))
            uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))
            if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))):
                revert with 0, 49
            uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))) + sha3(sha3(-uint8(_409) + 8 << 248, 5)) - 1].field_0) = 0
            uint256(stor[sha3(-uint8(_409) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_409'))))), 5))) - 1
            mem[32] = 6
            uint256(stor[sha3(cd[((32 * idx) + arg1 + 36)], 6)].field_0) = 0
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0x1dfc3580: cd[((32 * idx) + arg1 + 36)], 0, 1
            if idx == -1:
                revert with 0, 17
            mem[0] = msg.sender
            mem[32] = 1
            idx = idx + 1
            s = _416
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _311 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 416
        _312 = mem[64]
        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 416
        require mem[_311] == bool(mem[_311])
        mem[_312] = mem[_311]
        require mem[_311 + 32] == mem[_311 + 63 len 1]
        mem[_312 + 32] = mem[_311 + 32]
        require mem[_311 + 64] == mem[_311 + 95 len 1]
        mem[_312 + 64] = mem[_311 + 64]
        require mem[_311 + 96] == mem[_311 + 127 len 1]
        mem[_312 + 96] = mem[_311 + 96]
        require mem[_311 + 128] == mem[_311 + 159 len 1]
        mem[_312 + 128] = mem[_311 + 128]
        require mem[_311 + 160] == mem[_311 + 191 len 1]
        mem[_312 + 160] = mem[_311 + 160]
        require mem[_311 + 192] == mem[_311 + 223 len 1]
        mem[_312 + 192] = mem[_311 + 192]
        require mem[_311 + 224] == mem[_311 + 255 len 1]
        mem[_312 + 224] = mem[_311 + 224]
        require mem[_311 + 256] == mem[_311 + 287 len 1]
        mem[_312 + 256] = mem[_311 + 256]
        require mem[_311 + 288] == mem[_311 + 319 len 1]
        mem[_312 + 288] = mem[_311 + 288]
        require mem[_311 + 320] == mem[_311 + 351 len 1]
        mem[_312 + 320] = mem[_311 + 320]
        require mem[_311 + 352] == mem[_311 + 383 len 1]
        mem[_312 + 352] = mem[_311 + 352]
        require mem[_311 + 384] == mem[_311 + 415 len 1]
        mem[_312 + 384] = mem[_311 + 384]
        if mem[_312]:
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 4
            _348 = mem[64]
            mem[64] = mem[64] + 96
            mem[_348] = ('storage', 16, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4)))
            mem[_348 + 32] = ('storage', 80, 16, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4)))
            mem[_348 + 64] = ('storage', 160, 96, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4)))
            if ('storage', 160, 96, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 4))) != msg.sender:
                revert with 0, 'Not your properties'
            mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
            require ext_code.size(('storage', 160, 0, 2))
            call ('storage', 160, 0, 2).0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = 4
            uint256(stor[sha3(cd[((32 * idx) + arg1 + 36)], 4)].field_0) = 0
            if ('storage', 256, 0, 13) < 1:
                revert with 0, 17
            uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
            mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 1
            emit 0x16d31e5e: cd[((32 * idx) + arg1 + 36)], 0, 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _348
            s = cd[((32 * idx) + arg1 + 36)]
            continue 
        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 416
        _358 = mem[64]
        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 416
        require mem[_354] == bool(mem[_354])
        mem[_358] = mem[_354]
        require mem[_354 + 32] == mem[_354 + 63 len 1]
        mem[_358 + 32] = mem[_354 + 32]
        require mem[_354 + 64] == mem[_354 + 95 len 1]
        mem[_358 + 64] = mem[_354 + 64]
        require mem[_354 + 96] == mem[_354 + 127 len 1]
        mem[_358 + 96] = mem[_354 + 96]
        require mem[_354 + 128] == mem[_354 + 159 len 1]
        mem[_358 + 128] = mem[_354 + 128]
        require mem[_354 + 160] == mem[_354 + 191 len 1]
        mem[_358 + 160] = mem[_354 + 160]
        require mem[_354 + 192] == mem[_354 + 223 len 1]
        mem[_358 + 192] = mem[_354 + 192]
        require mem[_354 + 224] == mem[_354 + 255 len 1]
        mem[_358 + 224] = mem[_354 + 224]
        require mem[_354 + 256] == mem[_354 + 287 len 1]
        mem[_358 + 256] = mem[_354 + 256]
        require mem[_354 + 288] == mem[_354 + 319 len 1]
        mem[_358 + 288] = mem[_354 + 288]
        require mem[_354 + 320] == mem[_354 + 351 len 1]
        mem[_358 + 320] = mem[_354 + 320]
        require mem[_354 + 352] == mem[_354 + 383 len 1]
        mem[_358 + 352] = mem[_354 + 352]
        require mem[_354 + 384] == mem[_354 + 415 len 1]
        mem[_358 + 384] = mem[_354 + 384]
        _400 = mem[_358 + 384]
        if 8 < mem[_358 + 415 len 1]:
            revert with 0, 17
        mem[0] = uint8(-mem[_358 + 415 len 1] + 8)
        _402 = sha3(mem[0], 5)
        mem[32] = 6
        if ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
            revert with 0, 50
        mem[0] = sha3(mem[0], 5)
        _405 = mem[64]
        mem[64] = mem[64] + 96
        mem[_405] = ('storage', 16, 0, ('add', ('sha3', ('var', '_402')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))))
        mem[_405 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_402')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))))
        mem[_405 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_402')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))))
        if ('storage', 160, 96, ('add', ('sha3', ('var', '_402')), ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))))) != msg.sender:
            revert with 0, 'Not your properties'
        if ('storage', 256, 0, 7) < uint8(-uint8(_400) + 8):
            revert with 0, 17
        uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_400) + 8)
        mem[mem[64] + 68] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(('storage', 160, 0, 2))
        call ('storage', 160, 0, 2).0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), msg.sender, cd[((32 * idx) + arg1 + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[32] = 5
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))) < 1:
            revert with 0, 17
        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))):
            revert with 0, 50
        mem[0] = sha3(-uint8(_400) + 8 << 248, 5)
        _420 = mem[64]
        mem[64] = mem[64] + 96
        mem[_420] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5)))))
        mem[_420 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5)))))
        mem[_420 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5)))))
        if ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))):
            revert with 0, 50
        uint16(stor[('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) + sha3(sha3(-uint8(_400) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5)))))
        Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) + sha3(sha3(-uint8(_400) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5)))))
        address(stor[('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6))) + sha3(sha3(-uint8(_400) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5)))))
        uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('cd', ('add', 36, ('mask_shl', 251, 0, 5, ('var', 0)), ('param', 'arg1'))), 6)))
        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))):
            revert with 0, 49
        uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))) + sha3(sha3(-uint8(_400) + 8 << 248, 5)) - 1].field_0) = 0
        uint256(stor[sha3(-uint8(_400) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_400'))))), 5))) - 1
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 6
        uint256(stor[sha3(cd[((32 * idx) + arg1 + 36)], 6)].field_0) = 0
        mem[mem[64]] = cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] + 32] = 0
        mem[mem[64] + 64] = 1
        emit 0x1dfc3580: cd[((32 * idx) + arg1 + 36)], 0, 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _405
        s = cd[((32 * idx) + arg1 + 36)]
        continue 
    uint8(stor[15].field_8) = 0
}

function sub_b7391005(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('storage', 8, 160, 0):
        revert with 0, 'Pausable: paused'
    if ('storage', 8, 8, 15):
        revert with 0, 'You can't reentrantry'
    uint8(stor[15].field_8) = 1
    if address(cd[4]) != msg.sender:
        if ('storage', 160, 0, 2) != msg.sender:
            revert with 0, 'This is not the correct address'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
            if uint16(cd[((32 * idx) + cd[36] + 36)]):
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 1
                uint256(stor[sha3(address(cd[4]), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1))) + 1
                mem[0] = sha3(address(cd[4]), 1)
                uint16(stor[sha3(sha3(address(cd[4]), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1)))].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                Mask(240, 0, stor[sha3(sha3(address(cd[4]), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1)))].field_16) = 0
                if idx >= ('cd', 36).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if msg.sender == ('storage', 160, 0, 2):
                    staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 416
                    _432 = mem[64]
                    if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 416
                    require mem[_426] == bool(mem[_426])
                    mem[_432] = mem[_426]
                    require mem[_426 + 32] == mem[_426 + 63 len 1]
                    mem[_432 + 32] = mem[_426 + 32]
                    require mem[_426 + 64] == mem[_426 + 95 len 1]
                    mem[_432 + 64] = mem[_426 + 64]
                    require mem[_426 + 96] == mem[_426 + 127 len 1]
                    mem[_432 + 96] = mem[_426 + 96]
                    require mem[_426 + 128] == mem[_426 + 159 len 1]
                    mem[_432 + 128] = mem[_426 + 128]
                    require mem[_426 + 160] == mem[_426 + 191 len 1]
                    mem[_432 + 160] = mem[_426 + 160]
                    require mem[_426 + 192] == mem[_426 + 223 len 1]
                    mem[_432 + 192] = mem[_426 + 192]
                    require mem[_426 + 224] == mem[_426 + 255 len 1]
                    mem[_432 + 224] = mem[_426 + 224]
                    require mem[_426 + 256] == mem[_426 + 287 len 1]
                    mem[_432 + 256] = mem[_426 + 256]
                    require mem[_426 + 288] == mem[_426 + 319 len 1]
                    mem[_432 + 288] = mem[_426 + 288]
                    require mem[_426 + 320] == mem[_426 + 351 len 1]
                    mem[_432 + 320] = mem[_426 + 320]
                    require mem[_426 + 352] == mem[_426 + 383 len 1]
                    mem[_432 + 352] = mem[_426 + 352]
                    require mem[_426 + 384] == mem[_426 + 415 len 1]
                    mem[_432 + 384] = mem[_426 + 384]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_432]:
                        if ('storage', 8, 160, 0):
                            revert with 0, 'Pausable: paused'
                        if ('storage', 256, 0, 12) >= 5000000000 * 10^18:
                            _541 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_541] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_541 + 32] = Mask(80, 0, block.timestamp)
                            mem[_541 + 64] = address(cd[4])
                        else:
                            if block.timestamp < ('storage', 256, 0, 14):
                                revert with 0, 17
                            if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
                                revert with 0, 17
                            if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
                                revert with 0, 17
                            if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
                                revert with 0, 17
                            uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
                            uint256(stor[14].field_0) = block.timestamp
                            _591 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_591] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_591 + 32] = Mask(80, 0, block.timestamp)
                            mem[_591 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 4
                        uint16(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_96) = address(cd[4])
                        if ('storage', 256, 0, 13) > -2:
                            revert with 0, 17
                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) + 1
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 416
                        _564 = mem[64]
                        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 416
                        require mem[_540] == bool(mem[_540])
                        mem[_564] = mem[_540]
                        require mem[_540 + 32] == mem[_540 + 63 len 1]
                        mem[_564 + 32] = mem[_540 + 32]
                        require mem[_540 + 64] == mem[_540 + 95 len 1]
                        mem[_564 + 64] = mem[_540 + 64]
                        require mem[_540 + 96] == mem[_540 + 127 len 1]
                        mem[_564 + 96] = mem[_540 + 96]
                        require mem[_540 + 128] == mem[_540 + 159 len 1]
                        mem[_564 + 128] = mem[_540 + 128]
                        require mem[_540 + 160] == mem[_540 + 191 len 1]
                        mem[_564 + 160] = mem[_540 + 160]
                        require mem[_540 + 192] == mem[_540 + 223 len 1]
                        mem[_564 + 192] = mem[_540 + 192]
                        require mem[_540 + 224] == mem[_540 + 255 len 1]
                        mem[_564 + 224] = mem[_540 + 224]
                        require mem[_540 + 256] == mem[_540 + 287 len 1]
                        mem[_564 + 256] = mem[_540 + 256]
                        require mem[_540 + 288] == mem[_540 + 319 len 1]
                        mem[_564 + 288] = mem[_540 + 288]
                        require mem[_540 + 320] == mem[_540 + 351 len 1]
                        mem[_564 + 320] = mem[_540 + 320]
                        require mem[_540 + 352] == mem[_540 + 383 len 1]
                        mem[_564 + 352] = mem[_540 + 352]
                        require mem[_540 + 384] == mem[_540 + 415 len 1]
                        mem[_564 + 384] = mem[_540 + 384]
                        if 8 < mem[_564 + 415 len 1]:
                            revert with 0, 17
                        if ('storage', 256, 0, 7) > !uint8(-mem[_564 + 415 len 1] + 8):
                            revert with 0, 17
                        uint256(stor[7].field_0) = ('storage', 256, 0, 7) + uint8(-mem[_564 + 415 len 1] + 8)
                        mem[0] = uint8(-mem[_564 + 415 len 1] + 8)
                        _732 = sha3(mem[0], 5)
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        uint256(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 6)].field_0) = ('storage', 256, 0, ('var', '_732'))
                        mem[32] = 5
                        _734 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_734] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_734 + 32] = ('storage', 80, 0, 9)
                        mem[_734 + 64] = address(cd[4])
                        uint256(stor[_732].field_0) = ('storage', 256, 0, ('var', '_732')) + 1
                        mem[0] = _732
                        Mask(80, 0, stor[('storage', 256, 0, ('var', '_732')) + sha3(_732)].field_0) = ('storage', 80, 0, 9)
                        uint16(stor[('storage', 256, 0, ('var', '_732')) + sha3(_732)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, stor[('storage', 256, 0, ('var', '_732')) + sha3(_732)].field_16) = 0
                        address(stor[('storage', 256, 0, ('var', '_732')) + sha3(_732)].field_96) = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = ('storage', 256, 0, 9)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, ('storage', 256, 0, 9));
                else:
                    mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                    staticcall ('storage', 160, 0, 2).0x6352211e with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_419] == mem[_419 + 12 len 20]
                    if mem[_419 + 12 len 20] != msg.sender:
                        revert with 0, 'Don't play with other's Token'
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(('storage', 160, 0, 2))
                    call ('storage', 160, 0, 2).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                            gas gas_remaining wei
                           args (cd[((32 * idx) + cd[36] + 36)] << 240)
                    mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 416
                    _474 = mem[64]
                    if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 416
                    require mem[_468] == bool(mem[_468])
                    mem[_474] = mem[_468]
                    require mem[_468 + 32] == mem[_468 + 63 len 1]
                    mem[_474 + 32] = mem[_468 + 32]
                    require mem[_468 + 64] == mem[_468 + 95 len 1]
                    mem[_474 + 64] = mem[_468 + 64]
                    require mem[_468 + 96] == mem[_468 + 127 len 1]
                    mem[_474 + 96] = mem[_468 + 96]
                    require mem[_468 + 128] == mem[_468 + 159 len 1]
                    mem[_474 + 128] = mem[_468 + 128]
                    require mem[_468 + 160] == mem[_468 + 191 len 1]
                    mem[_474 + 160] = mem[_468 + 160]
                    require mem[_468 + 192] == mem[_468 + 223 len 1]
                    mem[_474 + 192] = mem[_468 + 192]
                    require mem[_468 + 224] == mem[_468 + 255 len 1]
                    mem[_474 + 224] = mem[_468 + 224]
                    require mem[_468 + 256] == mem[_468 + 287 len 1]
                    mem[_474 + 256] = mem[_468 + 256]
                    require mem[_468 + 288] == mem[_468 + 319 len 1]
                    mem[_474 + 288] = mem[_468 + 288]
                    require mem[_468 + 320] == mem[_468 + 351 len 1]
                    mem[_474 + 320] = mem[_468 + 320]
                    require mem[_468 + 352] == mem[_468 + 383 len 1]
                    mem[_474 + 352] = mem[_468 + 352]
                    require mem[_468 + 384] == mem[_468 + 415 len 1]
                    mem[_474 + 384] = mem[_468 + 384]
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if mem[_474]:
                        if ('storage', 8, 160, 0):
                            revert with 0, 'Pausable: paused'
                        if ('storage', 256, 0, 12) >= 5000000000 * 10^18:
                            _628 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_628] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_628 + 32] = Mask(80, 0, block.timestamp)
                            mem[_628 + 64] = address(cd[4])
                        else:
                            if block.timestamp < ('storage', 256, 0, 14):
                                revert with 0, 17
                            if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
                                revert with 0, 17
                            if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
                                revert with 0, 17
                            if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
                                revert with 0, 17
                            uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
                            uint256(stor[14].field_0) = block.timestamp
                            _681 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_681] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_681 + 32] = Mask(80, 0, block.timestamp)
                            mem[_681 + 64] = address(cd[4])
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[32] = 4
                        uint16(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_96) = address(cd[4])
                        if ('storage', 256, 0, 13) > -2:
                            revert with 0, 17
                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) + 1
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = block.timestamp
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                    else:
                        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _627 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 416
                        _651 = mem[64]
                        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 416
                        require mem[_627] == bool(mem[_627])
                        mem[_651] = mem[_627]
                        require mem[_627 + 32] == mem[_627 + 63 len 1]
                        mem[_651 + 32] = mem[_627 + 32]
                        require mem[_627 + 64] == mem[_627 + 95 len 1]
                        mem[_651 + 64] = mem[_627 + 64]
                        require mem[_627 + 96] == mem[_627 + 127 len 1]
                        mem[_651 + 96] = mem[_627 + 96]
                        require mem[_627 + 128] == mem[_627 + 159 len 1]
                        mem[_651 + 128] = mem[_627 + 128]
                        require mem[_627 + 160] == mem[_627 + 191 len 1]
                        mem[_651 + 160] = mem[_627 + 160]
                        require mem[_627 + 192] == mem[_627 + 223 len 1]
                        mem[_651 + 192] = mem[_627 + 192]
                        require mem[_627 + 224] == mem[_627 + 255 len 1]
                        mem[_651 + 224] = mem[_627 + 224]
                        require mem[_627 + 256] == mem[_627 + 287 len 1]
                        mem[_651 + 256] = mem[_627 + 256]
                        require mem[_627 + 288] == mem[_627 + 319 len 1]
                        mem[_651 + 288] = mem[_627 + 288]
                        require mem[_627 + 320] == mem[_627 + 351 len 1]
                        mem[_651 + 320] = mem[_627 + 320]
                        require mem[_627 + 352] == mem[_627 + 383 len 1]
                        mem[_651 + 352] = mem[_627 + 352]
                        require mem[_627 + 384] == mem[_627 + 415 len 1]
                        mem[_651 + 384] = mem[_627 + 384]
                        if 8 < mem[_651 + 415 len 1]:
                            revert with 0, 17
                        if ('storage', 256, 0, 7) > !uint8(-mem[_651 + 415 len 1] + 8):
                            revert with 0, 17
                        uint256(stor[7].field_0) = ('storage', 256, 0, 7) + uint8(-mem[_651 + 415 len 1] + 8)
                        mem[0] = uint8(-mem[_651 + 415 len 1] + 8)
                        _774 = sha3(mem[0], 5)
                        mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        uint256(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 6)].field_0) = ('storage', 256, 0, ('var', '_774'))
                        mem[32] = 5
                        _776 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_776] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[_776 + 32] = ('storage', 80, 0, 9)
                        mem[_776 + 64] = address(cd[4])
                        uint256(stor[_774].field_0) = ('storage', 256, 0, ('var', '_774')) + 1
                        mem[0] = _774
                        Mask(80, 0, stor[('storage', 256, 0, ('var', '_774')) + sha3(_774)].field_0) = ('storage', 80, 0, 9)
                        uint16(stor[('storage', 256, 0, ('var', '_774')) + sha3(_774)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                        Mask(80, 0, stor[('storage', 256, 0, ('var', '_774')) + sha3(_774)].field_16) = 0
                        address(stor[('storage', 256, 0, ('var', '_774')) + sha3(_774)].field_96) = address(cd[4])
                        mem[mem[64]] = address(cd[4])
                        mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = ('storage', 256, 0, 9)
                        emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, ('storage', 256, 0, 9));
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
                    mem[32] = 1
                    uint256(stor[sha3(address(cd[4]), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1))) + 1
                    mem[0] = sha3(address(cd[4]), 1)
                    uint16(stor[sha3(sha3(address(cd[4]), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1)))].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                    Mask(240, 0, stor[sha3(sha3(address(cd[4]), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1)))].field_16) = 0
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == ('storage', 160, 0, 2):
                        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _427 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 416
                        _433 = mem[64]
                        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 416
                        require mem[_427] == bool(mem[_427])
                        mem[_433] = mem[_427]
                        require mem[_427 + 32] == mem[_427 + 63 len 1]
                        mem[_433 + 32] = mem[_427 + 32]
                        require mem[_427 + 64] == mem[_427 + 95 len 1]
                        mem[_433 + 64] = mem[_427 + 64]
                        require mem[_427 + 96] == mem[_427 + 127 len 1]
                        mem[_433 + 96] = mem[_427 + 96]
                        require mem[_427 + 128] == mem[_427 + 159 len 1]
                        mem[_433 + 128] = mem[_427 + 128]
                        require mem[_427 + 160] == mem[_427 + 191 len 1]
                        mem[_433 + 160] = mem[_427 + 160]
                        require mem[_427 + 192] == mem[_427 + 223 len 1]
                        mem[_433 + 192] = mem[_427 + 192]
                        require mem[_427 + 224] == mem[_427 + 255 len 1]
                        mem[_433 + 224] = mem[_427 + 224]
                        require mem[_427 + 256] == mem[_427 + 287 len 1]
                        mem[_433 + 256] = mem[_427 + 256]
                        require mem[_427 + 288] == mem[_427 + 319 len 1]
                        mem[_433 + 288] = mem[_427 + 288]
                        require mem[_427 + 320] == mem[_427 + 351 len 1]
                        mem[_433 + 320] = mem[_427 + 320]
                        require mem[_427 + 352] == mem[_427 + 383 len 1]
                        mem[_433 + 352] = mem[_427 + 352]
                        require mem[_427 + 384] == mem[_427 + 415 len 1]
                        mem[_433 + 384] = mem[_427 + 384]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_433]:
                            if ('storage', 8, 160, 0):
                                revert with 0, 'Pausable: paused'
                            if ('storage', 256, 0, 12) >= 5000000000 * 10^18:
                                _547 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_547] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_547 + 32] = Mask(80, 0, block.timestamp)
                                mem[_547 + 64] = address(cd[4])
                            else:
                                if block.timestamp < ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
                                    revert with 0, 17
                                if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                                uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
                                uint256(stor[14].field_0) = block.timestamp
                                _596 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_596] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_596 + 32] = Mask(80, 0, block.timestamp)
                                mem[_596 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_16) = Mask(80, 0, block.timestamp)
                            address(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_96) = address(cd[4])
                            if ('storage', 256, 0, 13) > -2:
                                revert with 0, 17
                            uint256(stor[13].field_0) = ('storage', 256, 0, 13) + 1
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _546 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 416
                            _567 = mem[64]
                            if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 416
                            require mem[_546] == bool(mem[_546])
                            mem[_567] = mem[_546]
                            require mem[_546 + 32] == mem[_546 + 63 len 1]
                            mem[_567 + 32] = mem[_546 + 32]
                            require mem[_546 + 64] == mem[_546 + 95 len 1]
                            mem[_567 + 64] = mem[_546 + 64]
                            require mem[_546 + 96] == mem[_546 + 127 len 1]
                            mem[_567 + 96] = mem[_546 + 96]
                            require mem[_546 + 128] == mem[_546 + 159 len 1]
                            mem[_567 + 128] = mem[_546 + 128]
                            require mem[_546 + 160] == mem[_546 + 191 len 1]
                            mem[_567 + 160] = mem[_546 + 160]
                            require mem[_546 + 192] == mem[_546 + 223 len 1]
                            mem[_567 + 192] = mem[_546 + 192]
                            require mem[_546 + 224] == mem[_546 + 255 len 1]
                            mem[_567 + 224] = mem[_546 + 224]
                            require mem[_546 + 256] == mem[_546 + 287 len 1]
                            mem[_567 + 256] = mem[_546 + 256]
                            require mem[_546 + 288] == mem[_546 + 319 len 1]
                            mem[_567 + 288] = mem[_546 + 288]
                            require mem[_546 + 320] == mem[_546 + 351 len 1]
                            mem[_567 + 320] = mem[_546 + 320]
                            require mem[_546 + 352] == mem[_546 + 383 len 1]
                            mem[_567 + 352] = mem[_546 + 352]
                            require mem[_546 + 384] == mem[_546 + 415 len 1]
                            mem[_567 + 384] = mem[_546 + 384]
                            if 8 < mem[_567 + 415 len 1]:
                                revert with 0, 17
                            if ('storage', 256, 0, 7) > !uint8(-mem[_567 + 415 len 1] + 8):
                                revert with 0, 17
                            uint256(stor[7].field_0) = ('storage', 256, 0, 7) + uint8(-mem[_567 + 415 len 1] + 8)
                            mem[0] = uint8(-mem[_567 + 415 len 1] + 8)
                            _741 = sha3(mem[0], 5)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint256(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 6)].field_0) = ('storage', 256, 0, ('var', '_741'))
                            mem[32] = 5
                            _743 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_743] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_743 + 32] = ('storage', 80, 0, 9)
                            mem[_743 + 64] = address(cd[4])
                            uint256(stor[_741].field_0) = ('storage', 256, 0, ('var', '_741')) + 1
                            mem[0] = _741
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_741')) + sha3(_741)].field_0) = ('storage', 80, 0, 9)
                            uint16(stor[('storage', 256, 0, ('var', '_741')) + sha3(_741)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_741')) + sha3(_741)].field_16) = 0
                            address(stor[('storage', 256, 0, ('var', '_741')) + sha3(_741)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = ('storage', 256, 0, 9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, ('storage', 256, 0, 9));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall ('storage', 160, 0, 2).0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_422] == mem[_422 + 12 len 20]
                        if mem[_422 + 12 len 20] != msg.sender:
                            revert with 0, 'Don't play with other's Token'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(('storage', 160, 0, 2))
                        call ('storage', 160, 0, 2).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 416
                        _475 = mem[64]
                        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 416
                        require mem[_469] == bool(mem[_469])
                        mem[_475] = mem[_469]
                        require mem[_469 + 32] == mem[_469 + 63 len 1]
                        mem[_475 + 32] = mem[_469 + 32]
                        require mem[_469 + 64] == mem[_469 + 95 len 1]
                        mem[_475 + 64] = mem[_469 + 64]
                        require mem[_469 + 96] == mem[_469 + 127 len 1]
                        mem[_475 + 96] = mem[_469 + 96]
                        require mem[_469 + 128] == mem[_469 + 159 len 1]
                        mem[_475 + 128] = mem[_469 + 128]
                        require mem[_469 + 160] == mem[_469 + 191 len 1]
                        mem[_475 + 160] = mem[_469 + 160]
                        require mem[_469 + 192] == mem[_469 + 223 len 1]
                        mem[_475 + 192] = mem[_469 + 192]
                        require mem[_469 + 224] == mem[_469 + 255 len 1]
                        mem[_475 + 224] = mem[_469 + 224]
                        require mem[_469 + 256] == mem[_469 + 287 len 1]
                        mem[_475 + 256] = mem[_469 + 256]
                        require mem[_469 + 288] == mem[_469 + 319 len 1]
                        mem[_475 + 288] = mem[_469 + 288]
                        require mem[_469 + 320] == mem[_469 + 351 len 1]
                        mem[_475 + 320] = mem[_469 + 320]
                        require mem[_469 + 352] == mem[_469 + 383 len 1]
                        mem[_475 + 352] = mem[_469 + 352]
                        require mem[_469 + 384] == mem[_469 + 415 len 1]
                        mem[_475 + 384] = mem[_469 + 384]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_475]:
                            if ('storage', 8, 160, 0):
                                revert with 0, 'Pausable: paused'
                            if ('storage', 256, 0, 12) >= 5000000000 * 10^18:
                                _634 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_634] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_634 + 32] = Mask(80, 0, block.timestamp)
                                mem[_634 + 64] = address(cd[4])
                            else:
                                if block.timestamp < ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
                                    revert with 0, 17
                                if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                                uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
                                uint256(stor[14].field_0) = block.timestamp
                                _686 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_686] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_686 + 32] = Mask(80, 0, block.timestamp)
                                mem[_686 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_16) = Mask(80, 0, block.timestamp)
                            address(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_96) = address(cd[4])
                            if ('storage', 256, 0, 13) > -2:
                                revert with 0, 17
                            uint256(stor[13].field_0) = ('storage', 256, 0, 13) + 1
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _633 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 416
                            _654 = mem[64]
                            if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 416
                            require mem[_633] == bool(mem[_633])
                            mem[_654] = mem[_633]
                            require mem[_633 + 32] == mem[_633 + 63 len 1]
                            mem[_654 + 32] = mem[_633 + 32]
                            require mem[_633 + 64] == mem[_633 + 95 len 1]
                            mem[_654 + 64] = mem[_633 + 64]
                            require mem[_633 + 96] == mem[_633 + 127 len 1]
                            mem[_654 + 96] = mem[_633 + 96]
                            require mem[_633 + 128] == mem[_633 + 159 len 1]
                            mem[_654 + 128] = mem[_633 + 128]
                            require mem[_633 + 160] == mem[_633 + 191 len 1]
                            mem[_654 + 160] = mem[_633 + 160]
                            require mem[_633 + 192] == mem[_633 + 223 len 1]
                            mem[_654 + 192] = mem[_633 + 192]
                            require mem[_633 + 224] == mem[_633 + 255 len 1]
                            mem[_654 + 224] = mem[_633 + 224]
                            require mem[_633 + 256] == mem[_633 + 287 len 1]
                            mem[_654 + 256] = mem[_633 + 256]
                            require mem[_633 + 288] == mem[_633 + 319 len 1]
                            mem[_654 + 288] = mem[_633 + 288]
                            require mem[_633 + 320] == mem[_633 + 351 len 1]
                            mem[_654 + 320] = mem[_633 + 320]
                            require mem[_633 + 352] == mem[_633 + 383 len 1]
                            mem[_654 + 352] = mem[_633 + 352]
                            require mem[_633 + 384] == mem[_633 + 415 len 1]
                            mem[_654 + 384] = mem[_633 + 384]
                            if 8 < mem[_654 + 415 len 1]:
                                revert with 0, 17
                            if ('storage', 256, 0, 7) > !uint8(-mem[_654 + 415 len 1] + 8):
                                revert with 0, 17
                            uint256(stor[7].field_0) = ('storage', 256, 0, 7) + uint8(-mem[_654 + 415 len 1] + 8)
                            mem[0] = uint8(-mem[_654 + 415 len 1] + 8)
                            _783 = sha3(mem[0], 5)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint256(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 6)].field_0) = ('storage', 256, 0, ('var', '_783'))
                            mem[32] = 5
                            _785 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_785] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_785 + 32] = ('storage', 80, 0, 9)
                            mem[_785 + 64] = address(cd[4])
                            uint256(stor[_783].field_0) = ('storage', 256, 0, ('var', '_783')) + 1
                            mem[0] = _783
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_783')) + sha3(_783)].field_0) = ('storage', 80, 0, 9)
                            uint16(stor[('storage', 256, 0, ('var', '_783')) + sha3(_783)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_783')) + sha3(_783)].field_16) = 0
                            address(stor[('storage', 256, 0, ('var', '_783')) + sha3(_783)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = ('storage', 256, 0, 9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, ('storage', 256, 0, 9));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if ('storage', 160, 0, 2) != msg.sender:
                revert with 0, 'This is not the correct address'
            idx = 0
            while idx < ('cd', 36).length:
                require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                if uint16(cd[((32 * idx) + cd[36] + 36)]):
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = 1
                    uint256(stor[sha3(address(cd[4]), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1))) + 1
                    mem[0] = sha3(address(cd[4]), 1)
                    uint16(stor[sha3(sha3(address(cd[4]), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1)))].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                    Mask(240, 0, stor[sha3(sha3(address(cd[4]), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, ('cd', 4)), 1)))].field_16) = 0
                    if idx >= ('cd', 36).length:
                        revert with 0, 50
                    require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                    if msg.sender == ('storage', 160, 0, 2):
                        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 416
                        _434 = mem[64]
                        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 416
                        require mem[_428] == bool(mem[_428])
                        mem[_434] = mem[_428]
                        require mem[_428 + 32] == mem[_428 + 63 len 1]
                        mem[_434 + 32] = mem[_428 + 32]
                        require mem[_428 + 64] == mem[_428 + 95 len 1]
                        mem[_434 + 64] = mem[_428 + 64]
                        require mem[_428 + 96] == mem[_428 + 127 len 1]
                        mem[_434 + 96] = mem[_428 + 96]
                        require mem[_428 + 128] == mem[_428 + 159 len 1]
                        mem[_434 + 128] = mem[_428 + 128]
                        require mem[_428 + 160] == mem[_428 + 191 len 1]
                        mem[_434 + 160] = mem[_428 + 160]
                        require mem[_428 + 192] == mem[_428 + 223 len 1]
                        mem[_434 + 192] = mem[_428 + 192]
                        require mem[_428 + 224] == mem[_428 + 255 len 1]
                        mem[_434 + 224] = mem[_428 + 224]
                        require mem[_428 + 256] == mem[_428 + 287 len 1]
                        mem[_434 + 256] = mem[_428 + 256]
                        require mem[_428 + 288] == mem[_428 + 319 len 1]
                        mem[_434 + 288] = mem[_428 + 288]
                        require mem[_428 + 320] == mem[_428 + 351 len 1]
                        mem[_434 + 320] = mem[_428 + 320]
                        require mem[_428 + 352] == mem[_428 + 383 len 1]
                        mem[_434 + 352] = mem[_428 + 352]
                        require mem[_428 + 384] == mem[_428 + 415 len 1]
                        mem[_434 + 384] = mem[_428 + 384]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_434]:
                            if ('storage', 8, 160, 0):
                                revert with 0, 'Pausable: paused'
                            if ('storage', 256, 0, 12) >= 5000000000 * 10^18:
                                _553 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_553] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_553 + 32] = Mask(80, 0, block.timestamp)
                                mem[_553 + 64] = address(cd[4])
                            else:
                                if block.timestamp < ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
                                    revert with 0, 17
                                if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                                uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
                                uint256(stor[14].field_0) = block.timestamp
                                _601 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_601] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_601 + 32] = Mask(80, 0, block.timestamp)
                                mem[_601 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_16) = Mask(80, 0, block.timestamp)
                            address(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_96) = address(cd[4])
                            if ('storage', 256, 0, 13) > -2:
                                revert with 0, 17
                            uint256(stor[13].field_0) = ('storage', 256, 0, 13) + 1
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _552 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 416
                            _570 = mem[64]
                            if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 416
                            require mem[_552] == bool(mem[_552])
                            mem[_570] = mem[_552]
                            require mem[_552 + 32] == mem[_552 + 63 len 1]
                            mem[_570 + 32] = mem[_552 + 32]
                            require mem[_552 + 64] == mem[_552 + 95 len 1]
                            mem[_570 + 64] = mem[_552 + 64]
                            require mem[_552 + 96] == mem[_552 + 127 len 1]
                            mem[_570 + 96] = mem[_552 + 96]
                            require mem[_552 + 128] == mem[_552 + 159 len 1]
                            mem[_570 + 128] = mem[_552 + 128]
                            require mem[_552 + 160] == mem[_552 + 191 len 1]
                            mem[_570 + 160] = mem[_552 + 160]
                            require mem[_552 + 192] == mem[_552 + 223 len 1]
                            mem[_570 + 192] = mem[_552 + 192]
                            require mem[_552 + 224] == mem[_552 + 255 len 1]
                            mem[_570 + 224] = mem[_552 + 224]
                            require mem[_552 + 256] == mem[_552 + 287 len 1]
                            mem[_570 + 256] = mem[_552 + 256]
                            require mem[_552 + 288] == mem[_552 + 319 len 1]
                            mem[_570 + 288] = mem[_552 + 288]
                            require mem[_552 + 320] == mem[_552 + 351 len 1]
                            mem[_570 + 320] = mem[_552 + 320]
                            require mem[_552 + 352] == mem[_552 + 383 len 1]
                            mem[_570 + 352] = mem[_552 + 352]
                            require mem[_552 + 384] == mem[_552 + 415 len 1]
                            mem[_570 + 384] = mem[_552 + 384]
                            if 8 < mem[_570 + 415 len 1]:
                                revert with 0, 17
                            if ('storage', 256, 0, 7) > !uint8(-mem[_570 + 415 len 1] + 8):
                                revert with 0, 17
                            uint256(stor[7].field_0) = ('storage', 256, 0, 7) + uint8(-mem[_570 + 415 len 1] + 8)
                            mem[0] = uint8(-mem[_570 + 415 len 1] + 8)
                            _750 = sha3(mem[0], 5)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint256(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 6)].field_0) = ('storage', 256, 0, ('var', '_750'))
                            mem[32] = 5
                            _752 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_752] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_752 + 32] = ('storage', 80, 0, 9)
                            mem[_752 + 64] = address(cd[4])
                            uint256(stor[_750].field_0) = ('storage', 256, 0, ('var', '_750')) + 1
                            mem[0] = _750
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_750')) + sha3(_750)].field_0) = ('storage', 80, 0, 9)
                            uint16(stor[('storage', 256, 0, ('var', '_750')) + sha3(_750)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_750')) + sha3(_750)].field_16) = 0
                            address(stor[('storage', 256, 0, ('var', '_750')) + sha3(_750)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = ('storage', 256, 0, 9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, ('storage', 256, 0, 9));
                    else:
                        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall ('storage', 160, 0, 2).0x6352211e with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _425 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_425] == mem[_425 + 12 len 20]
                        if mem[_425 + 12 len 20] != msg.sender:
                            revert with 0, 'Don't play with other's Token'
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(('storage', 160, 0, 2))
                        call ('storage', 160, 0, 2).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), uint16(cd[((32 * idx) + cd[36] + 36)])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                gas gas_remaining wei
                               args (cd[((32 * idx) + cd[36] + 36)] << 240)
                        mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 416
                        _476 = mem[64]
                        if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                            revert with 0, 65
                        mem[64] = mem[64] + 416
                        require mem[_470] == bool(mem[_470])
                        mem[_476] = mem[_470]
                        require mem[_470 + 32] == mem[_470 + 63 len 1]
                        mem[_476 + 32] = mem[_470 + 32]
                        require mem[_470 + 64] == mem[_470 + 95 len 1]
                        mem[_476 + 64] = mem[_470 + 64]
                        require mem[_470 + 96] == mem[_470 + 127 len 1]
                        mem[_476 + 96] = mem[_470 + 96]
                        require mem[_470 + 128] == mem[_470 + 159 len 1]
                        mem[_476 + 128] = mem[_470 + 128]
                        require mem[_470 + 160] == mem[_470 + 191 len 1]
                        mem[_476 + 160] = mem[_470 + 160]
                        require mem[_470 + 192] == mem[_470 + 223 len 1]
                        mem[_476 + 192] = mem[_470 + 192]
                        require mem[_470 + 224] == mem[_470 + 255 len 1]
                        mem[_476 + 224] = mem[_470 + 224]
                        require mem[_470 + 256] == mem[_470 + 287 len 1]
                        mem[_476 + 256] = mem[_470 + 256]
                        require mem[_470 + 288] == mem[_470 + 319 len 1]
                        mem[_476 + 288] = mem[_470 + 288]
                        require mem[_470 + 320] == mem[_470 + 351 len 1]
                        mem[_476 + 320] = mem[_470 + 320]
                        require mem[_470 + 352] == mem[_470 + 383 len 1]
                        mem[_476 + 352] = mem[_470 + 352]
                        require mem[_470 + 384] == mem[_470 + 415 len 1]
                        mem[_476 + 384] = mem[_470 + 384]
                        if idx >= ('cd', 36).length:
                            revert with 0, 50
                        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
                        if mem[_476]:
                            if ('storage', 8, 160, 0):
                                revert with 0, 'Pausable: paused'
                            if ('storage', 256, 0, 12) >= 5000000000 * 10^18:
                                _640 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_640] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_640 + 32] = Mask(80, 0, block.timestamp)
                                mem[_640 + 64] = address(cd[4])
                            else:
                                if block.timestamp < ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
                                    revert with 0, 17
                                if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
                                    revert with 0, 17
                                if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                                uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
                                uint256(stor[14].field_0) = block.timestamp
                                _691 = mem[64]
                                mem[64] = mem[64] + 96
                                mem[_691] = uint16(cd[((32 * idx) + cd[36] + 36)])
                                mem[_691 + 32] = Mask(80, 0, block.timestamp)
                                mem[_691 + 64] = address(cd[4])
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[32] = 4
                            uint16(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_16) = Mask(80, 0, block.timestamp)
                            address(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 4)].field_96) = address(cd[4])
                            if ('storage', 256, 0, 13) > -2:
                                revert with 0, 17
                            uint256(stor[13].field_0) = ('storage', 256, 0, 13) + 1
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = block.timestamp
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, block.timestamp);
                        else:
                            staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[36] + 36)] << 240)
                            mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _639 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 416
                            _657 = mem[64]
                            if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                                revert with 0, 65
                            mem[64] = mem[64] + 416
                            require mem[_639] == bool(mem[_639])
                            mem[_657] = mem[_639]
                            require mem[_639 + 32] == mem[_639 + 63 len 1]
                            mem[_657 + 32] = mem[_639 + 32]
                            require mem[_639 + 64] == mem[_639 + 95 len 1]
                            mem[_657 + 64] = mem[_639 + 64]
                            require mem[_639 + 96] == mem[_639 + 127 len 1]
                            mem[_657 + 96] = mem[_639 + 96]
                            require mem[_639 + 128] == mem[_639 + 159 len 1]
                            mem[_657 + 128] = mem[_639 + 128]
                            require mem[_639 + 160] == mem[_639 + 191 len 1]
                            mem[_657 + 160] = mem[_639 + 160]
                            require mem[_639 + 192] == mem[_639 + 223 len 1]
                            mem[_657 + 192] = mem[_639 + 192]
                            require mem[_639 + 224] == mem[_639 + 255 len 1]
                            mem[_657 + 224] = mem[_639 + 224]
                            require mem[_639 + 256] == mem[_639 + 287 len 1]
                            mem[_657 + 256] = mem[_639 + 256]
                            require mem[_639 + 288] == mem[_639 + 319 len 1]
                            mem[_657 + 288] = mem[_639 + 288]
                            require mem[_639 + 320] == mem[_639 + 351 len 1]
                            mem[_657 + 320] = mem[_639 + 320]
                            require mem[_639 + 352] == mem[_639 + 383 len 1]
                            mem[_657 + 352] = mem[_639 + 352]
                            require mem[_639 + 384] == mem[_639 + 415 len 1]
                            mem[_657 + 384] = mem[_639 + 384]
                            if 8 < mem[_657 + 415 len 1]:
                                revert with 0, 17
                            if ('storage', 256, 0, 7) > !uint8(-mem[_657 + 415 len 1] + 8):
                                revert with 0, 17
                            uint256(stor[7].field_0) = ('storage', 256, 0, 7) + uint8(-mem[_657 + 415 len 1] + 8)
                            mem[0] = uint8(-mem[_657 + 415 len 1] + 8)
                            _792 = sha3(mem[0], 5)
                            mem[0] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            uint256(stor[sha3(cd[((32 * idx) + cd[36] + 36)] << 240, 6)].field_0) = ('storage', 256, 0, ('var', '_792'))
                            mem[32] = 5
                            _794 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_794] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[_794 + 32] = ('storage', 80, 0, 9)
                            mem[_794 + 64] = address(cd[4])
                            uint256(stor[_792].field_0) = ('storage', 256, 0, ('var', '_792')) + 1
                            mem[0] = _792
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_792')) + sha3(_792)].field_0) = ('storage', 80, 0, 9)
                            uint16(stor[('storage', 256, 0, ('var', '_792')) + sha3(_792)].field_0) = uint16(cd[((32 * idx) + cd[36] + 36)])
                            Mask(80, 0, stor[('storage', 256, 0, ('var', '_792')) + sha3(_792)].field_16) = 0
                            address(stor[('storage', 256, 0, ('var', '_792')) + sha3(_792)].field_96) = address(cd[4])
                            mem[mem[64]] = address(cd[4])
                            mem[mem[64] + 32] = uint16(cd[((32 * idx) + cd[36] + 36)])
                            mem[mem[64] + 64] = ('storage', 256, 0, 9)
                            emit TokenStaked(address(cd[4]), cd[((32 * idx) + cd[36] + 36)] << 240, ('storage', 256, 0, 9));
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    uint8(stor[15].field_8) = 0
}

function claimAll() payable {
    if msg.sender != tx.origin:
        revert with 0, 'Only Externally Owned Account'
    if not ('storage', 8, 16, 15):
        revert with 0, 'Claim is not currently possible'
    mem[96] = 0x986b21000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    staticcall this.address.getTokensOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _9 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + (32 * _9) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _9)] = mem[_8 + 128 len ceil32(32 * _9)]
    if ('storage', 8, 8, 15):
        revert with 0, 'You can't reentrantry'
    uint8(stor[15].field_8) = 1
    if 5000000000 * 10^18 <= ('storage', 256, 0, 12):
        if tx.origin == msg.sender:
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            s = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _989 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _993 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_989] == bool(mem[_989])
                mem[_993] = mem[_989]
                require mem[_989 + 32] == mem[_989 + 63 len 1]
                mem[_993 + 32] = mem[_989 + 32]
                require mem[_989 + 64] == mem[_989 + 95 len 1]
                mem[_993 + 64] = mem[_989 + 64]
                require mem[_989 + 96] == mem[_989 + 127 len 1]
                mem[_993 + 96] = mem[_989 + 96]
                require mem[_989 + 128] == mem[_989 + 159 len 1]
                mem[_993 + 128] = mem[_989 + 128]
                require mem[_989 + 160] == mem[_989 + 191 len 1]
                mem[_993 + 160] = mem[_989 + 160]
                require mem[_989 + 192] == mem[_989 + 223 len 1]
                mem[_993 + 192] = mem[_989 + 192]
                require mem[_989 + 224] == mem[_989 + 255 len 1]
                mem[_993 + 224] = mem[_989 + 224]
                require mem[_989 + 256] == mem[_989 + 287 len 1]
                mem[_993 + 256] = mem[_989 + 256]
                require mem[_989 + 288] == mem[_989 + 319 len 1]
                mem[_993 + 288] = mem[_989 + 288]
                require mem[_989 + 320] == mem[_989 + 351 len 1]
                mem[_993 + 320] = mem[_989 + 320]
                require mem[_989 + 352] == mem[_989 + 383 len 1]
                mem[_993 + 352] = mem[_989 + 352]
                require mem[_989 + 384] == mem[_989 + 415 len 1]
                mem[_993 + 384] = mem[_989 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_993]:
                    _1062 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _1071 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _1072 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1072] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_1072 + 32] = ('storage', 80, 16, ('var', '_1071'))
                    mem[_1072 + 64] = ('storage', 160, 96, ('var', '_1071'))
                    if ('storage', 160, 96, ('var', '_1071')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_1071')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_1071')) <= ('storage', 256, 0, 11):
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                        if block.timestamp < ('storage', 80, 16, ('var', '_1071')):
                            revert with 0, 17
                        if block.timestamp - ('storage', 80, 16, ('var', '_1071')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_1071')):
                            revert with 0, 17
                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > !(20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                                revert with 0, 17
                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1219 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1219] = uint16(_1062)
                            mem[_1219 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1219 + 64] = msg.sender
                        else:
                            if 20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1289 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1289] = uint16(_1062)
                            mem[_1289 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1289 + 64] = msg.sender
                        mem[0] = _1062
                        mem[32] = 4
                        uint16(stor[sha3(_1062, 4)].field_0) = uint16(_1062)
                        Mask(80, 0, stor[sha3(_1062, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1062, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1062
                        mem[mem[64] + 32] = 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1062, 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                        if s > !(80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        continue 
                    if ('storage', 80, 16, ('var', '_1071')) > ('storage', 256, 0, 14):
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > -1:
                                revert with 0, 17
                            _1158 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1158] = uint16(_1062)
                            mem[_1158 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1158 + 64] = msg.sender
                        else:
                            if 0 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            _1194 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1194] = uint16(_1062)
                            mem[_1194 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1194 + 64] = msg.sender
                        mem[0] = _1062
                        mem[32] = 4
                        uint16(stor[sha3(_1062, 4)].field_0) = uint16(_1062)
                        Mask(80, 0, stor[sha3(_1062, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1062, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1062
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1062, 0, 0
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_1071')):
                        revert with 0, 17
                    if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1071')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1071')):
                        revert with 0, 17
                    if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600:
                        revert with 0, 17
                    if not ('storage', 256, 0, 7):
                        if ('storage', 256, 0, 8) > !(20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1230 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1230] = uint16(_1062)
                        mem[_1230 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1230 + 64] = msg.sender
                    else:
                        if 20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            revert with 0, 18
                        if ('storage', 256, 0, 9) > !((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                            revert with 0, 17
                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                        uint256(stor[8].field_0) = 0
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1294 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1294] = uint16(_1062)
                        mem[_1294 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1294 + 64] = msg.sender
                    mem[0] = _1062
                    mem[32] = 4
                    uint16(stor[sha3(_1062, 4)].field_0) = uint16(_1062)
                    Mask(80, 0, stor[sha3(_1062, 4)].field_16) = Mask(80, 0, block.timestamp)
                    address(stor[sha3(_1062, 4)].field_96) = msg.sender
                    mem[mem[64]] = _1062
                    mem[mem[64] + 32] = 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                    mem[mem[64] + 64] = 0
                    emit 0x16d31e5e: _1062, 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                    if s > !(80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1071')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                    continue 
                _1061 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                staticcall ('storage', 160, 0, 2).0x6352211e with:
                        gas gas_remaining wei
                       args _1061
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1085 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1085] == mem[_1085 + 12 len 20]
                if mem[_1085 + 12 len 20] != this.address:
                    revert with 0, 'Wrong NFT'
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1061
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _1137 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_1133] == bool(mem[_1133])
                mem[_1137] = mem[_1133]
                require mem[_1133 + 32] == mem[_1133 + 63 len 1]
                mem[_1137 + 32] = mem[_1133 + 32]
                require mem[_1133 + 64] == mem[_1133 + 95 len 1]
                mem[_1137 + 64] = mem[_1133 + 64]
                require mem[_1133 + 96] == mem[_1133 + 127 len 1]
                mem[_1137 + 96] = mem[_1133 + 96]
                require mem[_1133 + 128] == mem[_1133 + 159 len 1]
                mem[_1137 + 128] = mem[_1133 + 128]
                require mem[_1133 + 160] == mem[_1133 + 191 len 1]
                mem[_1137 + 160] = mem[_1133 + 160]
                require mem[_1133 + 192] == mem[_1133 + 223 len 1]
                mem[_1137 + 192] = mem[_1133 + 192]
                require mem[_1133 + 224] == mem[_1133 + 255 len 1]
                mem[_1137 + 224] = mem[_1133 + 224]
                require mem[_1133 + 256] == mem[_1133 + 287 len 1]
                mem[_1137 + 256] = mem[_1133 + 256]
                require mem[_1133 + 288] == mem[_1133 + 319 len 1]
                mem[_1137 + 288] = mem[_1133 + 288]
                require mem[_1133 + 320] == mem[_1133 + 351 len 1]
                mem[_1137 + 320] = mem[_1133 + 320]
                require mem[_1133 + 352] == mem[_1133 + 383 len 1]
                mem[_1137 + 352] = mem[_1133 + 352]
                require mem[_1133 + 384] == mem[_1133 + 415 len 1]
                mem[_1137 + 384] = mem[_1133 + 384]
                _1361 = mem[_1137 + 384]
                if 8 < mem[_1137 + 415 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1137 + 415 len 1] + 8)
                _1365 = sha3(mem[0], 5)
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1374 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1374] = ('storage', 16, 0, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6)))))
                mem[_1374 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6)))))
                mem[_1374 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6)))))
                if ('storage', 160, 96, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))))) != msg.sender:
                    revert with 0, 'Not your properties'
                if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))))):
                    revert with 0, 17
                if uint8(-uint8(_1361) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))))) > -1 / uint8(-uint8(_1361) + 8):
                    revert with 0, 17
                _1393 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1393] = uint16(_1061)
                mem[_1393 + 32] = ('storage', 80, 0, 9)
                mem[_1393 + 64] = msg.sender
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_1361'))))), 5))):
                    revert with 0, 50
                mem[0] = sha3(-uint8(_1361) + 8 << 248, 5)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))) + sha3(sha3(-uint8(_1361) + 8 << 248, 5))].field_0) = uint16(_1061)
                Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))) + sha3(sha3(-uint8(_1361) + 8 << 248, 5))].field_0) = ('storage', 80, 0, 9)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))) + sha3(sha3(-uint8(_1361) + 8 << 248, 5))].field_80) = 0
                address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))) + sha3(sha3(-uint8(_1361) + 8 << 248, 5))].field_96) = msg.sender
                mem[mem[64]] = _1061
                mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_1361) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))))) * uint8(-uint8(_1361) + 8))
                mem[mem[64] + 64] = 0
                emit 0x1dfc3580: _1061, (('storage', 256, 0, 9) * uint8(-uint8(_1361) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))))) * uint8(-uint8(_1361) + 8)), 0
                if s > !((('storage', 256, 0, 9) * uint8(-uint8(_1361) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))))) * uint8(-uint8(_1361) + 8))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (('storage', 256, 0, 9) * uint8(-uint8(_1361) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1365')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1061'), 6))))) * uint8(-uint8(_1361) + 8))
                continue 
        else:
            if tx.origin != this.address:
                revert with 0, 'Only Externally Owned Account'
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            s = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _990 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _994 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_990] == bool(mem[_990])
                mem[_994] = mem[_990]
                require mem[_990 + 32] == mem[_990 + 63 len 1]
                mem[_994 + 32] = mem[_990 + 32]
                require mem[_990 + 64] == mem[_990 + 95 len 1]
                mem[_994 + 64] = mem[_990 + 64]
                require mem[_990 + 96] == mem[_990 + 127 len 1]
                mem[_994 + 96] = mem[_990 + 96]
                require mem[_990 + 128] == mem[_990 + 159 len 1]
                mem[_994 + 128] = mem[_990 + 128]
                require mem[_990 + 160] == mem[_990 + 191 len 1]
                mem[_994 + 160] = mem[_990 + 160]
                require mem[_990 + 192] == mem[_990 + 223 len 1]
                mem[_994 + 192] = mem[_990 + 192]
                require mem[_990 + 224] == mem[_990 + 255 len 1]
                mem[_994 + 224] = mem[_990 + 224]
                require mem[_990 + 256] == mem[_990 + 287 len 1]
                mem[_994 + 256] = mem[_990 + 256]
                require mem[_990 + 288] == mem[_990 + 319 len 1]
                mem[_994 + 288] = mem[_990 + 288]
                require mem[_990 + 320] == mem[_990 + 351 len 1]
                mem[_994 + 320] = mem[_990 + 320]
                require mem[_990 + 352] == mem[_990 + 383 len 1]
                mem[_994 + 352] = mem[_990 + 352]
                require mem[_990 + 384] == mem[_990 + 415 len 1]
                mem[_994 + 384] = mem[_990 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_994]:
                    _1064 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _1075 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _1076 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1076] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_1076 + 32] = ('storage', 80, 16, ('var', '_1075'))
                    mem[_1076 + 64] = ('storage', 160, 96, ('var', '_1075'))
                    if ('storage', 160, 96, ('var', '_1075')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_1075')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_1075')) <= ('storage', 256, 0, 11):
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                        if block.timestamp < ('storage', 80, 16, ('var', '_1075')):
                            revert with 0, 17
                        if block.timestamp - ('storage', 80, 16, ('var', '_1075')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_1075')):
                            revert with 0, 17
                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > !(20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                                revert with 0, 17
                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1222 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1222] = uint16(_1064)
                            mem[_1222 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1222 + 64] = msg.sender
                        else:
                            if 20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1290 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1290] = uint16(_1064)
                            mem[_1290 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1290 + 64] = msg.sender
                        mem[0] = _1064
                        mem[32] = 4
                        uint16(stor[sha3(_1064, 4)].field_0) = uint16(_1064)
                        Mask(80, 0, stor[sha3(_1064, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1064, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1064
                        mem[mem[64] + 32] = 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1064, 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                        if s > !(80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        continue 
                    if ('storage', 80, 16, ('var', '_1075')) > ('storage', 256, 0, 14):
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > -1:
                                revert with 0, 17
                            _1160 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1160] = uint16(_1064)
                            mem[_1160 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1160 + 64] = msg.sender
                        else:
                            if 0 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            _1196 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1196] = uint16(_1064)
                            mem[_1196 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1196 + 64] = msg.sender
                        mem[0] = _1064
                        mem[32] = 4
                        uint16(stor[sha3(_1064, 4)].field_0) = uint16(_1064)
                        Mask(80, 0, stor[sha3(_1064, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1064, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1064
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1064, 0, 0
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_1075')):
                        revert with 0, 17
                    if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1075')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1075')):
                        revert with 0, 17
                    if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600:
                        revert with 0, 17
                    if not ('storage', 256, 0, 7):
                        if ('storage', 256, 0, 8) > !(20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1236 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1236] = uint16(_1064)
                        mem[_1236 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1236 + 64] = msg.sender
                    else:
                        if 20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            revert with 0, 18
                        if ('storage', 256, 0, 9) > !((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                            revert with 0, 17
                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                        uint256(stor[8].field_0) = 0
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1300 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1300] = uint16(_1064)
                        mem[_1300 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1300 + 64] = msg.sender
                    mem[0] = _1064
                    mem[32] = 4
                    uint16(stor[sha3(_1064, 4)].field_0) = uint16(_1064)
                    Mask(80, 0, stor[sha3(_1064, 4)].field_16) = Mask(80, 0, block.timestamp)
                    address(stor[sha3(_1064, 4)].field_96) = msg.sender
                    mem[mem[64]] = _1064
                    mem[mem[64] + 32] = 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                    mem[mem[64] + 64] = 0
                    emit 0x16d31e5e: _1064, 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                    if s > !(80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1075')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                    continue 
                _1063 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                staticcall ('storage', 160, 0, 2).0x6352211e with:
                        gas gas_remaining wei
                       args _1063
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1088 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1088] == mem[_1088 + 12 len 20]
                if mem[_1088 + 12 len 20] != this.address:
                    revert with 0, 'Wrong NFT'
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1063
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1134 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _1138 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_1134] == bool(mem[_1134])
                mem[_1138] = mem[_1134]
                require mem[_1134 + 32] == mem[_1134 + 63 len 1]
                mem[_1138 + 32] = mem[_1134 + 32]
                require mem[_1134 + 64] == mem[_1134 + 95 len 1]
                mem[_1138 + 64] = mem[_1134 + 64]
                require mem[_1134 + 96] == mem[_1134 + 127 len 1]
                mem[_1138 + 96] = mem[_1134 + 96]
                require mem[_1134 + 128] == mem[_1134 + 159 len 1]
                mem[_1138 + 128] = mem[_1134 + 128]
                require mem[_1134 + 160] == mem[_1134 + 191 len 1]
                mem[_1138 + 160] = mem[_1134 + 160]
                require mem[_1134 + 192] == mem[_1134 + 223 len 1]
                mem[_1138 + 192] = mem[_1134 + 192]
                require mem[_1134 + 224] == mem[_1134 + 255 len 1]
                mem[_1138 + 224] = mem[_1134 + 224]
                require mem[_1134 + 256] == mem[_1134 + 287 len 1]
                mem[_1138 + 256] = mem[_1134 + 256]
                require mem[_1134 + 288] == mem[_1134 + 319 len 1]
                mem[_1138 + 288] = mem[_1134 + 288]
                require mem[_1134 + 320] == mem[_1134 + 351 len 1]
                mem[_1138 + 320] = mem[_1134 + 320]
                require mem[_1134 + 352] == mem[_1134 + 383 len 1]
                mem[_1138 + 352] = mem[_1134 + 352]
                require mem[_1134 + 384] == mem[_1134 + 415 len 1]
                mem[_1138 + 384] = mem[_1134 + 384]
                _1362 = mem[_1138 + 384]
                if 8 < mem[_1138 + 415 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1138 + 415 len 1] + 8)
                _1367 = sha3(mem[0], 5)
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1376 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1376] = ('storage', 16, 0, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6)))))
                mem[_1376 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6)))))
                mem[_1376 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6)))))
                if ('storage', 160, 96, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))))) != msg.sender:
                    revert with 0, 'Not your properties'
                if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))))):
                    revert with 0, 17
                if uint8(-uint8(_1362) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))))) > -1 / uint8(-uint8(_1362) + 8):
                    revert with 0, 17
                _1394 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1394] = uint16(_1063)
                mem[_1394 + 32] = ('storage', 80, 0, 9)
                mem[_1394 + 64] = msg.sender
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_1362'))))), 5))):
                    revert with 0, 50
                mem[0] = sha3(-uint8(_1362) + 8 << 248, 5)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))) + sha3(sha3(-uint8(_1362) + 8 << 248, 5))].field_0) = uint16(_1063)
                Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))) + sha3(sha3(-uint8(_1362) + 8 << 248, 5))].field_0) = ('storage', 80, 0, 9)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))) + sha3(sha3(-uint8(_1362) + 8 << 248, 5))].field_80) = 0
                address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))) + sha3(sha3(-uint8(_1362) + 8 << 248, 5))].field_96) = msg.sender
                mem[mem[64]] = _1063
                mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_1362) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))))) * uint8(-uint8(_1362) + 8))
                mem[mem[64] + 64] = 0
                emit 0x1dfc3580: _1063, (('storage', 256, 0, 9) * uint8(-uint8(_1362) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))))) * uint8(-uint8(_1362) + 8)), 0
                if s > !((('storage', 256, 0, 9) * uint8(-uint8(_1362) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))))) * uint8(-uint8(_1362) + 8))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (('storage', 256, 0, 9) * uint8(-uint8(_1362) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1367')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1063'), 6))))) * uint8(-uint8(_1362) + 8))
                continue 
    else:
        if block.timestamp < ('storage', 256, 0, 14):
            revert with 0, 17
        if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
            revert with 0, 17
        if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
            revert with 0, 17
        if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
            revert with 0, 17
        uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
        uint256(stor[14].field_0) = block.timestamp
        if tx.origin == msg.sender:
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            s = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _991 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _995 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_991] == bool(mem[_991])
                mem[_995] = mem[_991]
                require mem[_991 + 32] == mem[_991 + 63 len 1]
                mem[_995 + 32] = mem[_991 + 32]
                require mem[_991 + 64] == mem[_991 + 95 len 1]
                mem[_995 + 64] = mem[_991 + 64]
                require mem[_991 + 96] == mem[_991 + 127 len 1]
                mem[_995 + 96] = mem[_991 + 96]
                require mem[_991 + 128] == mem[_991 + 159 len 1]
                mem[_995 + 128] = mem[_991 + 128]
                require mem[_991 + 160] == mem[_991 + 191 len 1]
                mem[_995 + 160] = mem[_991 + 160]
                require mem[_991 + 192] == mem[_991 + 223 len 1]
                mem[_995 + 192] = mem[_991 + 192]
                require mem[_991 + 224] == mem[_991 + 255 len 1]
                mem[_995 + 224] = mem[_991 + 224]
                require mem[_991 + 256] == mem[_991 + 287 len 1]
                mem[_995 + 256] = mem[_991 + 256]
                require mem[_991 + 288] == mem[_991 + 319 len 1]
                mem[_995 + 288] = mem[_991 + 288]
                require mem[_991 + 320] == mem[_991 + 351 len 1]
                mem[_995 + 320] = mem[_991 + 320]
                require mem[_991 + 352] == mem[_991 + 383 len 1]
                mem[_995 + 352] = mem[_991 + 352]
                require mem[_991 + 384] == mem[_991 + 415 len 1]
                mem[_995 + 384] = mem[_991 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_995]:
                    _1066 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _1079 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _1080 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1080] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_1080 + 32] = ('storage', 80, 16, ('var', '_1079'))
                    mem[_1080 + 64] = ('storage', 160, 96, ('var', '_1079'))
                    if ('storage', 160, 96, ('var', '_1079')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_1079')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_1079')) <= ('storage', 256, 0, 11):
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                        if block.timestamp < ('storage', 80, 16, ('var', '_1079')):
                            revert with 0, 17
                        if block.timestamp - ('storage', 80, 16, ('var', '_1079')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_1079')):
                            revert with 0, 17
                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > !(20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                                revert with 0, 17
                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1225 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1225] = uint16(_1066)
                            mem[_1225 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1225 + 64] = msg.sender
                        else:
                            if 20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1291 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1291] = uint16(_1066)
                            mem[_1291 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1291 + 64] = msg.sender
                        mem[0] = _1066
                        mem[32] = 4
                        uint16(stor[sha3(_1066, 4)].field_0) = uint16(_1066)
                        Mask(80, 0, stor[sha3(_1066, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1066, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1066
                        mem[mem[64] + 32] = 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1066, 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                        if s > !(80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        continue 
                    if ('storage', 80, 16, ('var', '_1079')) > ('storage', 256, 0, 14):
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > -1:
                                revert with 0, 17
                            _1162 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1162] = uint16(_1066)
                            mem[_1162 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1162 + 64] = msg.sender
                        else:
                            if 0 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            _1198 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1198] = uint16(_1066)
                            mem[_1198 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1198 + 64] = msg.sender
                        mem[0] = _1066
                        mem[32] = 4
                        uint16(stor[sha3(_1066, 4)].field_0) = uint16(_1066)
                        Mask(80, 0, stor[sha3(_1066, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1066, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1066
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1066, 0, 0
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_1079')):
                        revert with 0, 17
                    if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1079')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1079')):
                        revert with 0, 17
                    if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600:
                        revert with 0, 17
                    if not ('storage', 256, 0, 7):
                        if ('storage', 256, 0, 8) > !(20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1242 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1242] = uint16(_1066)
                        mem[_1242 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1242 + 64] = msg.sender
                    else:
                        if 20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            revert with 0, 18
                        if ('storage', 256, 0, 9) > !((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                            revert with 0, 17
                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                        uint256(stor[8].field_0) = 0
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1306 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1306] = uint16(_1066)
                        mem[_1306 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1306 + 64] = msg.sender
                    mem[0] = _1066
                    mem[32] = 4
                    uint16(stor[sha3(_1066, 4)].field_0) = uint16(_1066)
                    Mask(80, 0, stor[sha3(_1066, 4)].field_16) = Mask(80, 0, block.timestamp)
                    address(stor[sha3(_1066, 4)].field_96) = msg.sender
                    mem[mem[64]] = _1066
                    mem[mem[64] + 32] = 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                    mem[mem[64] + 64] = 0
                    emit 0x16d31e5e: _1066, 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                    if s > !(80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1079')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                    continue 
                _1065 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                staticcall ('storage', 160, 0, 2).0x6352211e with:
                        gas gas_remaining wei
                       args _1065
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1091 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1091] == mem[_1091 + 12 len 20]
                if mem[_1091 + 12 len 20] != this.address:
                    revert with 0, 'Wrong NFT'
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1065
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _1139 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_1135] == bool(mem[_1135])
                mem[_1139] = mem[_1135]
                require mem[_1135 + 32] == mem[_1135 + 63 len 1]
                mem[_1139 + 32] = mem[_1135 + 32]
                require mem[_1135 + 64] == mem[_1135 + 95 len 1]
                mem[_1139 + 64] = mem[_1135 + 64]
                require mem[_1135 + 96] == mem[_1135 + 127 len 1]
                mem[_1139 + 96] = mem[_1135 + 96]
                require mem[_1135 + 128] == mem[_1135 + 159 len 1]
                mem[_1139 + 128] = mem[_1135 + 128]
                require mem[_1135 + 160] == mem[_1135 + 191 len 1]
                mem[_1139 + 160] = mem[_1135 + 160]
                require mem[_1135 + 192] == mem[_1135 + 223 len 1]
                mem[_1139 + 192] = mem[_1135 + 192]
                require mem[_1135 + 224] == mem[_1135 + 255 len 1]
                mem[_1139 + 224] = mem[_1135 + 224]
                require mem[_1135 + 256] == mem[_1135 + 287 len 1]
                mem[_1139 + 256] = mem[_1135 + 256]
                require mem[_1135 + 288] == mem[_1135 + 319 len 1]
                mem[_1139 + 288] = mem[_1135 + 288]
                require mem[_1135 + 320] == mem[_1135 + 351 len 1]
                mem[_1139 + 320] = mem[_1135 + 320]
                require mem[_1135 + 352] == mem[_1135 + 383 len 1]
                mem[_1139 + 352] = mem[_1135 + 352]
                require mem[_1135 + 384] == mem[_1135 + 415 len 1]
                mem[_1139 + 384] = mem[_1135 + 384]
                _1363 = mem[_1139 + 384]
                if 8 < mem[_1139 + 415 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1139 + 415 len 1] + 8)
                _1369 = sha3(mem[0], 5)
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1378 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1378] = ('storage', 16, 0, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6)))))
                mem[_1378 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6)))))
                mem[_1378 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6)))))
                if ('storage', 160, 96, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))))) != msg.sender:
                    revert with 0, 'Not your properties'
                if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))))):
                    revert with 0, 17
                if uint8(-uint8(_1363) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))))) > -1 / uint8(-uint8(_1363) + 8):
                    revert with 0, 17
                _1395 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1395] = uint16(_1065)
                mem[_1395 + 32] = ('storage', 80, 0, 9)
                mem[_1395 + 64] = msg.sender
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_1363'))))), 5))):
                    revert with 0, 50
                mem[0] = sha3(-uint8(_1363) + 8 << 248, 5)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))) + sha3(sha3(-uint8(_1363) + 8 << 248, 5))].field_0) = uint16(_1065)
                Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))) + sha3(sha3(-uint8(_1363) + 8 << 248, 5))].field_0) = ('storage', 80, 0, 9)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))) + sha3(sha3(-uint8(_1363) + 8 << 248, 5))].field_80) = 0
                address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))) + sha3(sha3(-uint8(_1363) + 8 << 248, 5))].field_96) = msg.sender
                mem[mem[64]] = _1065
                mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_1363) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))))) * uint8(-uint8(_1363) + 8))
                mem[mem[64] + 64] = 0
                emit 0x1dfc3580: _1065, (('storage', 256, 0, 9) * uint8(-uint8(_1363) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))))) * uint8(-uint8(_1363) + 8)), 0
                if s > !((('storage', 256, 0, 9) * uint8(-uint8(_1363) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))))) * uint8(-uint8(_1363) + 8))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (('storage', 256, 0, 9) * uint8(-uint8(_1363) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1369')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1065'), 6))))) * uint8(-uint8(_1363) + 8))
                continue 
        else:
            if tx.origin != this.address:
                revert with 0, 'Only Externally Owned Account'
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            s = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _992 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _996 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_992] == bool(mem[_992])
                mem[_996] = mem[_992]
                require mem[_992 + 32] == mem[_992 + 63 len 1]
                mem[_996 + 32] = mem[_992 + 32]
                require mem[_992 + 64] == mem[_992 + 95 len 1]
                mem[_996 + 64] = mem[_992 + 64]
                require mem[_992 + 96] == mem[_992 + 127 len 1]
                mem[_996 + 96] = mem[_992 + 96]
                require mem[_992 + 128] == mem[_992 + 159 len 1]
                mem[_996 + 128] = mem[_992 + 128]
                require mem[_992 + 160] == mem[_992 + 191 len 1]
                mem[_996 + 160] = mem[_992 + 160]
                require mem[_992 + 192] == mem[_992 + 223 len 1]
                mem[_996 + 192] = mem[_992 + 192]
                require mem[_992 + 224] == mem[_992 + 255 len 1]
                mem[_996 + 224] = mem[_992 + 224]
                require mem[_992 + 256] == mem[_992 + 287 len 1]
                mem[_996 + 256] = mem[_992 + 256]
                require mem[_992 + 288] == mem[_992 + 319 len 1]
                mem[_996 + 288] = mem[_992 + 288]
                require mem[_992 + 320] == mem[_992 + 351 len 1]
                mem[_996 + 320] = mem[_992 + 320]
                require mem[_992 + 352] == mem[_992 + 383 len 1]
                mem[_996 + 352] = mem[_992 + 352]
                require mem[_992 + 384] == mem[_992 + 415 len 1]
                mem[_996 + 384] = mem[_992 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_996]:
                    _1068 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _1083 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _1084 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_1084] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_1084 + 32] = ('storage', 80, 16, ('var', '_1083'))
                    mem[_1084 + 64] = ('storage', 160, 96, ('var', '_1083'))
                    if ('storage', 160, 96, ('var', '_1083')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_1083')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_1083')) <= ('storage', 256, 0, 11):
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                        if block.timestamp < ('storage', 80, 16, ('var', '_1083')):
                            revert with 0, 17
                        if block.timestamp - ('storage', 80, 16, ('var', '_1083')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_1083')):
                            revert with 0, 17
                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > !(20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                                revert with 0, 17
                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1228 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1228] = uint16(_1068)
                            mem[_1228 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1228 + 64] = msg.sender
                        else:
                            if 20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600:
                                revert with 0, 17
                            _1292 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1292] = uint16(_1068)
                            mem[_1292 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1292 + 64] = msg.sender
                        mem[0] = _1068
                        mem[32] = 4
                        uint16(stor[sha3(_1068, 4)].field_0) = uint16(_1068)
                        Mask(80, 0, stor[sha3(_1068, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1068, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1068
                        mem[mem[64] + 32] = 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1068, 80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                        if s > !(80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s + (80 * (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        continue 
                    if ('storage', 80, 16, ('var', '_1083')) > ('storage', 256, 0, 14):
                        if not ('storage', 256, 0, 7):
                            if ('storage', 256, 0, 8) > -1:
                                revert with 0, 17
                            _1164 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1164] = uint16(_1068)
                            mem[_1164 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1164 + 64] = msg.sender
                        else:
                            if 0 > !('storage', 256, 0, 8):
                                revert with 0, 17
                            if not ('storage', 256, 0, 7):
                                revert with 0, 18
                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                revert with 0, 17
                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                            uint256(stor[8].field_0) = 0
                            _1200 = mem[64]
                            mem[64] = mem[64] + 96
                            mem[_1200] = uint16(_1068)
                            mem[_1200 + 32] = Mask(80, 0, block.timestamp)
                            mem[_1200 + 64] = msg.sender
                        mem[0] = _1068
                        mem[32] = 4
                        uint16(stor[sha3(_1068, 4)].field_0) = uint16(_1068)
                        Mask(80, 0, stor[sha3(_1068, 4)].field_16) = Mask(80, 0, block.timestamp)
                        address(stor[sha3(_1068, 4)].field_96) = msg.sender
                        mem[mem[64]] = _1068
                        mem[mem[64] + 32] = 0
                        mem[mem[64] + 64] = 0
                        emit 0x16d31e5e: _1068, 0, 0
                        if s > -1:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s
                        continue 
                    if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_1083')):
                        revert with 0, 17
                    if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1083')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_1083')):
                        revert with 0, 17
                    if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 and 20 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600:
                        revert with 0, 17
                    if not ('storage', 256, 0, 7):
                        if ('storage', 256, 0, 8) > !(20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                            revert with 0, 17
                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + (20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1248 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1248] = uint16(_1068)
                        mem[_1248 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1248 + 64] = msg.sender
                    else:
                        if 20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100 > !('storage', 256, 0, 8):
                            revert with 0, 17
                        if not ('storage', 256, 0, 7):
                            revert with 0, 18
                        if ('storage', 256, 0, 9) > !((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                            revert with 0, 17
                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + ((20 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                        uint256(stor[8].field_0) = 0
                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 and 80 > -1 / (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600:
                            revert with 0, 17
                        _1312 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_1312] = uint16(_1068)
                        mem[_1312 + 32] = Mask(80, 0, block.timestamp)
                        mem[_1312 + 64] = msg.sender
                    mem[0] = _1068
                    mem[32] = 4
                    uint16(stor[sha3(_1068, 4)].field_0) = uint16(_1068)
                    Mask(80, 0, stor[sha3(_1068, 4)].field_16) = Mask(80, 0, block.timestamp)
                    address(stor[sha3(_1068, 4)].field_96) = msg.sender
                    mem[mem[64]] = _1068
                    mem[mem[64] + 32] = 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100
                    mem[mem[64] + 64] = 0
                    emit 0x16d31e5e: _1068, 80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100, 0
                    if s > !(80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (80 * (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_1083')) * ('storage', 256, 0, 10)) / 24 * 3600 / 100)
                    continue 
                _1067 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                staticcall ('storage', 160, 0, 2).0x6352211e with:
                        gas gas_remaining wei
                       args _1067
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1094 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1094] == mem[_1094 + 12 len 20]
                if mem[_1094 + 12 len 20] != this.address:
                    revert with 0, 'Wrong NFT'
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1067
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _1140 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_1136] == bool(mem[_1136])
                mem[_1140] = mem[_1136]
                require mem[_1136 + 32] == mem[_1136 + 63 len 1]
                mem[_1140 + 32] = mem[_1136 + 32]
                require mem[_1136 + 64] == mem[_1136 + 95 len 1]
                mem[_1140 + 64] = mem[_1136 + 64]
                require mem[_1136 + 96] == mem[_1136 + 127 len 1]
                mem[_1140 + 96] = mem[_1136 + 96]
                require mem[_1136 + 128] == mem[_1136 + 159 len 1]
                mem[_1140 + 128] = mem[_1136 + 128]
                require mem[_1136 + 160] == mem[_1136 + 191 len 1]
                mem[_1140 + 160] = mem[_1136 + 160]
                require mem[_1136 + 192] == mem[_1136 + 223 len 1]
                mem[_1140 + 192] = mem[_1136 + 192]
                require mem[_1136 + 224] == mem[_1136 + 255 len 1]
                mem[_1140 + 224] = mem[_1136 + 224]
                require mem[_1136 + 256] == mem[_1136 + 287 len 1]
                mem[_1140 + 256] = mem[_1136 + 256]
                require mem[_1136 + 288] == mem[_1136 + 319 len 1]
                mem[_1140 + 288] = mem[_1136 + 288]
                require mem[_1136 + 320] == mem[_1136 + 351 len 1]
                mem[_1140 + 320] = mem[_1136 + 320]
                require mem[_1136 + 352] == mem[_1136 + 383 len 1]
                mem[_1140 + 352] = mem[_1136 + 352]
                require mem[_1136 + 384] == mem[_1136 + 415 len 1]
                mem[_1140 + 384] = mem[_1136 + 384]
                _1364 = mem[_1140 + 384]
                if 8 < mem[_1140 + 415 len 1]:
                    revert with 0, 17
                mem[0] = uint8(-mem[_1140 + 415 len 1] + 8)
                _1371 = sha3(mem[0], 5)
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                    revert with 0, 50
                mem[0] = sha3(mem[0], 5)
                _1380 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1380] = ('storage', 16, 0, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6)))))
                mem[_1380 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6)))))
                mem[_1380 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6)))))
                if ('storage', 160, 96, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))))) != msg.sender:
                    revert with 0, 'Not your properties'
                if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))))):
                    revert with 0, 17
                if uint8(-uint8(_1364) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))))) > -1 / uint8(-uint8(_1364) + 8):
                    revert with 0, 17
                _1396 = mem[64]
                mem[64] = mem[64] + 96
                mem[_1396] = uint16(_1067)
                mem[_1396 + 32] = ('storage', 80, 0, 9)
                mem[_1396 + 64] = msg.sender
                mem[32] = 6
                if ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_1364'))))), 5))):
                    revert with 0, 50
                mem[0] = sha3(-uint8(_1364) + 8 << 248, 5)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))) + sha3(sha3(-uint8(_1364) + 8 << 248, 5))].field_0) = uint16(_1067)
                Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))) + sha3(sha3(-uint8(_1364) + 8 << 248, 5))].field_0) = ('storage', 80, 0, 9)
                uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))) + sha3(sha3(-uint8(_1364) + 8 << 248, 5))].field_80) = 0
                address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))) + sha3(sha3(-uint8(_1364) + 8 << 248, 5))].field_96) = msg.sender
                mem[mem[64]] = _1067
                mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_1364) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))))) * uint8(-uint8(_1364) + 8))
                mem[mem[64] + 64] = 0
                emit 0x1dfc3580: _1067, (('storage', 256, 0, 9) * uint8(-uint8(_1364) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))))) * uint8(-uint8(_1364) + 8)), 0
                if s > !((('storage', 256, 0, 9) * uint8(-uint8(_1364) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))))) * uint8(-uint8(_1364) + 8))):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (('storage', 256, 0, 9) * uint8(-uint8(_1364) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_1371')), ('storage', 256, 0, ('sha3', ('data', ('var', '_1067'), 6))))) * uint8(-uint8(_1364) + 8))
                continue 
    if s:
        require ext_code.size(('storage', 160, 0, 3))
        call ('storage', 160, 0, 3).0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    uint8(stor[15].field_8) = 0
}

function unstakeAll() payable {
    if msg.sender != tx.origin:
        revert with 0, 'Only Externally Owned Account'
    if not ('storage', 8, 16, 15):
        revert with 0, 'Claim is not currently possible'
    mem[96] = 0x986b21000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    staticcall this.address.getTokensOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _9 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + (32 * _9) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(32 * _9)] = mem[_8 + 128 len ceil32(32 * _9)]
    if ('storage', 8, 8, 15):
        revert with 0, 'You can't reentrantry'
    uint8(stor[15].field_8) = 1
    if 5000000000 * 10^18 <= ('storage', 256, 0, 12):
        if tx.origin == msg.sender:
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2077 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _2081 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_2077] == bool(mem[_2077])
                mem[_2081] = mem[_2077]
                require mem[_2077 + 32] == mem[_2077 + 63 len 1]
                mem[_2081 + 32] = mem[_2077 + 32]
                require mem[_2077 + 64] == mem[_2077 + 95 len 1]
                mem[_2081 + 64] = mem[_2077 + 64]
                require mem[_2077 + 96] == mem[_2077 + 127 len 1]
                mem[_2081 + 96] = mem[_2077 + 96]
                require mem[_2077 + 128] == mem[_2077 + 159 len 1]
                mem[_2081 + 128] = mem[_2077 + 128]
                require mem[_2077 + 160] == mem[_2077 + 191 len 1]
                mem[_2081 + 160] = mem[_2077 + 160]
                require mem[_2077 + 192] == mem[_2077 + 223 len 1]
                mem[_2081 + 192] = mem[_2077 + 192]
                require mem[_2077 + 224] == mem[_2077 + 255 len 1]
                mem[_2081 + 224] = mem[_2077 + 224]
                require mem[_2077 + 256] == mem[_2077 + 287 len 1]
                mem[_2081 + 256] = mem[_2077 + 256]
                require mem[_2077 + 288] == mem[_2077 + 319 len 1]
                mem[_2081 + 288] = mem[_2077 + 288]
                require mem[_2077 + 320] == mem[_2077 + 351 len 1]
                mem[_2081 + 320] = mem[_2077 + 320]
                require mem[_2077 + 352] == mem[_2077 + 383 len 1]
                mem[_2081 + 352] = mem[_2077 + 352]
                require mem[_2077 + 384] == mem[_2077 + 415 len 1]
                mem[_2081 + 384] = mem[_2077 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_2081]:
                    _2150 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _2159 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _2160 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2160] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_2160 + 32] = ('storage', 80, 16, ('var', '_2159'))
                    mem[_2160 + 64] = ('storage', 160, 96, ('var', '_2159'))
                    if ('storage', 160, 96, ('var', '_2159')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_2159')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_2159')) > ('storage', 256, 0, 11):
                        if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                            if block.timestamp < ('storage', 80, 16, ('var', '_2159')):
                                revert with 0, 17
                            if block.timestamp - ('storage', 80, 16, ('var', '_2159')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_2159')):
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = 0
                            while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2150:
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    s = s + 1
                                    continue 
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                    revert with 0, 17
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                mem[32] = 1
                                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 1)
                                uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                if block.number < 1:
                                    revert with 0, 17
                                _3341 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2150
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3342 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3342 + 32 len mem[_3342]])) != 1:
                                    mem[_3341 + 312] = _2150
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2150
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2150, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3341 + 244] = _2150
                                    mem[_3341 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3341 + 308] = 1
                                    emit 0x16d31e5e: _2150, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3341 + 312] = _2150
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2150
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2150, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3341 + 244] = _2150
                                    mem[_3341 + 276] = 0
                                    mem[_3341 + 308] = 1
                                    emit 0x16d31e5e: _2150, 0, 1
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                idx = idx + 1
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _3141 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = _2150
                            mem[mem[64] + 148] = ('storage', 256, 0, 13)
                            mem[mem[64] + 180] = ('storage', 256, 0, 7)
                            mem[mem[64] + 212] = ('storage', 256, 0, 14)
                            _3142 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_3142 + 32 len mem[_3142]])) != 1:
                                mem[_3141 + 312] = _2150
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2150
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2150
                                mem[32] = 4
                                uint256(stor[sha3(_2150, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3141 + 244] = _2150
                                mem[_3141 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600
                                mem[_3141 + 308] = 1
                                emit 0x16d31e5e: _2150, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not ('storage', 256, 0, 7):
                                    if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                    uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                else:
                                    if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                        revert with 0, 17
                                    if not ('storage', 256, 0, 7):
                                        revert with 0, 18
                                    if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                        revert with 0, 17
                                    uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                    uint256(stor[8].field_0) = 0
                                mem[_3141 + 312] = _2150
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2150
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2150
                                mem[32] = 4
                                uint256(stor[sha3(_2150, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3141 + 244] = _2150
                                mem[_3141 + 276] = 0
                                mem[_3141 + 308] = 1
                                emit 0x16d31e5e: _2150, 0, 1
                        else:
                            if ('storage', 80, 16, ('var', '_2159')) > ('storage', 256, 0, 14):
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2150:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3337 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2150
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3338 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_3338 + 32 len mem[_3338]])):
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                    mem[_3337 + 312] = _2150
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2150
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2150, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3337 + 244] = _2150
                                    mem[_3337 + 276] = 0
                                    mem[_3337 + 308] = 1
                                    emit 0x16d31e5e: _2150, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3137 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2150
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3138 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_3138 + 32 len mem[_3138]])):
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                mem[_3137 + 312] = _2150
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2150
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2150
                                mem[32] = 4
                                uint256(stor[sha3(_2150, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3137 + 244] = _2150
                                mem[_3137 + 276] = 0
                                mem[_3137 + 308] = 1
                                emit 0x16d31e5e: _2150, 0, 1
                            else:
                                if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_2159')):
                                    revert with 0, 17
                                if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2159')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2159')):
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2150:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3333 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2150
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3334 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if bool(sha3(mem[_3334 + 32 len mem[_3334]])) != 1:
                                        mem[_3333 + 312] = _2150
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2150
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2150, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3333 + 244] = _2150
                                        mem[_3333 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600
                                        mem[_3333 + 308] = 1
                                        emit 0x16d31e5e: _2150, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                        if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                    else:
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                                revert with 0, 17
                                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                        else:
                                            if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                        mem[_3333 + 312] = _2150
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2150
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2150, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3333 + 244] = _2150
                                        mem[_3333 + 276] = 0
                                        mem[_3333 + 308] = 1
                                        emit 0x16d31e5e: _2150, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3133 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2150
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3134 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3134 + 32 len mem[_3134]])) != 1:
                                    mem[_3133 + 312] = _2150
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2150
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2150
                                    mem[32] = 4
                                    uint256(stor[sha3(_2150, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3133 + 244] = _2150
                                    mem[_3133 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3133 + 308] = 1
                                    emit 0x16d31e5e: _2150, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2159')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3133 + 312] = _2150
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2150
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2150
                                    mem[32] = 4
                                    uint256(stor[sha3(_2150, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3133 + 244] = _2150
                                    mem[_3133 + 276] = 0
                                    mem[_3133 + 308] = 1
                                    emit 0x16d31e5e: _2150, 0, 1
                else:
                    _2149 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    staticcall ('storage', 160, 0, 2).0x6352211e with:
                            gas gas_remaining wei
                           args _2149
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2173 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2173] == mem[_2173 + 12 len 20]
                    if mem[_2173 + 12 len 20] != this.address:
                        revert with 0, 'Wrong NFT'
                    staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                            gas gas_remaining wei
                           args _2149
                    mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2221 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 416
                    _2233 = mem[64]
                    if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 416
                    require mem[_2221] == bool(mem[_2221])
                    mem[_2233] = mem[_2221]
                    require mem[_2221 + 32] == mem[_2221 + 63 len 1]
                    mem[_2233 + 32] = mem[_2221 + 32]
                    require mem[_2221 + 64] == mem[_2221 + 95 len 1]
                    mem[_2233 + 64] = mem[_2221 + 64]
                    require mem[_2221 + 96] == mem[_2221 + 127 len 1]
                    mem[_2233 + 96] = mem[_2221 + 96]
                    require mem[_2221 + 128] == mem[_2221 + 159 len 1]
                    mem[_2233 + 128] = mem[_2221 + 128]
                    require mem[_2221 + 160] == mem[_2221 + 191 len 1]
                    mem[_2233 + 160] = mem[_2221 + 160]
                    require mem[_2221 + 192] == mem[_2221 + 223 len 1]
                    mem[_2233 + 192] = mem[_2221 + 192]
                    require mem[_2221 + 224] == mem[_2221 + 255 len 1]
                    mem[_2233 + 224] = mem[_2221 + 224]
                    require mem[_2221 + 256] == mem[_2221 + 287 len 1]
                    mem[_2233 + 256] = mem[_2221 + 256]
                    require mem[_2221 + 288] == mem[_2221 + 319 len 1]
                    mem[_2233 + 288] = mem[_2221 + 288]
                    require mem[_2221 + 320] == mem[_2221 + 351 len 1]
                    mem[_2233 + 320] = mem[_2221 + 320]
                    require mem[_2221 + 352] == mem[_2221 + 383 len 1]
                    mem[_2233 + 352] = mem[_2221 + 352]
                    require mem[_2221 + 384] == mem[_2221 + 415 len 1]
                    mem[_2233 + 384] = mem[_2221 + 384]
                    _2837 = mem[_2233 + 384]
                    if 8 < mem[_2233 + 415 len 1]:
                        revert with 0, 17
                    mem[0] = uint8(-mem[_2233 + 415 len 1] + 8)
                    _2849 = sha3(mem[0], 5)
                    mem[32] = 6
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 5)
                    _2858 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2858] = ('storage', 16, 0, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6)))))
                    mem[_2858 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6)))))
                    mem[_2858 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6)))))
                    if ('storage', 160, 96, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) != msg.sender:
                        revert with 0, 'Not your properties'
                    if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))):
                        revert with 0, 17
                    if uint8(-uint8(_2837) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) > -1 / uint8(-uint8(_2837) + 8):
                        revert with 0, 17
                    s = 0
                    while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2149:
                            if s == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = s + 1
                            continue 
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 49
                        uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                        uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                        if ('storage', 256, 0, 7) < uint8(-uint8(_2837) + 8):
                            revert with 0, 17
                        uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2837) + 8)
                        mem[mem[64] + 68] = _2149
                        require ext_code.size(('storage', 160, 0, 2))
                        call ('storage', 160, 0, 2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _2149
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[32] = 5
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))):
                            revert with 0, 50
                        mem[0] = sha3(-uint8(_2837) + 8 << 248, 5)
                        _3526 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3526] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                        mem[_3526 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                        mem[_3526 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                        if ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))):
                            revert with 0, 50
                        uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                        Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                        address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                        uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6)))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))):
                            revert with 0, 49
                        uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5)) - 1].field_0) = 0
                        uint256(stor[sha3(-uint8(_2837) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) - 1
                        mem[0] = _2149
                        mem[32] = 6
                        uint256(stor[sha3(_2149, 6)].field_0) = 0
                        mem[mem[64]] = _2149
                        mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2837) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) * uint8(-uint8(_2837) + 8))
                        mem[mem[64] + 64] = 1
                        emit 0x1dfc3580: _2149, (('storage', 256, 0, 9) * uint8(-uint8(_2837) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) * uint8(-uint8(_2837) + 8)), 1
                        if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2837) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) * uint8(-uint8(_2837) + 8))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    if ('storage', 256, 0, 7) < uint8(-uint8(_2837) + 8):
                        revert with 0, 17
                    uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2837) + 8)
                    mem[mem[64] + 68] = _2149
                    require ext_code.size(('storage', 160, 0, 2))
                    call ('storage', 160, 0, 2).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _2149
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 5
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) < 1:
                        revert with 0, 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_2837) + 8 << 248, 5)
                    _3306 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3306] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                    mem[_3306 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                    mem[_3306 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))):
                        revert with 0, 50
                    uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                    Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                    address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5)))))
                    uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6)))
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))):
                        revert with 0, 49
                    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) + sha3(sha3(-uint8(_2837) + 8 << 248, 5)) - 1].field_0) = 0
                    uint256(stor[sha3(-uint8(_2837) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2837'))))), 5))) - 1
                    mem[0] = _2149
                    mem[32] = 6
                    uint256(stor[sha3(_2149, 6)].field_0) = 0
                    mem[mem[64]] = _2149
                    mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2837) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) * uint8(-uint8(_2837) + 8))
                    mem[mem[64] + 64] = 1
                    emit 0x1dfc3580: _2149, (('storage', 256, 0, 9) * uint8(-uint8(_2837) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) * uint8(-uint8(_2837) + 8)), 1
                    if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2837) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2849')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2149'), 6))))) * uint8(-uint8(_2837) + 8))):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if tx.origin != this.address:
                revert with 0, 'Only Externally Owned Account'
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2078 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _2082 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_2078] == bool(mem[_2078])
                mem[_2082] = mem[_2078]
                require mem[_2078 + 32] == mem[_2078 + 63 len 1]
                mem[_2082 + 32] = mem[_2078 + 32]
                require mem[_2078 + 64] == mem[_2078 + 95 len 1]
                mem[_2082 + 64] = mem[_2078 + 64]
                require mem[_2078 + 96] == mem[_2078 + 127 len 1]
                mem[_2082 + 96] = mem[_2078 + 96]
                require mem[_2078 + 128] == mem[_2078 + 159 len 1]
                mem[_2082 + 128] = mem[_2078 + 128]
                require mem[_2078 + 160] == mem[_2078 + 191 len 1]
                mem[_2082 + 160] = mem[_2078 + 160]
                require mem[_2078 + 192] == mem[_2078 + 223 len 1]
                mem[_2082 + 192] = mem[_2078 + 192]
                require mem[_2078 + 224] == mem[_2078 + 255 len 1]
                mem[_2082 + 224] = mem[_2078 + 224]
                require mem[_2078 + 256] == mem[_2078 + 287 len 1]
                mem[_2082 + 256] = mem[_2078 + 256]
                require mem[_2078 + 288] == mem[_2078 + 319 len 1]
                mem[_2082 + 288] = mem[_2078 + 288]
                require mem[_2078 + 320] == mem[_2078 + 351 len 1]
                mem[_2082 + 320] = mem[_2078 + 320]
                require mem[_2078 + 352] == mem[_2078 + 383 len 1]
                mem[_2082 + 352] = mem[_2078 + 352]
                require mem[_2078 + 384] == mem[_2078 + 415 len 1]
                mem[_2082 + 384] = mem[_2078 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_2082]:
                    _2152 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _2163 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _2164 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2164] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_2164 + 32] = ('storage', 80, 16, ('var', '_2163'))
                    mem[_2164 + 64] = ('storage', 160, 96, ('var', '_2163'))
                    if ('storage', 160, 96, ('var', '_2163')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_2163')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_2163')) > ('storage', 256, 0, 11):
                        if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                            if block.timestamp < ('storage', 80, 16, ('var', '_2163')):
                                revert with 0, 17
                            if block.timestamp - ('storage', 80, 16, ('var', '_2163')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_2163')):
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = 0
                            while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2152:
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    s = s + 1
                                    continue 
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                    revert with 0, 17
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                mem[32] = 1
                                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 1)
                                uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                if block.number < 1:
                                    revert with 0, 17
                                _3361 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2152
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3362 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3362 + 32 len mem[_3362]])) != 1:
                                    mem[_3361 + 312] = _2152
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2152
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2152, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3361 + 244] = _2152
                                    mem[_3361 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3361 + 308] = 1
                                    emit 0x16d31e5e: _2152, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3361 + 312] = _2152
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2152
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2152, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3361 + 244] = _2152
                                    mem[_3361 + 276] = 0
                                    mem[_3361 + 308] = 1
                                    emit 0x16d31e5e: _2152, 0, 1
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                idx = idx + 1
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _3153 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = _2152
                            mem[mem[64] + 148] = ('storage', 256, 0, 13)
                            mem[mem[64] + 180] = ('storage', 256, 0, 7)
                            mem[mem[64] + 212] = ('storage', 256, 0, 14)
                            _3154 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_3154 + 32 len mem[_3154]])) != 1:
                                mem[_3153 + 312] = _2152
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2152
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2152
                                mem[32] = 4
                                uint256(stor[sha3(_2152, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3153 + 244] = _2152
                                mem[_3153 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600
                                mem[_3153 + 308] = 1
                                emit 0x16d31e5e: _2152, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not ('storage', 256, 0, 7):
                                    if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                    uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                else:
                                    if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                        revert with 0, 17
                                    if not ('storage', 256, 0, 7):
                                        revert with 0, 18
                                    if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                        revert with 0, 17
                                    uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                    uint256(stor[8].field_0) = 0
                                mem[_3153 + 312] = _2152
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2152
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2152
                                mem[32] = 4
                                uint256(stor[sha3(_2152, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3153 + 244] = _2152
                                mem[_3153 + 276] = 0
                                mem[_3153 + 308] = 1
                                emit 0x16d31e5e: _2152, 0, 1
                        else:
                            if ('storage', 80, 16, ('var', '_2163')) > ('storage', 256, 0, 14):
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2152:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3357 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2152
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3358 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_3358 + 32 len mem[_3358]])):
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                    mem[_3357 + 312] = _2152
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2152
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2152, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3357 + 244] = _2152
                                    mem[_3357 + 276] = 0
                                    mem[_3357 + 308] = 1
                                    emit 0x16d31e5e: _2152, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3149 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2152
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3150 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_3150 + 32 len mem[_3150]])):
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                mem[_3149 + 312] = _2152
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2152
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2152
                                mem[32] = 4
                                uint256(stor[sha3(_2152, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3149 + 244] = _2152
                                mem[_3149 + 276] = 0
                                mem[_3149 + 308] = 1
                                emit 0x16d31e5e: _2152, 0, 1
                            else:
                                if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_2163')):
                                    revert with 0, 17
                                if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2163')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2163')):
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2152:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3353 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2152
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3354 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if bool(sha3(mem[_3354 + 32 len mem[_3354]])) != 1:
                                        mem[_3353 + 312] = _2152
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2152
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2152, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3353 + 244] = _2152
                                        mem[_3353 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600
                                        mem[_3353 + 308] = 1
                                        emit 0x16d31e5e: _2152, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                        if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                    else:
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                                revert with 0, 17
                                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                        else:
                                            if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                        mem[_3353 + 312] = _2152
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2152
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2152, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3353 + 244] = _2152
                                        mem[_3353 + 276] = 0
                                        mem[_3353 + 308] = 1
                                        emit 0x16d31e5e: _2152, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3145 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2152
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3146 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3146 + 32 len mem[_3146]])) != 1:
                                    mem[_3145 + 312] = _2152
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2152
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2152
                                    mem[32] = 4
                                    uint256(stor[sha3(_2152, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3145 + 244] = _2152
                                    mem[_3145 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3145 + 308] = 1
                                    emit 0x16d31e5e: _2152, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2163')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3145 + 312] = _2152
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2152
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2152
                                    mem[32] = 4
                                    uint256(stor[sha3(_2152, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3145 + 244] = _2152
                                    mem[_3145 + 276] = 0
                                    mem[_3145 + 308] = 1
                                    emit 0x16d31e5e: _2152, 0, 1
                else:
                    _2151 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    staticcall ('storage', 160, 0, 2).0x6352211e with:
                            gas gas_remaining wei
                           args _2151
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2176 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2176] == mem[_2176 + 12 len 20]
                    if mem[_2176 + 12 len 20] != this.address:
                        revert with 0, 'Wrong NFT'
                    staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                            gas gas_remaining wei
                           args _2151
                    mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 416
                    _2235 = mem[64]
                    if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 416
                    require mem[_2222] == bool(mem[_2222])
                    mem[_2235] = mem[_2222]
                    require mem[_2222 + 32] == mem[_2222 + 63 len 1]
                    mem[_2235 + 32] = mem[_2222 + 32]
                    require mem[_2222 + 64] == mem[_2222 + 95 len 1]
                    mem[_2235 + 64] = mem[_2222 + 64]
                    require mem[_2222 + 96] == mem[_2222 + 127 len 1]
                    mem[_2235 + 96] = mem[_2222 + 96]
                    require mem[_2222 + 128] == mem[_2222 + 159 len 1]
                    mem[_2235 + 128] = mem[_2222 + 128]
                    require mem[_2222 + 160] == mem[_2222 + 191 len 1]
                    mem[_2235 + 160] = mem[_2222 + 160]
                    require mem[_2222 + 192] == mem[_2222 + 223 len 1]
                    mem[_2235 + 192] = mem[_2222 + 192]
                    require mem[_2222 + 224] == mem[_2222 + 255 len 1]
                    mem[_2235 + 224] = mem[_2222 + 224]
                    require mem[_2222 + 256] == mem[_2222 + 287 len 1]
                    mem[_2235 + 256] = mem[_2222 + 256]
                    require mem[_2222 + 288] == mem[_2222 + 319 len 1]
                    mem[_2235 + 288] = mem[_2222 + 288]
                    require mem[_2222 + 320] == mem[_2222 + 351 len 1]
                    mem[_2235 + 320] = mem[_2222 + 320]
                    require mem[_2222 + 352] == mem[_2222 + 383 len 1]
                    mem[_2235 + 352] = mem[_2222 + 352]
                    require mem[_2222 + 384] == mem[_2222 + 415 len 1]
                    mem[_2235 + 384] = mem[_2222 + 384]
                    _2840 = mem[_2235 + 384]
                    if 8 < mem[_2235 + 415 len 1]:
                        revert with 0, 17
                    mem[0] = uint8(-mem[_2235 + 415 len 1] + 8)
                    _2851 = sha3(mem[0], 5)
                    mem[32] = 6
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 5)
                    _2860 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2860] = ('storage', 16, 0, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6)))))
                    mem[_2860 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6)))))
                    mem[_2860 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6)))))
                    if ('storage', 160, 96, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) != msg.sender:
                        revert with 0, 'Not your properties'
                    if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))):
                        revert with 0, 17
                    if uint8(-uint8(_2840) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) > -1 / uint8(-uint8(_2840) + 8):
                        revert with 0, 17
                    s = 0
                    while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2151:
                            if s == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = s + 1
                            continue 
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 49
                        uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                        uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                        if ('storage', 256, 0, 7) < uint8(-uint8(_2840) + 8):
                            revert with 0, 17
                        uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2840) + 8)
                        mem[mem[64] + 68] = _2151
                        require ext_code.size(('storage', 160, 0, 2))
                        call ('storage', 160, 0, 2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _2151
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[32] = 5
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))):
                            revert with 0, 50
                        mem[0] = sha3(-uint8(_2840) + 8 << 248, 5)
                        _3533 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3533] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                        mem[_3533 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                        mem[_3533 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                        if ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))):
                            revert with 0, 50
                        uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                        Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                        address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                        uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6)))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))):
                            revert with 0, 49
                        uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5)) - 1].field_0) = 0
                        uint256(stor[sha3(-uint8(_2840) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) - 1
                        mem[0] = _2151
                        mem[32] = 6
                        uint256(stor[sha3(_2151, 6)].field_0) = 0
                        mem[mem[64]] = _2151
                        mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2840) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) * uint8(-uint8(_2840) + 8))
                        mem[mem[64] + 64] = 1
                        emit 0x1dfc3580: _2151, (('storage', 256, 0, 9) * uint8(-uint8(_2840) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) * uint8(-uint8(_2840) + 8)), 1
                        if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2840) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) * uint8(-uint8(_2840) + 8))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    if ('storage', 256, 0, 7) < uint8(-uint8(_2840) + 8):
                        revert with 0, 17
                    uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2840) + 8)
                    mem[mem[64] + 68] = _2151
                    require ext_code.size(('storage', 160, 0, 2))
                    call ('storage', 160, 0, 2).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _2151
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 5
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) < 1:
                        revert with 0, 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_2840) + 8 << 248, 5)
                    _3311 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3311] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                    mem[_3311 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                    mem[_3311 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))):
                        revert with 0, 50
                    uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                    Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                    address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5)))))
                    uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6)))
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))):
                        revert with 0, 49
                    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) + sha3(sha3(-uint8(_2840) + 8 << 248, 5)) - 1].field_0) = 0
                    uint256(stor[sha3(-uint8(_2840) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2840'))))), 5))) - 1
                    mem[0] = _2151
                    mem[32] = 6
                    uint256(stor[sha3(_2151, 6)].field_0) = 0
                    mem[mem[64]] = _2151
                    mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2840) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) * uint8(-uint8(_2840) + 8))
                    mem[mem[64] + 64] = 1
                    emit 0x1dfc3580: _2151, (('storage', 256, 0, 9) * uint8(-uint8(_2840) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) * uint8(-uint8(_2840) + 8)), 1
                    if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2840) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2851')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2151'), 6))))) * uint8(-uint8(_2840) + 8))):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    else:
        if block.timestamp < ('storage', 256, 0, 14):
            revert with 0, 17
        if block.timestamp - ('storage', 256, 0, 14) and ('storage', 256, 0, 13) > -1 / block.timestamp - ('storage', 256, 0, 14):
            revert with 0, 17
        if (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)) and ('storage', 256, 0, 10) > -1 / (block.timestamp * ('storage', 256, 0, 13)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13)):
            revert with 0, 17
        if ('storage', 256, 0, 12) > !((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600):
            revert with 0, 17
        uint256(stor[12].field_0) = ('storage', 256, 0, 12) + ((block.timestamp * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) - (('storage', 256, 0, 14) * ('storage', 256, 0, 13) * ('storage', 256, 0, 10)) / 24 * 3600)
        uint256(stor[14].field_0) = block.timestamp
        if tx.origin == msg.sender:
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2079 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _2083 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_2079] == bool(mem[_2079])
                mem[_2083] = mem[_2079]
                require mem[_2079 + 32] == mem[_2079 + 63 len 1]
                mem[_2083 + 32] = mem[_2079 + 32]
                require mem[_2079 + 64] == mem[_2079 + 95 len 1]
                mem[_2083 + 64] = mem[_2079 + 64]
                require mem[_2079 + 96] == mem[_2079 + 127 len 1]
                mem[_2083 + 96] = mem[_2079 + 96]
                require mem[_2079 + 128] == mem[_2079 + 159 len 1]
                mem[_2083 + 128] = mem[_2079 + 128]
                require mem[_2079 + 160] == mem[_2079 + 191 len 1]
                mem[_2083 + 160] = mem[_2079 + 160]
                require mem[_2079 + 192] == mem[_2079 + 223 len 1]
                mem[_2083 + 192] = mem[_2079 + 192]
                require mem[_2079 + 224] == mem[_2079 + 255 len 1]
                mem[_2083 + 224] = mem[_2079 + 224]
                require mem[_2079 + 256] == mem[_2079 + 287 len 1]
                mem[_2083 + 256] = mem[_2079 + 256]
                require mem[_2079 + 288] == mem[_2079 + 319 len 1]
                mem[_2083 + 288] = mem[_2079 + 288]
                require mem[_2079 + 320] == mem[_2079 + 351 len 1]
                mem[_2083 + 320] = mem[_2079 + 320]
                require mem[_2079 + 352] == mem[_2079 + 383 len 1]
                mem[_2083 + 352] = mem[_2079 + 352]
                require mem[_2079 + 384] == mem[_2079 + 415 len 1]
                mem[_2083 + 384] = mem[_2079 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_2083]:
                    _2154 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _2167 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _2168 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2168] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_2168 + 32] = ('storage', 80, 16, ('var', '_2167'))
                    mem[_2168 + 64] = ('storage', 160, 96, ('var', '_2167'))
                    if ('storage', 160, 96, ('var', '_2167')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_2167')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_2167')) > ('storage', 256, 0, 11):
                        if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                            if block.timestamp < ('storage', 80, 16, ('var', '_2167')):
                                revert with 0, 17
                            if block.timestamp - ('storage', 80, 16, ('var', '_2167')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_2167')):
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = 0
                            while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2154:
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    s = s + 1
                                    continue 
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                    revert with 0, 17
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                mem[32] = 1
                                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 1)
                                uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                if block.number < 1:
                                    revert with 0, 17
                                _3381 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2154
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3382 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3382 + 32 len mem[_3382]])) != 1:
                                    mem[_3381 + 312] = _2154
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2154
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2154, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3381 + 244] = _2154
                                    mem[_3381 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3381 + 308] = 1
                                    emit 0x16d31e5e: _2154, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3381 + 312] = _2154
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2154
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2154, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3381 + 244] = _2154
                                    mem[_3381 + 276] = 0
                                    mem[_3381 + 308] = 1
                                    emit 0x16d31e5e: _2154, 0, 1
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                idx = idx + 1
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _3165 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = _2154
                            mem[mem[64] + 148] = ('storage', 256, 0, 13)
                            mem[mem[64] + 180] = ('storage', 256, 0, 7)
                            mem[mem[64] + 212] = ('storage', 256, 0, 14)
                            _3166 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_3166 + 32 len mem[_3166]])) != 1:
                                mem[_3165 + 312] = _2154
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2154
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2154
                                mem[32] = 4
                                uint256(stor[sha3(_2154, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3165 + 244] = _2154
                                mem[_3165 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600
                                mem[_3165 + 308] = 1
                                emit 0x16d31e5e: _2154, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not ('storage', 256, 0, 7):
                                    if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                    uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                else:
                                    if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                        revert with 0, 17
                                    if not ('storage', 256, 0, 7):
                                        revert with 0, 18
                                    if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                        revert with 0, 17
                                    uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                    uint256(stor[8].field_0) = 0
                                mem[_3165 + 312] = _2154
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2154
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2154
                                mem[32] = 4
                                uint256(stor[sha3(_2154, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3165 + 244] = _2154
                                mem[_3165 + 276] = 0
                                mem[_3165 + 308] = 1
                                emit 0x16d31e5e: _2154, 0, 1
                        else:
                            if ('storage', 80, 16, ('var', '_2167')) > ('storage', 256, 0, 14):
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2154:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3377 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2154
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3378 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_3378 + 32 len mem[_3378]])):
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                    mem[_3377 + 312] = _2154
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2154
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2154, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3377 + 244] = _2154
                                    mem[_3377 + 276] = 0
                                    mem[_3377 + 308] = 1
                                    emit 0x16d31e5e: _2154, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3161 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2154
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3162 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_3162 + 32 len mem[_3162]])):
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                mem[_3161 + 312] = _2154
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2154
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2154
                                mem[32] = 4
                                uint256(stor[sha3(_2154, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3161 + 244] = _2154
                                mem[_3161 + 276] = 0
                                mem[_3161 + 308] = 1
                                emit 0x16d31e5e: _2154, 0, 1
                            else:
                                if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_2167')):
                                    revert with 0, 17
                                if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2167')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2167')):
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2154:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3373 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2154
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3374 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if bool(sha3(mem[_3374 + 32 len mem[_3374]])) != 1:
                                        mem[_3373 + 312] = _2154
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2154
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2154, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3373 + 244] = _2154
                                        mem[_3373 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600
                                        mem[_3373 + 308] = 1
                                        emit 0x16d31e5e: _2154, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                        if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                    else:
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                                revert with 0, 17
                                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                        else:
                                            if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                        mem[_3373 + 312] = _2154
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2154
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2154, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3373 + 244] = _2154
                                        mem[_3373 + 276] = 0
                                        mem[_3373 + 308] = 1
                                        emit 0x16d31e5e: _2154, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3157 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2154
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3158 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3158 + 32 len mem[_3158]])) != 1:
                                    mem[_3157 + 312] = _2154
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2154
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2154
                                    mem[32] = 4
                                    uint256(stor[sha3(_2154, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3157 + 244] = _2154
                                    mem[_3157 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3157 + 308] = 1
                                    emit 0x16d31e5e: _2154, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2167')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3157 + 312] = _2154
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2154
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2154
                                    mem[32] = 4
                                    uint256(stor[sha3(_2154, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3157 + 244] = _2154
                                    mem[_3157 + 276] = 0
                                    mem[_3157 + 308] = 1
                                    emit 0x16d31e5e: _2154, 0, 1
                else:
                    _2153 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    staticcall ('storage', 160, 0, 2).0x6352211e with:
                            gas gas_remaining wei
                           args _2153
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2179] == mem[_2179 + 12 len 20]
                    if mem[_2179 + 12 len 20] != this.address:
                        revert with 0, 'Wrong NFT'
                    staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                            gas gas_remaining wei
                           args _2153
                    mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2223 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 416
                    _2237 = mem[64]
                    if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 416
                    require mem[_2223] == bool(mem[_2223])
                    mem[_2237] = mem[_2223]
                    require mem[_2223 + 32] == mem[_2223 + 63 len 1]
                    mem[_2237 + 32] = mem[_2223 + 32]
                    require mem[_2223 + 64] == mem[_2223 + 95 len 1]
                    mem[_2237 + 64] = mem[_2223 + 64]
                    require mem[_2223 + 96] == mem[_2223 + 127 len 1]
                    mem[_2237 + 96] = mem[_2223 + 96]
                    require mem[_2223 + 128] == mem[_2223 + 159 len 1]
                    mem[_2237 + 128] = mem[_2223 + 128]
                    require mem[_2223 + 160] == mem[_2223 + 191 len 1]
                    mem[_2237 + 160] = mem[_2223 + 160]
                    require mem[_2223 + 192] == mem[_2223 + 223 len 1]
                    mem[_2237 + 192] = mem[_2223 + 192]
                    require mem[_2223 + 224] == mem[_2223 + 255 len 1]
                    mem[_2237 + 224] = mem[_2223 + 224]
                    require mem[_2223 + 256] == mem[_2223 + 287 len 1]
                    mem[_2237 + 256] = mem[_2223 + 256]
                    require mem[_2223 + 288] == mem[_2223 + 319 len 1]
                    mem[_2237 + 288] = mem[_2223 + 288]
                    require mem[_2223 + 320] == mem[_2223 + 351 len 1]
                    mem[_2237 + 320] = mem[_2223 + 320]
                    require mem[_2223 + 352] == mem[_2223 + 383 len 1]
                    mem[_2237 + 352] = mem[_2223 + 352]
                    require mem[_2223 + 384] == mem[_2223 + 415 len 1]
                    mem[_2237 + 384] = mem[_2223 + 384]
                    _2843 = mem[_2237 + 384]
                    if 8 < mem[_2237 + 415 len 1]:
                        revert with 0, 17
                    mem[0] = uint8(-mem[_2237 + 415 len 1] + 8)
                    _2853 = sha3(mem[0], 5)
                    mem[32] = 6
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 5)
                    _2862 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2862] = ('storage', 16, 0, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6)))))
                    mem[_2862 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6)))))
                    mem[_2862 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6)))))
                    if ('storage', 160, 96, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) != msg.sender:
                        revert with 0, 'Not your properties'
                    if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))):
                        revert with 0, 17
                    if uint8(-uint8(_2843) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) > -1 / uint8(-uint8(_2843) + 8):
                        revert with 0, 17
                    s = 0
                    while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2153:
                            if s == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = s + 1
                            continue 
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 49
                        uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                        uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                        if ('storage', 256, 0, 7) < uint8(-uint8(_2843) + 8):
                            revert with 0, 17
                        uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2843) + 8)
                        mem[mem[64] + 68] = _2153
                        require ext_code.size(('storage', 160, 0, 2))
                        call ('storage', 160, 0, 2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _2153
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[32] = 5
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))):
                            revert with 0, 50
                        mem[0] = sha3(-uint8(_2843) + 8 << 248, 5)
                        _3540 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3540] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                        mem[_3540 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                        mem[_3540 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                        if ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))):
                            revert with 0, 50
                        uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                        Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                        address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                        uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6)))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))):
                            revert with 0, 49
                        uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5)) - 1].field_0) = 0
                        uint256(stor[sha3(-uint8(_2843) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) - 1
                        mem[0] = _2153
                        mem[32] = 6
                        uint256(stor[sha3(_2153, 6)].field_0) = 0
                        mem[mem[64]] = _2153
                        mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2843) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) * uint8(-uint8(_2843) + 8))
                        mem[mem[64] + 64] = 1
                        emit 0x1dfc3580: _2153, (('storage', 256, 0, 9) * uint8(-uint8(_2843) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) * uint8(-uint8(_2843) + 8)), 1
                        if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2843) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) * uint8(-uint8(_2843) + 8))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    if ('storage', 256, 0, 7) < uint8(-uint8(_2843) + 8):
                        revert with 0, 17
                    uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2843) + 8)
                    mem[mem[64] + 68] = _2153
                    require ext_code.size(('storage', 160, 0, 2))
                    call ('storage', 160, 0, 2).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _2153
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 5
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) < 1:
                        revert with 0, 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_2843) + 8 << 248, 5)
                    _3316 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3316] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                    mem[_3316 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                    mem[_3316 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))):
                        revert with 0, 50
                    uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                    Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                    address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5)))))
                    uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6)))
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))):
                        revert with 0, 49
                    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) + sha3(sha3(-uint8(_2843) + 8 << 248, 5)) - 1].field_0) = 0
                    uint256(stor[sha3(-uint8(_2843) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2843'))))), 5))) - 1
                    mem[0] = _2153
                    mem[32] = 6
                    uint256(stor[sha3(_2153, 6)].field_0) = 0
                    mem[mem[64]] = _2153
                    mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2843) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) * uint8(-uint8(_2843) + 8))
                    mem[mem[64] + 64] = 1
                    emit 0x1dfc3580: _2153, (('storage', 256, 0, 9) * uint8(-uint8(_2843) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) * uint8(-uint8(_2843) + 8)), 1
                    if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2843) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2853')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2153'), 6))))) * uint8(-uint8(_2843) + 8))):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if tx.origin != this.address:
                revert with 0, 'Only Externally Owned Account'
            if not ('storage', 8, 16, 15):
                revert with 0, 'Claim is not currently possible'
            idx = 0
            while idx < _9:
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * idx) + ceil32(return_data.size) + 128]
                mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2080 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 416
                _2084 = mem[64]
                if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                    revert with 0, 65
                mem[64] = mem[64] + 416
                require mem[_2080] == bool(mem[_2080])
                mem[_2084] = mem[_2080]
                require mem[_2080 + 32] == mem[_2080 + 63 len 1]
                mem[_2084 + 32] = mem[_2080 + 32]
                require mem[_2080 + 64] == mem[_2080 + 95 len 1]
                mem[_2084 + 64] = mem[_2080 + 64]
                require mem[_2080 + 96] == mem[_2080 + 127 len 1]
                mem[_2084 + 96] = mem[_2080 + 96]
                require mem[_2080 + 128] == mem[_2080 + 159 len 1]
                mem[_2084 + 128] = mem[_2080 + 128]
                require mem[_2080 + 160] == mem[_2080 + 191 len 1]
                mem[_2084 + 160] = mem[_2080 + 160]
                require mem[_2080 + 192] == mem[_2080 + 223 len 1]
                mem[_2084 + 192] = mem[_2080 + 192]
                require mem[_2080 + 224] == mem[_2080 + 255 len 1]
                mem[_2084 + 224] = mem[_2080 + 224]
                require mem[_2080 + 256] == mem[_2080 + 287 len 1]
                mem[_2084 + 256] = mem[_2080 + 256]
                require mem[_2080 + 288] == mem[_2080 + 319 len 1]
                mem[_2084 + 288] = mem[_2080 + 288]
                require mem[_2080 + 320] == mem[_2080 + 351 len 1]
                mem[_2084 + 320] = mem[_2080 + 320]
                require mem[_2080 + 352] == mem[_2080 + 383 len 1]
                mem[_2084 + 352] = mem[_2080 + 352]
                require mem[_2080 + 384] == mem[_2080 + 415 len 1]
                mem[_2084 + 384] = mem[_2080 + 384]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if mem[_2084]:
                    _2156 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[0] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[32] = 4
                    _2171 = sha3(mem[(32 * idx) + ceil32(return_data.size) + 128], 4)
                    _2172 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2172] = ('storage', 16, 0, ('sha3', ('data', ('mem', ('range', ('add', 128, ('mask_shl', 251, 0, 5, ('var', 0)), ('mask_shl', 251, 5, 0, ('add', 31, 'returndatasize'))), 32)), 4)))
                    mem[_2172 + 32] = ('storage', 80, 16, ('var', '_2171'))
                    mem[_2172 + 64] = ('storage', 160, 96, ('var', '_2171'))
                    if ('storage', 160, 96, ('var', '_2171')) != msg.sender:
                        revert with 0, 'Not your properties'
                    if block.timestamp < ('storage', 80, 16, ('var', '_2171')):
                        revert with 0, 17
                    if block.timestamp - ('storage', 80, 16, ('var', '_2171')) > ('storage', 256, 0, 11):
                        if ('storage', 256, 0, 12) < 5000000000 * 10^18:
                            if block.timestamp < ('storage', 80, 16, ('var', '_2171')):
                                revert with 0, 17
                            if block.timestamp - ('storage', 80, 16, ('var', '_2171')) and ('storage', 256, 0, 10) > -1 / block.timestamp - ('storage', 80, 16, ('var', '_2171')):
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = 0
                            while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2156:
                                    if s == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    s = s + 1
                                    continue 
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                    revert with 0, 17
                                if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 50
                                uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                mem[32] = 1
                                if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    revert with 0, 49
                                mem[0] = sha3(address(msg.sender), 1)
                                uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                if block.number < 1:
                                    revert with 0, 17
                                _3401 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2156
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3402 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3402 + 32 len mem[_3402]])) != 1:
                                    mem[_3401 + 312] = _2156
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2156
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2156, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3401 + 244] = _2156
                                    mem[_3401 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3401 + 308] = 1
                                    emit 0x16d31e5e: _2156, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3401 + 312] = _2156
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2156
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2156, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3401 + 244] = _2156
                                    mem[_3401 + 276] = 0
                                    mem[_3401 + 308] = 1
                                    emit 0x16d31e5e: _2156, 0, 1
                                if idx == -1:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                idx = idx + 1
                                continue 
                            if block.number < 1:
                                revert with 0, 17
                            _3177 = mem[64]
                            mem[mem[64] + 32] = tx.origin
                            mem[mem[64] + 52] = block.hash(block.number - 1)
                            mem[mem[64] + 84] = block.timestamp
                            mem[mem[64] + 116] = _2156
                            mem[mem[64] + 148] = ('storage', 256, 0, 13)
                            mem[mem[64] + 180] = ('storage', 256, 0, 7)
                            mem[mem[64] + 212] = ('storage', 256, 0, 14)
                            _3178 = mem[64]
                            mem[mem[64]] = 212
                            mem[64] = mem[64] + 244
                            if bool(sha3(mem[_3178 + 32 len mem[_3178]])) != 1:
                                mem[_3177 + 312] = _2156
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2156
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2156
                                mem[32] = 4
                                uint256(stor[sha3(_2156, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3177 + 244] = _2156
                                mem[_3177 + 276] = (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600
                                mem[_3177 + 308] = 1
                                emit 0x16d31e5e: _2156, (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                if 0 > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                    revert with 0, 17
                            else:
                                if not ('storage', 256, 0, 7):
                                    if ('storage', 256, 0, 8) > !((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                    uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                else:
                                    if (block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                        revert with 0, 17
                                    if not ('storage', 256, 0, 7):
                                        revert with 0, 18
                                    if ('storage', 256, 0, 9) > !(((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                        revert with 0, 17
                                    uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((block.timestamp * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                    uint256(stor[8].field_0) = 0
                                mem[_3177 + 312] = _2156
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2156
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2156
                                mem[32] = 4
                                uint256(stor[sha3(_2156, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3177 + 244] = _2156
                                mem[_3177 + 276] = 0
                                mem[_3177 + 308] = 1
                                emit 0x16d31e5e: _2156, 0, 1
                        else:
                            if ('storage', 80, 16, ('var', '_2171')) > ('storage', 256, 0, 14):
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2156:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3397 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2156
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3398 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if 1 == bool(sha3(mem[_3398 + 32 len mem[_3398]])):
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > -1:
                                                revert with 0, 17
                                        else:
                                            if 0 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                    mem[_3397 + 312] = _2156
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2156
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    uint256(stor[sha3(_2156, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3397 + 244] = _2156
                                    mem[_3397 + 276] = 0
                                    mem[_3397 + 308] = 1
                                    emit 0x16d31e5e: _2156, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3173 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2156
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3174 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if 1 == bool(sha3(mem[_3174 + 32 len mem[_3174]])):
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > -1:
                                            revert with 0, 17
                                    else:
                                        if 0 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                mem[_3173 + 312] = _2156
                                require ext_code.size(('storage', 160, 0, 2))
                                call ('storage', 160, 0, 2).0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(this.address), msg.sender, _2156
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[0] = _2156
                                mem[32] = 4
                                uint256(stor[sha3(_2156, 4)].field_0) = 0
                                if ('storage', 256, 0, 13) < 1:
                                    revert with 0, 17
                                uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                mem[_3173 + 244] = _2156
                                mem[_3173 + 276] = 0
                                mem[_3173 + 308] = 1
                                emit 0x16d31e5e: _2156, 0, 1
                            else:
                                if ('storage', 256, 0, 14) < ('storage', 80, 16, ('var', '_2171')):
                                    revert with 0, 17
                                if ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2171')) and ('storage', 256, 0, 10) > -1 / ('storage', 256, 0, 14) - ('storage', 80, 16, ('var', '_2171')):
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 1
                                s = 0
                                while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2156:
                                        if s == -1:
                                            revert with 0, 17
                                        mem[0] = msg.sender
                                        mem[32] = 1
                                        s = s + 1
                                        continue 
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                                        revert with 0, 17
                                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 50
                                    uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                                    mem[32] = 1
                                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                                        revert with 0, 49
                                    mem[0] = sha3(address(msg.sender), 1)
                                    uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                                    uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                                    if block.number < 1:
                                        revert with 0, 17
                                    _3393 = mem[64]
                                    mem[mem[64] + 32] = tx.origin
                                    mem[mem[64] + 52] = block.hash(block.number - 1)
                                    mem[mem[64] + 84] = block.timestamp
                                    mem[mem[64] + 116] = _2156
                                    mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                    mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                    mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                    _3394 = mem[64]
                                    mem[mem[64]] = 212
                                    mem[64] = mem[64] + 244
                                    if bool(sha3(mem[_3394 + 32 len mem[_3394]])) != 1:
                                        mem[_3393 + 312] = _2156
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2156
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2156, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3393 + 244] = _2156
                                        mem[_3393 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600
                                        mem[_3393 + 308] = 1
                                        emit 0x16d31e5e: _2156, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                        if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                    else:
                                        if not ('storage', 256, 0, 7):
                                            if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                                revert with 0, 17
                                            uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                        else:
                                            if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                                revert with 0, 17
                                            if not ('storage', 256, 0, 7):
                                                revert with 0, 18
                                            if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                                revert with 0, 17
                                            uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                            uint256(stor[8].field_0) = 0
                                        mem[_3393 + 312] = _2156
                                        require ext_code.size(('storage', 160, 0, 2))
                                        call ('storage', 160, 0, 2).0x23b872dd with:
                                             gas gas_remaining wei
                                            args address(this.address), msg.sender, _2156
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        uint256(stor[sha3(_2156, 4)].field_0) = 0
                                        if ('storage', 256, 0, 13) < 1:
                                            revert with 0, 17
                                        uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                        mem[_3393 + 244] = _2156
                                        mem[_3393 + 276] = 0
                                        mem[_3393 + 308] = 1
                                        emit 0x16d31e5e: _2156, 0, 1
                                    if idx == -1:
                                        revert with 0, 17
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    idx = idx + 1
                                    continue 
                                if block.number < 1:
                                    revert with 0, 17
                                _3169 = mem[64]
                                mem[mem[64] + 32] = tx.origin
                                mem[mem[64] + 52] = block.hash(block.number - 1)
                                mem[mem[64] + 84] = block.timestamp
                                mem[mem[64] + 116] = _2156
                                mem[mem[64] + 148] = ('storage', 256, 0, 13)
                                mem[mem[64] + 180] = ('storage', 256, 0, 7)
                                mem[mem[64] + 212] = ('storage', 256, 0, 14)
                                _3170 = mem[64]
                                mem[mem[64]] = 212
                                mem[64] = mem[64] + 244
                                if bool(sha3(mem[_3170 + 32 len mem[_3170]])) != 1:
                                    mem[_3169 + 312] = _2156
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2156
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2156
                                    mem[32] = 4
                                    uint256(stor[sha3(_2156, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3169 + 244] = _2156
                                    mem[_3169 + 276] = (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600
                                    mem[_3169 + 308] = 1
                                    emit 0x16d31e5e: _2156, (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600, 1
                                    if 0 > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                        revert with 0, 17
                                else:
                                    if not ('storage', 256, 0, 7):
                                        if ('storage', 256, 0, 8) > !((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600):
                                            revert with 0, 17
                                        uint256(stor[8].field_0) = ('storage', 256, 0, 8) + ((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600)
                                    else:
                                        if (('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600 > !('storage', 256, 0, 8):
                                            revert with 0, 17
                                        if not ('storage', 256, 0, 7):
                                            revert with 0, 18
                                        if ('storage', 256, 0, 9) > !(((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7)):
                                            revert with 0, 17
                                        uint256(stor[9].field_0) = ('storage', 256, 0, 9) + (((('storage', 256, 0, 14) * ('storage', 256, 0, 10)) - (('storage', 80, 16, ('var', '_2171')) * ('storage', 256, 0, 10)) / 24 * 3600) + ('storage', 256, 0, 8) / ('storage', 256, 0, 7))
                                        uint256(stor[8].field_0) = 0
                                    mem[_3169 + 312] = _2156
                                    require ext_code.size(('storage', 160, 0, 2))
                                    call ('storage', 160, 0, 2).0x23b872dd with:
                                         gas gas_remaining wei
                                        args address(this.address), msg.sender, _2156
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[0] = _2156
                                    mem[32] = 4
                                    uint256(stor[sha3(_2156, 4)].field_0) = 0
                                    if ('storage', 256, 0, 13) < 1:
                                        revert with 0, 17
                                    uint256(stor[13].field_0) = ('storage', 256, 0, 13) - 1
                                    mem[_3169 + 244] = _2156
                                    mem[_3169 + 276] = 0
                                    mem[_3169 + 308] = 1
                                    emit 0x16d31e5e: _2156, 0, 1
                else:
                    _2155 = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
                    staticcall ('storage', 160, 0, 2).0x6352211e with:
                            gas gas_remaining wei
                           args _2155
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2182 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2182] == mem[_2182 + 12 len 20]
                    if mem[_2182 + 12 len 20] != this.address:
                        revert with 0, 'Wrong NFT'
                    staticcall ('storage', 160, 0, 2).getTokenMetadata(uint256 arg1) with:
                            gas gas_remaining wei
                           args _2155
                    mem[mem[64] len 416] = ext_call.return_data[0 len 416]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 416
                    _2239 = mem[64]
                    if mem[64] + 416 < mem[64] or mem[64] + 416 > test266151307():
                        revert with 0, 65
                    mem[64] = mem[64] + 416
                    require mem[_2224] == bool(mem[_2224])
                    mem[_2239] = mem[_2224]
                    require mem[_2224 + 32] == mem[_2224 + 63 len 1]
                    mem[_2239 + 32] = mem[_2224 + 32]
                    require mem[_2224 + 64] == mem[_2224 + 95 len 1]
                    mem[_2239 + 64] = mem[_2224 + 64]
                    require mem[_2224 + 96] == mem[_2224 + 127 len 1]
                    mem[_2239 + 96] = mem[_2224 + 96]
                    require mem[_2224 + 128] == mem[_2224 + 159 len 1]
                    mem[_2239 + 128] = mem[_2224 + 128]
                    require mem[_2224 + 160] == mem[_2224 + 191 len 1]
                    mem[_2239 + 160] = mem[_2224 + 160]
                    require mem[_2224 + 192] == mem[_2224 + 223 len 1]
                    mem[_2239 + 192] = mem[_2224 + 192]
                    require mem[_2224 + 224] == mem[_2224 + 255 len 1]
                    mem[_2239 + 224] = mem[_2224 + 224]
                    require mem[_2224 + 256] == mem[_2224 + 287 len 1]
                    mem[_2239 + 256] = mem[_2224 + 256]
                    require mem[_2224 + 288] == mem[_2224 + 319 len 1]
                    mem[_2239 + 288] = mem[_2224 + 288]
                    require mem[_2224 + 320] == mem[_2224 + 351 len 1]
                    mem[_2239 + 320] = mem[_2224 + 320]
                    require mem[_2224 + 352] == mem[_2224 + 383 len 1]
                    mem[_2239 + 352] = mem[_2224 + 352]
                    require mem[_2224 + 384] == mem[_2224 + 415 len 1]
                    mem[_2239 + 384] = mem[_2224 + 384]
                    _2846 = mem[_2239 + 384]
                    if 8 < mem[_2239 + 415 len 1]:
                        revert with 0, 17
                    mem[0] = uint8(-mem[_2239 + 415 len 1] + 8)
                    _2855 = sha3(mem[0], 5)
                    mem[32] = 6
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mem', ('range', 0, 32)), 5))):
                        revert with 0, 50
                    mem[0] = sha3(mem[0], 5)
                    _2864 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_2864] = ('storage', 16, 0, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6)))))
                    mem[_2864 + 32] = ('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6)))))
                    mem[_2864 + 64] = ('storage', 160, 96, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6)))))
                    if ('storage', 160, 96, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) != msg.sender:
                        revert with 0, 'Not your properties'
                    if ('storage', 256, 0, 9) < ('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))):
                        revert with 0, 17
                    if uint8(-uint8(_2846) + 8) and ('storage', 256, 0, 9) - ('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) > -1 / uint8(-uint8(_2846) + 8):
                        revert with 0, 17
                    s = 0
                    while s < ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if ('storage', 256, 0, ('add', ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('var', 1))) != _2155:
                            if s == -1:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 1
                            s = s + 1
                            continue 
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        if s >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 50
                        uint256(stor[s + sha3(sha3(address(msg.sender), 1))].field_0) = ('storage', 256, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1)))))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))):
                            revert with 0, 49
                        uint256(stor[sha3(sha3(address(msg.sender), 1)) + ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1].field_0) = 0
                        uint256(stor[sha3(address(msg.sender), 1)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 160, 0, 0, 'msg.sender'), 1))) - 1
                        if ('storage', 256, 0, 7) < uint8(-uint8(_2846) + 8):
                            revert with 0, 17
                        uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2846) + 8)
                        mem[mem[64] + 68] = _2155
                        require ext_code.size(('storage', 160, 0, 2))
                        call ('storage', 160, 0, 2).0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, _2155
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[32] = 5
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) < 1:
                            revert with 0, 17
                        if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))):
                            revert with 0, 50
                        mem[0] = sha3(-uint8(_2846) + 8 << 248, 5)
                        _3547 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_3547] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                        mem[_3547 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                        mem[_3547 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                        if ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))):
                            revert with 0, 50
                        uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                        Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                        address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                        uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6)))
                        if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))):
                            revert with 0, 49
                        uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5)) - 1].field_0) = 0
                        uint256(stor[sha3(-uint8(_2846) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) - 1
                        mem[0] = _2155
                        mem[32] = 6
                        uint256(stor[sha3(_2155, 6)].field_0) = 0
                        mem[mem[64]] = _2155
                        mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2846) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) * uint8(-uint8(_2846) + 8))
                        mem[mem[64] + 64] = 1
                        emit 0x1dfc3580: _2155, (('storage', 256, 0, 9) * uint8(-uint8(_2846) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) * uint8(-uint8(_2846) + 8)), 1
                        if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2846) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) * uint8(-uint8(_2846) + 8))):
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 1
                        idx = idx + 1
                        continue 
                    if ('storage', 256, 0, 7) < uint8(-uint8(_2846) + 8):
                        revert with 0, 17
                    uint256(stor[7].field_0) = ('storage', 256, 0, 7) - uint8(-uint8(_2846) + 8)
                    mem[mem[64] + 68] = _2155
                    require ext_code.size(('storage', 160, 0, 2))
                    call ('storage', 160, 0, 2).0x23b872dd with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, _2155
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[32] = 5
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) < 1:
                        revert with 0, 17
                    if ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) - 1 >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))):
                        revert with 0, 50
                    mem[0] = sha3(-uint8(_2846) + 8 << 248, 5)
                    _3321 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_3321] = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                    mem[_3321 + 32] = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                    mem[_3321 + 64] = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                    if ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) >= ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))):
                        revert with 0, 50
                    uint16(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5))].field_0) = ('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                    Mask(80, 0, stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5))].field_16) = ('storage', 80, 16, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                    address(stor[('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5))].field_96) = ('storage', 160, 96, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5)))))
                    uint256(stor[sha3(('storage', 16, 0, ('add', -1, ('sha3', ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))), ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))))), 6)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6)))
                    if not ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))):
                        revert with 0, 49
                    uint256(stor[('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) + sha3(sha3(-uint8(_2846) + 8 << 248, 5)) - 1].field_0) = 0
                    uint256(stor[sha3(-uint8(_2846) + 8 << 248, 5)].field_0) = ('storage', 256, 0, ('sha3', ('data', ('mask_shl', 8, 0, 248, ('add', 8, ('mul', -1, ('mask_shl', 8, 0, 0, ('var', '_2846'))))), 5))) - 1
                    mem[0] = _2155
                    mem[32] = 6
                    uint256(stor[sha3(_2155, 6)].field_0) = 0
                    mem[mem[64]] = _2155
                    mem[mem[64] + 32] = (('storage', 256, 0, 9) * uint8(-uint8(_2846) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) * uint8(-uint8(_2846) + 8))
                    mem[mem[64] + 64] = 1
                    emit 0x1dfc3580: _2155, (('storage', 256, 0, 9) * uint8(-uint8(_2846) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) * uint8(-uint8(_2846) + 8)), 1
                    if 0 > !((('storage', 256, 0, 9) * uint8(-uint8(_2846) + 8)) - (('storage', 80, 16, ('add', ('sha3', ('var', '_2855')), ('storage', 256, 0, ('sha3', ('data', ('var', '_2155'), 6))))) * uint8(-uint8(_2846) + 8))):
                        revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
    uint8(stor[15].field_8) = 0
}



}
