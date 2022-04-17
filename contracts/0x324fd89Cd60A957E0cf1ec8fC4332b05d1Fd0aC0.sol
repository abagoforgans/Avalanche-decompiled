contract main {




// =====================  Runtime code  =====================


function sub_0457dad2(?) {
    return sub_0457dad2Address
}

function sub_3ec4d4d6(?) {
    return ('storage', 160, 0, 204)
}

function paused() {
    return bool(('storage', 8, 0, 101))
}

function owner() {
    return ('storage', 160, 0, 51)
}

function sub_a64fb0a6(?) {
    return ('storage', 160, 0, 209)
}

function feePool() {
    return ('storage', 160, 0, 208)
}

function sub_b014bb9f(?) {
    return ('storage', 160, 0, 207)
}

function claimReward() {
    return ('storage', 160, 0, 205)
}

function sub_ddaa1196(?) {
    return ('storage', 160, 0, 202)
}

function sub_e7912d4a(?) {
    return ('storage', 160, 0, 206)
}

function sub_ffe6e7d7(?) {
    return ('storage', 160, 0, 201)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if ('storage', 160, 0, 51) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(('storage', 160, 0, 51), 0);
    address(stor[51].field_0) = 0
}

function pauseAll() {
    if ('storage', 160, 0, 51) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if ('storage', 8, 0, 101):
        revert with 0, 'Pausable: paused'
    uint8(stor[101].field_0) = 1
    emit Paused(msg.sender);
}

function unPauseAll() {
    if ('storage', 160, 0, 51) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not ('storage', 8, 0, 101):
        revert with 0, 'Pausable: not paused'
    uint8(stor[101].field_0) = 0
    emit Unpaused(msg.sender);
}

function sub_ec269cfc(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(('storage', 160, 0, 207))
    staticcall ('storage', 160, 0, 207).0xec269cfc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getRewardAmount() {
    require ext_code.size(('storage', 160, 0, 205))
    staticcall ('storage', 160, 0, 205).getTotalWithdrawableINSURRewardAmount(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if ('storage', 160, 0, 51) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(('storage', 160, 0, 51), arg1);
    address(stor[51].field_0) = arg1
}

function sub_faabbb4b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(('storage', 160, 0, 203))
    staticcall ('storage', 160, 0, 203).0x3a8d2b9c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 * ext_call.return_data[0] / 10000)
}

function setup(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9) {
    require calldata.size - 4 >= 288
    if ('storage', 160, 0, 51) != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    if not arg6:
        revert with 0, 'S:5'
    if not arg7:
        revert with 0, 'S:6'
    if not arg5:
        revert with 0, 'S:7'
    if not arg8:
        revert with 0, 'S:8'
    if not arg9:
        revert with 0, 'S:9'
    address(stor[201].field_0) = arg1
    address(stor[209].field_0) = arg2
    address(stor[202].field_0) = arg3
    address(stor[203].field_0) = arg4
    address(stor[204].field_0) = arg5
    address(stor[205].field_0) = arg6
    address(stor[206].field_0) = arg7
    address(stor[207].field_0) = arg8
    address(stor[208].field_0) = arg9
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if ('storage', 8, 0, 101):
        revert with 0, 'Pausable: paused'
    if ('storage', 256, 0, 151) == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    uint256(stor[151].field_0) = 2
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        if arg2 != msg.value:
            revert with 0, 'DPT: 1'
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0, 'DPT: 2'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call arg1 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    uint256(stor[151].field_0) = 1
}

function sub_161d0770(?) {
    require calldata.size - 4 >= 64
    if ('storage', 8, 0, 101):
        revert with 0, 'Pausable: paused'
    if ('storage', 256, 0, 151) == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    uint256(stor[151].field_0) = 2
    require ext_code.size(('storage', 160, 0, 204))
    call ('storage', 160, 0, 204).0xa1074275 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(('storage', 160, 0, 204))
    call ('storage', 160, 0, 204).0xa6a11b20 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg2) >> 32
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, arg2
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    emit 0x86050ea1: arg2, msg.sender, arg1
    uint256(stor[151].field_0) = 1
}

function unlockRewardByController(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(('storage', 160, 0, 201))
    staticcall ('storage', 160, 0, 201).0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ('storage', 160, 0, 51) != msg.sender:
            revert with 0, 'allowedCaller'
    if ('storage', 8, 0, 101):
        revert with 0, 'Pausable: paused'
    if ('storage', 256, 0, 151) == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    uint256(stor[151].field_0) = 2
    require ext_code.size(('storage', 160, 0, 205))
    call ('storage', 160, 0, 205).recalculateAssessor(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(('storage', 160, 0, 205))
    staticcall ('storage', 160, 0, 205).getTotalWithdrawableINSURRewardAmount(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(('storage', 160, 0, 206))
        call ('storage', 160, 0, 206).0xb0e2e239 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(('storage', 160, 0, 206))
        call ('storage', 160, 0, 206).0x284fe1c5 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(('storage', 160, 0, 209)):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0 len 28]
        call ('storage', 160, 0, 209) with:
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0]
            if not unknown_0xa9059cbb(?????), address(arg2) << 64:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit 0xbf93b1f8: ext_call.return_data[0], arg1
    uint256(stor[151].field_0) = 1
    return ext_call.return_data[0]
}

function getClaimDetails(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(('storage', 160, 0, 204))
    staticcall ('storage', 160, 0, 204).0x4bd54e40 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 204))
    staticcall ('storage', 160, 0, 204).0x5707add3 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 204))
    staticcall ('storage', 160, 0, 204).getClaimAmount(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 204))
    staticcall ('storage', 160, 0, 204).0x90f6fd2a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 204))
    staticcall ('storage', 160, 0, 204).0x7614e8a1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xe845540a00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(('storage', 160, 0, 204))
    staticcall ('storage', 160, 0, 204).0xe845540a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _24 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _27 = mem[_24 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_24 + 96])] = mem[_24 + 128 len ceil32(mem[_24 + 96])]
    if not _27 % 32:
        mem[64] = _27 + ceil32(return_data.size) + 128
        require ext_code.size(('storage', 160, 0, 207))
        staticcall ('storage', 160, 0, 207).0xec269cfc with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_27 + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        mem[_27 + ceil32(return_data.size) + 160] = address(ext_call.return_data[0])
        mem[_27 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[_27 + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[_27 + ceil32(return_data.size) + 256] = ext_call.return_data[0]
        mem[_27 + ceil32(return_data.size) + 320] = ext_call.return_data[0]
        mem[_27 + ceil32(return_data.size) + 288] = 224
        mem[_27 + ceil32(return_data.size) + 352] = mem[ceil32(return_data.size) + 96]
        mem[_27 + ceil32(return_data.size) + 384 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return ext_call.return_data[0], 
                   address(ext_call.return_data[0]),
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   224,
                   ext_call.return_data[0],
                   mem[_27 + ceil32(return_data.size) + 352 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _27 + ceil32(return_data.size) + 384] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _27 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 416 len mem[ceil32(return_data.size) + 96] % 32]
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               Array(len=mem[ceil32(return_data.size) + 96], data=mem[_27 + ceil32(return_data.size) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 32]),
               ext_call.return_data[0]
    mem[floor32(_27) + ceil32(return_data.size) + 128] = mem[floor32(_27) + ceil32(return_data.size) + -(_27 % 32) + 160 len _27 % 32]
    mem[64] = floor32(_27) + ceil32(return_data.size) + 160
    require ext_code.size(('storage', 160, 0, 207))
    staticcall ('storage', 160, 0, 207).0xec269cfc with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_27) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    mem[floor32(_27) + ceil32(return_data.size) + 192] = address(ext_call.return_data[0])
    mem[floor32(_27) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[floor32(_27) + ceil32(return_data.size) + 256] = ext_call.return_data[0]
    mem[floor32(_27) + ceil32(return_data.size) + 288] = ext_call.return_data[0]
    mem[floor32(_27) + ceil32(return_data.size) + 352] = ext_call.return_data[0]
    mem[floor32(_27) + ceil32(return_data.size) + 320] = 224
    mem[floor32(_27) + ceil32(return_data.size) + 384] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_27) + ceil32(return_data.size) + 416 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               224,
               ext_call.return_data[0],
               mem[floor32(_27) + ceil32(return_data.size) + 384 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_27) + ceil32(return_data.size) + 416] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_27) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 448 len mem[ceil32(return_data.size) + 96] % 32]
    return ext_call.return_data[0], 
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_27) + ceil32(return_data.size) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 32]),
           ext_call.return_data[0]
}

function initialize() {
    if ('storage', 8, 8, 0):
        address(stor[51].field_0) = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        uint8(stor[101].field_0) = 0
        uint256(stor[151].field_0) = 1
    else:
        if ext_code.size(this.address):
            if ('storage', 8, 0, 0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if ('storage', 8, 8, 0):
            address(stor[51].field_0) = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            uint8(stor[101].field_0) = 0
            uint256(stor[151].field_0) = 1
        else:
            uint8(stor[0].field_0) = 1
            uint8(stor[0].field_8) = 1
            Mask(248, 0, stor[0].field_8) = 0
            if ext_code.size(this.address):
                if ('storage', 8, 0, 0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if ('storage', 8, 8, 0):
                address(stor[51].field_0) = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                uint8(stor[101].field_0) = 0
                uint256(stor[151].field_0) = 1
            else:
                uint8(stor[0].field_0) = 1
                uint8(stor[0].field_8) = 1
                Mask(248, 0, stor[0].field_8) = 0
                if ext_code.size(this.address):
                    if ('storage', 8, 0, 0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if ('storage', 8, 8, 0):
                    address(stor[51].field_0) = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    uint8(stor[101].field_0) = 0
                    uint256(stor[151].field_0) = 1
                else:
                    uint8(stor[0].field_0) = 1
                    uint8(stor[0].field_8) = 1
                    Mask(248, 0, stor[0].field_8) = 0
                    uint8(stor[0].field_8) = 0
                    if ext_code.size(this.address):
                        if ('storage', 8, 0, 0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if ('storage', 8, 8, 0):
                        address(stor[51].field_0) = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor[101].field_0) = 0
                        uint256(stor[151].field_0) = 1
                    else:
                        uint8(stor[0].field_0) = 1
                        uint8(stor[0].field_8) = 1
                        Mask(248, 0, stor[0].field_8) = 0
                        address(stor[51].field_0) = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor[0].field_8) = 0
                        uint8(stor[0].field_8) = 0
                        if ext_code.size(this.address):
                            if ('storage', 8, 0, 0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if ('storage', 8, 8, 0):
                            uint8(stor[101].field_0) = 0
                            uint256(stor[151].field_0) = 1
                        else:
                            uint8(stor[0].field_0) = 1
                            uint8(stor[0].field_8) = 1
                            Mask(248, 0, stor[0].field_8) = 0
                            if ext_code.size(this.address):
                                if ('storage', 8, 0, 0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if ('storage', 8, 8, 0):
                                uint8(stor[101].field_0) = 0
                                uint256(stor[151].field_0) = 1
                            else:
                                uint8(stor[0].field_0) = 1
                                uint8(stor[0].field_8) = 1
                                Mask(248, 0, stor[0].field_8) = 0
                                uint8(stor[0].field_8) = 0
                                if ext_code.size(this.address):
                                    if ('storage', 8, 0, 0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if ('storage', 8, 8, 0):
                                    uint8(stor[101].field_0) = 0
                                    uint256(stor[151].field_0) = 1
                                else:
                                    uint8(stor[0].field_0) = 1
                                    uint8(stor[0].field_8) = 1
                                    Mask(248, 0, stor[0].field_8) = 0
                                    uint8(stor[101].field_0) = 0
                                    uint8(stor[0].field_8) = 0
                                    uint8(stor[0].field_8) = 0
                                    if ext_code.size(this.address):
                                        if ('storage', 8, 0, 0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if ('storage', 8, 8, 0):
                                        uint256(stor[151].field_0) = 1
                                    else:
                                        uint8(stor[0].field_0) = 1
                                        uint8(stor[0].field_8) = 1
                                        Mask(248, 0, stor[0].field_8) = 0
                                        if ext_code.size(this.address):
                                            if ('storage', 8, 0, 0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if ('storage', 8, 8, 0):
                                            uint256(stor[151].field_0) = 1
                                        else:
                                            uint8(stor[0].field_0) = 1
                                            uint8(stor[0].field_8) = 1
                                            Mask(248, 0, stor[0].field_8) = 0
                                            uint256(stor[151].field_0) = 1
                                            uint8(stor[0].field_8) = 0
                                            uint8(stor[0].field_8) = 0
                                            uint8(stor[0].field_8) = 0
}

function sub_0799c6f0(?) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if ('storage', 8, 0, 101):
        revert with 0, 'Pausable: paused'
    if ('storage', 256, 0, 151) == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    uint256(stor[151].field_0) = 2
    require ext_code.size(('storage', 160, 0, 202))
    staticcall ('storage', 160, 0, 202).0x67b5709a with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'CLM: 1'
    if arg2 <= 0:
        revert with 0, 'CLM: 2'
    if arg3 <= 0:
        revert with 0, 'CLM: 3'
    if arg4 <= 0:
        revert with 0, 'CLM: 4'
    if arg4 > arg2:
        revert with 0, 'CLM: 4'
    require ext_code.size(('storage', 160, 0, 202))
    staticcall ('storage', 160, 0, 202).0xae7ddb9a with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 > ext_call.return_data[0]:
        revert with 0, 'CLM: 4'
    if arg5.length <= 0:
        revert with 0, 'CLM: 5'
    require ext_code.size(('storage', 160, 0, 202))
    staticcall ('storage', 160, 0, 202).0xc956655c with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(('storage', 160, 0, 203))
    staticcall ('storage', 160, 0, 203).0x3a8d2b9c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
            if 0 > msg.value:
                revert with 0, 'CLM: 6'
            require ext_code.size(('storage', 160, 0, 208))
            call ('storage', 160, 0, 208).0x6db043f0 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 202))
            staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 202))
            call ('storage', 160, 0, 202).0xcdc30eec with:
                 gas gas_remaining wei
                args msg.sender, arg1, 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x54a3a739: 0, Mask(224, 0, arg1), ext_call.return_data[0], 2, msg.sender
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xb348573d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            staticcall ('storage', 160, 0, 204).getClaimCount() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xe7d6020 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xa261ea34 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xdec00b43 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0x62ffe6a6 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xed722d21 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xa81c738 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0x3e034a58 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg5.length) + 128] = arg1
            mem[ceil32(arg5.length) + 416 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                emit 0xeb752cf7: 0, Mask(224, 0, arg1), 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + 416] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 448 len arg5.length % 32]
                emit 0xeb752cf7: 0, Mask(224, 0, arg1), 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 416 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'CLM: 7'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'CLM: 8'
            mem[ceil32(arg5.length) + 128] = 100
            mem[ceil32(arg5.length) + 160 len 4] = unknown_0x23b872dd(?????)
            mem[64] = ceil32(arg5.length) + 324
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg5.length) + 430 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg5.length) + 324 len floor32(0, 100)] = mem[ceil32(arg5.length) + 160 len floor32(0, 100)]
            mem[ceil32(arg5.length) + floor32(0, 100) + 352 len 4] = mem[ceil32(arg5.length) + floor32(0, 100) + 188 len 4]
            call address(ext_call.return_data[0]).mem[ceil32(arg5.length) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg5.length) + 328 len 0, 100 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg5.length:
                        revert with arg5[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg5.length:
                    require arg5.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + 434 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg5.length) + 594 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg5.length) + 488 len 64] = unknown_0xa9059cbb(?????), ('storage', 224, 0, 208), ('storage', 32, 0, 208), 0
                call address(ext_call.return_data[0]) with:
                   funct ('storage', 32, 0, 208)
                     gas gas_remaining wei
                    args 0, mem[ceil32(arg5.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + 598 len 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + 776 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + 776] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 808 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 776 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
                else:
                    mem[ceil32(arg5.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg5.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 777 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + 777] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + -(arg5.length % 32) + 809 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(return_data.size) + 777 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
            else:
                mem[ceil32(arg5.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg5.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 435 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), ('storage', 224, 0, 208), ('storage', 32, 0, 208), 0
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 581 len 4] = 0
                call address(ext_call.return_data[0]) with:
                   funct ('storage', 32, 0, 208)
                     gas gas_remaining wei
                    args 0, mem[ceil32(arg5.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 777 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + 777] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + -(arg5.length % 32) + 809 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(return_data.size) + 777 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
                else:
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 586 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                        args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xb348573d00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xba4611d900000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0]), mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 590 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) + arg5.length - (2 * ceil32(return_data.size))])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 778 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) + arg5.length - (2 * ceil32(return_data.size))], msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 778] = mem[floor32(arg5.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + -(arg5.length % 32) + 810 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) + floor32(arg5.length) + (-2 * ceil32(return_data.size)) + -ceil32(arg5.length) + 32], msg.sender
    else:
        if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg5.length) + 229 len 31]
        if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(ext_call.return_data[0]):
            if arg4 * ext_call.return_data[0] / 10000 > msg.value:
                revert with 0, 'CLM: 6'
            require ext_code.size(('storage', 160, 0, 208))
            call ('storage', 160, 0, 208).0x6db043f0 with:
               value arg4 * ext_call.return_data[0] / 10000 wei
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg4 * ext_call.return_data[0] / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 202))
            staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                    gas gas_remaining wei
                   args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 202))
            call ('storage', 160, 0, 202).0xcdc30eec with:
                 gas gas_remaining wei
                args msg.sender, arg1, 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x54a3a739: 0, Mask(224, 0, arg1), ext_call.return_data[0], 2, msg.sender
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xb348573d with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            staticcall ('storage', 160, 0, 204).getClaimCount() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xe7d6020 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xa261ea34 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xdec00b43 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0x62ffe6a6 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xed722d21 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0xa81c738 with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 204))
            call ('storage', 160, 0, 204).0x3e034a58 with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(arg5.length) + 128] = arg1
            mem[ceil32(arg5.length) + 416 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
            if not arg5.length % 32:
                emit 0xeb752cf7: 0, Mask(224, 0, arg1), 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
            else:
                mem[floor32(arg5.length) + ceil32(arg5.length) + 416] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 448 len arg5.length % 32]
                emit 0xeb752cf7: 0, Mask(224, 0, arg1), 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 416 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4 * ext_call.return_data[0] / 10000:
                revert with 0, 'CLM: 7'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg4 * ext_call.return_data[0] / 10000:
                revert with 0, 'CLM: 8'
            mem[ceil32(arg5.length) + 128] = 100
            mem[ceil32(arg5.length) + 160 len 4] = unknown_0x23b872dd(?????)
            mem[64] = ceil32(arg5.length) + 324
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg5.length) + 430 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg5.length) + 324 len floor32(0, 100)] = mem[ceil32(arg5.length) + 160 len floor32(0, 100)]
            mem[ceil32(arg5.length) + floor32(0, 100) + 352 len 4] = mem[ceil32(arg5.length) + floor32(0, 100) + 188 len 4]
            call address(ext_call.return_data[0]).mem[ceil32(arg5.length) + 324 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(arg5.length) + 328 len 0, 100 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if arg5.length:
                        revert with arg5[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg5.length:
                    require arg5.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + 434 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg5.length) + 594 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg5.length) + 488 len 64] = unknown_0xa9059cbb(?????), ('storage', 224, 0, 208), ('storage', 32, 0, 208), Mask(224, 32, arg4 * ext_call.return_data[0] / 10000) >> 32
                call address(ext_call.return_data[0]) with:
                   funct ('storage', 32, 0, 208)
                     gas gas_remaining wei
                    args Mask(224, 32, arg4 * ext_call.return_data[0] / 10000) << 224, mem[ceil32(arg5.length) + 552 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + 598 len 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg4 * ext_call.return_data[0] / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + 776 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + 776] = mem[floor32(arg5.length) + ceil32(arg5.length) + -(arg5.length % 32) + 808 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + 776 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
                else:
                    mem[ceil32(arg5.length) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg5.length) + 520]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg4 * ext_call.return_data[0] / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 777 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + 777] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + -(arg5.length % 32) + 809 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(return_data.size) + 777 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
            else:
                mem[ceil32(arg5.length) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg5.length) + 356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 435 len 22]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + 595 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 489 len 64] = unknown_0xa9059cbb(?????), ('storage', 224, 0, 208), ('storage', 32, 0, 208), Mask(224, 32, arg4 * ext_call.return_data[0] / 10000) >> 32
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 581 len 4] = 0
                call address(ext_call.return_data[0]) with:
                   funct ('storage', 32, 0, 208)
                     gas gas_remaining wei
                    args Mask(224, 32, arg4 * ext_call.return_data[0] / 10000) << 224, mem[ceil32(arg5.length) + ceil32(return_data.size) + 553 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if arg5.length:
                            revert with arg5[all]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg5.length:
                        require arg5.length >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 599 len 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg4 * ext_call.return_data[0] / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 777 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256, msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + 777] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(return_data.size) + -(arg5.length % 32) + 809 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(return_data.size) + 777 len floor32(arg5.length) + -ceil32(arg5.length) + 32], msg.sender
                else:
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 521]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(('storage', 160, 0, 208))
                    call ('storage', 160, 0, 208).0x6db043f0 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg4 * ext_call.return_data[0] / 10000, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 202))
                    staticcall ('storage', 160, 0, 202).0xf83d2e00 with:
                            gas gas_remaining wei
                           args msg.sender, arg1, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 202))
                    call ('storage', 160, 0, 202).0xcdc30eec with:
                         gas gas_remaining wei
                        args msg.sender, arg1, 2, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x54a3a739: arg1, ext_call.return_data[0], 2, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 586 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], msg.sender
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xb348573d with:
                         gas gas_remaining wei
                        args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xb348573d00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    staticcall ('storage', 160, 0, 204).getClaimCount() with:
                            gas gas_remaining wei
                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xba4611d900000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xe7d6020 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg1, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa261ea34 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], msg.sender, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xdec00b43 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg2, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x62ffe6a6 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg3, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xed722d21 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], address(ext_call.return_data[0]), mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xa81c738 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg4, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 590 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0xd10a7b53 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], Array(len=arg5.length, data=mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) + arg5.length - (2 * ceil32(return_data.size))])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).setClaimStatus(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 204))
                    call ('storage', 160, 0, 204).0x3e034a58 with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0], mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 778 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    if not arg5.length % 32:
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) + arg5.length - (2 * ceil32(return_data.size))], msg.sender
                    else:
                        mem[floor32(arg5.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 778] = mem[floor32(arg5.length) + ceil32(arg5.length) + (2 * ceil32(return_data.size)) + -(arg5.length % 32) + 810 len arg5.length % 32]
                        emit 0xeb752cf7: arg1, 2, ext_call.return_data[0], arg3, arg2, arg4, 256, 0, arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + (2 * ceil32(return_data.size)) + 778 len (2 * ceil32(return_data.size)) + floor32(arg5.length) + (-2 * ceil32(return_data.size)) + -ceil32(arg5.length) + 32], msg.sender
    uint256(stor[151].field_0) = 1
}



}
