contract main {




// =====================  Runtime code  =====================


const sub_24a17994(?) = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
uint32 stor201;
address sub_30144f96Address;
uint256 stor201;
address feePoolAddress;
mapping of address sub_abd915d7;
uint256 sub_4f4133e8;
mapping of uint256 sub_7a5e7bdb;
mapping of uint256 sub_929a6ee3;
mapping of uint256 sub_3a59cfee;
mapping of uint256 sub_dc7894c2;
mapping of uint256 sub_faf295ca;
address sub_b870029cAddress;
address sub_5bfb7508Address;
mapping of uint256 sub_90323f87;
mapping of uint256 sub_a651cd25;
address exchangeRateAddress;

function sub_30144f96(?) {
    return address(sub_30144f96Address)
}

function sub_3a59cfee(?) {
    require calldata.size - 4 >= 32
    return sub_3a59cfee[arg1]
}

function exchangeRate() {
    return exchangeRateAddress
}

function sub_4f4133e8(?) {
    return sub_4f4133e8
}

function sub_5bfb7508(?) {
    return sub_5bfb7508Address
}

function paused() {
    return bool(paused)
}

function sub_7a5e7bdb(?) {
    require calldata.size - 4 >= 32
    return sub_7a5e7bdb[arg1]
}

function owner() {
    return owner
}

function sub_90323f87(?) {
    require calldata.size - 4 >= 32
    return sub_90323f87[arg1]
}

function sub_929a6ee3(?) {
    require calldata.size - 4 >= 32
    return sub_929a6ee3[arg1]
}

function sub_a651cd25(?) {
    require calldata.size - 4 >= 32
    return sub_a651cd25[arg1]
}

function sub_abd915d7(?) {
    require calldata.size - 4 >= 32
    return sub_abd915d7[arg1]
}

function feePool() {
    return feePoolAddress
}

function sub_b870029c(?) {
    return sub_b870029cAddress
}

function sub_dc7894c2(?) {
    require calldata.size - 4 >= 32
    return sub_dc7894c2[arg1]
}

function sub_faf295ca(?) {
    require calldata.size - 4 >= 32
    return sub_faf295ca[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMapCounter(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_4f4133e8 = arg1
}

function pauseAll() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unPauseAll() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setTokenToLPTokenMap(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'STTLPTM:1'
    sub_abd915d7[address(arg1)] = arg2
}

function setStakeCap(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not sub_abd915d7[address(arg1)]:
        revert with 0, 'onlyAllowedToken'
    sub_90323f87[address(arg1)] = arg2
    sub_a651cd25[address(arg1)] = arg3
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setup(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    if not arg5:
        revert with 0, 'S:5'
    sub_b870029cAddress = arg1
    address(sub_30144f96Address) = arg2
    feePoolAddress = arg3
    sub_5bfb7508Address = arg4
    exchangeRateAddress = arg5
}

function setStakeInfo(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not sub_abd915d7[address(arg1)]:
        revert with 0, 'onlyAllowedToken'
    if not arg1:
        revert with 0, 'SSI:1'
    sub_7a5e7bdb[address(arg1)] = arg2
    if arg3 >= arg4:
        revert with 0, 'SSI:2'
    sub_929a6ee3[address(arg1)] = arg3
    sub_3a59cfee[address(arg1)] = arg4
    sub_dc7894c2[address(arg1)] = arg5
    sub_faf295ca[address(arg1)] = arg6
}

function sub_97dad231(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if arg1.length > sub_4f4133e8:
        revert with 0, 'SRFP:1'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 203
        if not sub_abd915d7[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'SRFP:2'
        require ext_code.size(address(sub_30144f96Address))
        staticcall address(sub_30144f96Address).0x231c336e with:
                gas gas_remaining wei
               args msg.sender, sub_abd915d7[mem[(32 * idx) + 140 len 20]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = msg.sender
        mem[(32 * arg1.length) + 164] = sub_abd915d7[mem[0]]
        require ext_code.size(address(sub_30144f96Address))
        staticcall address(sub_30144f96Address).showHarvestRewards(address rg1, address rg2) with:
                gas gas_remaining wei
               args msg.sender, sub_abd915d7[mem[0]]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = (2 * ext_call.return_data[0]) + s
        continue 
    return (_40 * arg1.length)
}

function proposeUnstake(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_abd915d7[address(arg2)]:
        revert with 0, 'onlyAllowedToken'
    if arg1 < sub_929a6ee3[address(arg2)]:
        revert with 0, 'PU:1'
    if arg1 > sub_3a59cfee[address(arg2)]:
        revert with 0, 'PU:1'
    require ext_code.size(address(sub_30144f96Address))
    staticcall address(sub_30144f96Address).0x68198b80 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'PU:2'
    require ext_code.size(address(sub_30144f96Address))
    staticcall address(sub_30144f96Address).0x68198b80 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_abd915d7[address(arg2)])
    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'PU:3'
        require ext_code.size(sub_abd915d7[address(arg2)])
        call sub_abd915d7[address(arg2)].proposeToBurn(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0], sub_dc7894c2[address(arg2)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ProposeUnstakeEvent((0 / ext_call.return_data[0]), msg.sender, sub_abd915d7[address(arg2)]);
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            revert with 0, 'PU:3'
        require ext_code.size(sub_abd915d7[address(arg2)])
        call sub_abd915d7[address(arg2)].proposeToBurn(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], sub_dc7894c2[address(arg2)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit ProposeUnstakeEvent((ext_call.return_data[0] * arg1 / ext_call.return_data[0]), msg.sender, sub_abd915d7[address(arg2)]);
    stor151 = 1
}

function initializeStakingV2Controller() {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                    stor151 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                        stor151 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                paused = 0
                                stor151 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
                                if ext_code.size(this.address):
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    46,
                                                    0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        stor151 = 1
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            stor151 = 1
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            stor151 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
}

function sub_d5c71c37(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 132] = this.address
    mem[(32 * arg3.length) + 164] = msg.sender
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if paused:
            revert with 0, 'Pausable: paused'
        if stor151 == 2:
            revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
        stor151 = 2
        if not arg2:
            revert with 0, '_URFP:1'
        if arg3.length > sub_4f4133e8:
            revert with 0, '_URFP:2'
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg3.length
            _146 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 203
            if not sub_abd915d7[mem[(32 * idx) + 140 len 20]]:
                revert with 0, '_URFP:3'
            require ext_code.size(sub_abd915d7[mem[(32 * idx) + 140 len 20]])
            staticcall sub_abd915d7[mem[(32 * idx) + 140 len 20]].0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_30144f96Address))
                call address(sub_30144f96Address).0x82380a12 with:
                     gas gas_remaining wei
                    args sub_abd915d7[mem[(32 * idx) + 140 len 20]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_30144f96Address))
                call address(sub_30144f96Address).0xd21df230 with:
                     gas gas_remaining wei
                    args address(arg1), sub_abd915d7[mem[(32 * idx) + 140 len 20]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + 164] = sub_abd915d7[mem[(32 * idx) + 140 len 20]]
            mem[(32 * arg3.length) + 196] = arg2
            require ext_code.size(address(sub_30144f96Address))
            call address(sub_30144f96Address).0x9e9df5d7 with:
                 gas gas_remaining wei
                args address(arg1), sub_abd915d7[mem[0]], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * arg3.length) + 132] = arg1
            require ext_code.size(sub_abd915d7[mem[0]])
            staticcall sub_abd915d7[mem[0]].0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_30144f96Address))
                staticcall address(sub_30144f96Address).0x83853109 with:
                        gas gas_remaining wei
                       args sub_abd915d7[mem[0]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg3.length) + 132] = arg1
                mem[(32 * arg3.length) + 164] = 0
                mem[(32 * arg3.length) + 196] = ext_call.return_data[0]
                require ext_code.size(sub_abd915d7[mem[0]])
                call sub_abd915d7[mem[0]].mint(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            emit UnlockRewardsFromPoolsEvent(ext_call.return_data[0], arg1, address(_146));
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
        if paused:
            revert with 0, 'Pausable: paused'
        if stor151 == 2:
            revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
        stor151 = 2
        if not arg2:
            revert with 0, '_URFP:1'
        if arg3.length > sub_4f4133e8:
            revert with 0, '_URFP:2'
        idx = 0
        s = 0
        while idx < arg3.length:
            require idx < arg3.length
            _148 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 203
            if not sub_abd915d7[mem[(32 * idx) + 140 len 20]]:
                revert with 0, '_URFP:3'
            require ext_code.size(sub_abd915d7[mem[(32 * idx) + 140 len 20]])
            staticcall sub_abd915d7[mem[(32 * idx) + 140 len 20]].0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_30144f96Address))
                call address(sub_30144f96Address).0x82380a12 with:
                     gas gas_remaining wei
                    args sub_abd915d7[mem[(32 * idx) + 140 len 20]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_30144f96Address))
                call address(sub_30144f96Address).0xd21df230 with:
                     gas gas_remaining wei
                    args address(arg1), sub_abd915d7[mem[(32 * idx) + 140 len 20]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + 164] = sub_abd915d7[mem[(32 * idx) + 140 len 20]]
            mem[(32 * arg3.length) + 196] = arg2
            require ext_code.size(address(sub_30144f96Address))
            call address(sub_30144f96Address).0x9e9df5d7 with:
                 gas gas_remaining wei
                args address(arg1), sub_abd915d7[mem[0]], arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * arg3.length) + 132] = arg1
            require ext_code.size(sub_abd915d7[mem[0]])
            staticcall sub_abd915d7[mem[0]].0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(address(sub_30144f96Address))
                staticcall address(sub_30144f96Address).0x83853109 with:
                        gas gas_remaining wei
                       args sub_abd915d7[mem[0]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg3.length) + 132] = arg1
                mem[(32 * arg3.length) + 164] = 0
                mem[(32 * arg3.length) + 196] = ext_call.return_data[0]
                require ext_code.size(sub_abd915d7[mem[0]])
                call sub_abd915d7[mem[0]].mint(address rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(arg1), 0, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            emit UnlockRewardsFromPoolsEvent(ext_call.return_data[0], arg1, address(_148));
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
    stor151 = 1
    return s
}

function withdrawTokens(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor151 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor151 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not sub_abd915d7[address(arg2)]:
        revert with 0, 'onlyAllowedToken'
    if arg1 <= 0:
        revert with 0, 'WT:1'
    require ext_code.size(address(sub_30144f96Address))
    call address(sub_30144f96Address).0x82380a12 with:
         gas gas_remaining wei
        args sub_abd915d7[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_30144f96Address))
    call address(sub_30144f96Address).0xd21df230 with:
         gas gas_remaining wei
        args msg.sender, sub_abd915d7[address(arg2)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(sub_30144f96Address))
    staticcall address(sub_30144f96Address).0x68198b80 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'WT:2'
    require ext_code.size(address(sub_30144f96Address))
    staticcall address(sub_30144f96Address).0x68198b80 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_abd915d7[address(arg2)])
    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            revert with 0, 'WT:3'
        if sub_faf295ca[address(arg2)] > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(sub_30144f96Address))
            call address(sub_30144f96Address).0xf4e6ae32 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, address(arg2), feePoolAddress, arg1
        else:
            if (10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / arg1 != -sub_faf295ca[address(arg2)] + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(sub_30144f96Address))
            call address(sub_30144f96Address).0xf4e6ae32 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), (10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / 10000, address(arg2), feePoolAddress, arg1 - ((10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_30144f96Address))
        staticcall address(sub_30144f96Address).0x83853109 with:
                gas gas_remaining wei
               args sub_abd915d7[address(arg2)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_abd915d7[address(arg2)])
        call sub_abd915d7[address(arg2)].burn(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_5bfb7508Address)
        staticcall sub_5bfb7508Address.0x626c66cb with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(sub_5bfb7508Address)
            staticcall sub_5bfb7508Address.0x58deb889 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                revert with 0, 'WT:4'
        require ext_code.size(sub_abd915d7[address(arg2)])
        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit WithdrawTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
            revert with 0, 'WT:3'
        if sub_faf295ca[address(arg2)] > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg1:
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(sub_30144f96Address))
            call address(sub_30144f96Address).0xf4e6ae32 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), 0, address(arg2), feePoolAddress, arg1
        else:
            if (10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / arg1 != -sub_faf295ca[address(arg2)] + 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / 10000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(sub_30144f96Address))
            call address(sub_30144f96Address).0xf4e6ae32 with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), (10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / 10000, address(arg2), feePoolAddress, arg1 - ((10000 * arg1) - (sub_faf295ca[address(arg2)] * arg1) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(sub_30144f96Address))
        staticcall address(sub_30144f96Address).0x83853109 with:
                gas gas_remaining wei
               args sub_abd915d7[address(arg2)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_abd915d7[address(arg2)])
        call sub_abd915d7[address(arg2)].burn(address rg1, uint256 rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_5bfb7508Address)
        staticcall sub_5bfb7508Address.0x626c66cb with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(sub_5bfb7508Address)
            staticcall sub_5bfb7508Address.0x58deb889 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if not ext_call.return_data[0]:
                revert with 0, 'WT:4'
        require ext_code.size(sub_abd915d7[address(arg2)])
        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit WithdrawTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
    stor151 = 1
}

function sub_ed05d4a1(?) {
    require calldata.size - 4 >= 160
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if arg1 < 100 * 10^6:
        revert with 0, 'GRBPL:1'
    if arg2 <= 0:
        revert with 0, 'GRBPL:2'
    if arg3 > 10000:
        revert with 0, 'GRBPL:3'
    if arg4.length + arg5.length != sub_4f4133e8:
        revert with 0, 'GRBPL:4'
    require arg4.length + arg5.length <= test266151307()
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = arg4.length + arg5.length
    if not arg4.length + arg5.length:
        require arg4.length + arg5.length <= test266151307()
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192] = arg4.length + arg5.length
        if not arg4.length + arg5.length:
            idx = 0
            s = 0
            t = 0
            while idx < arg4.length:
                require idx < arg4.length
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 203
                if not sub_abd915d7[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'GRBPL:5'
                require idx < arg4.length
                _339 = mem[(32 * idx) + 128]
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(address(sub_30144f96Address))
                staticcall address(sub_30144f96Address).0x68198b80 with:
                        gas gas_remaining wei
                       args address(_339)
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require idx < arg4.length
                require ext_code.size(address(sub_30144f96Address))
                staticcall address(sub_30144f96Address).0x69940d79 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 260] = address(ext_call.return_data[0])
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 292] = ext_call.return_data[0]
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228], address(ext_call.return_data[0]), ext_call.return_data[0]
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg3:
                    if arg2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require arg2
                    require s < arg4.length + arg5.length
                    mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0 / arg2 / 10000
                    require s < arg4.length + arg5.length
                    if (0 / arg2 / 10000) + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    if s + 1 < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s + 1
                    t = (0 / arg2 / 10000) + t
                    continue 
                if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                require s < arg4.length + arg5.length
                mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0] * arg3 / arg2 / 10000
                require s < arg4.length + arg5.length
                if (ext_call.return_data[0] * arg3 / arg2 / 10000) + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                if s + 1 < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + 1
                t = (ext_call.return_data[0] * arg3 / arg2 / 10000) + t
                continue 
            idx = 0
            u = s
            v = t
            while idx < arg5.length:
                require idx < arg5.length
                if not sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]:
                    revert with 0, 'GRBPL:6'
                require idx < arg5.length
                mem[0] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                mem[32] = 203
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]
                require ext_code.size(address(sub_30144f96Address))
                staticcall address(sub_30144f96Address).0xfb25e5b9 with:
                        gas gas_remaining wei
                       args sub_abd915d7[mem[0]]
                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require u < arg4.length + arg5.length
                mem[(32 * u) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
                require u < arg4.length + arg5.length
                if ext_call.return_data[0] + v < v:
                    revert with 0, 'SafeMath: addition overflow'
                if u + 1 < u:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                u = u + 1
                v = ext_call.return_data[0] + v
                continue 
            idx = 0
            while idx < arg4.length + arg5.length:
                require idx < arg4.length + arg5.length
                if not arg1:
                    if t + (_712 * arg5.length) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require t + (_712 * arg5.length)
                    require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = 0 / t + (_712 * arg5.length)
                else:
                    if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / arg1 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
                    if t + (_712 * arg5.length) <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require t + (_712 * arg5.length)
                    require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
                    mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / t + (_712 * arg5.length)
                idx = idx + 1
                continue 
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 256] = t + (_712 * arg5.length)
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = 64
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 288] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])]
            return Array(len=mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192], data=mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len 32 * mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]]), 
                   t + (_712 * arg5.length)
        mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224 len 32 * arg4.length + arg5.length] = call.data[calldata.size len 32 * arg4.length + arg5.length]
        idx = 0
        s = 0
        t = 0
        while idx < arg4.length:
            require idx < arg4.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 203
            if not sub_abd915d7[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'GRBPL:5'
            require idx < arg4.length
            _345 = mem[(32 * idx) + 128]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(sub_30144f96Address))
            staticcall address(sub_30144f96Address).0x68198b80 with:
                    gas gas_remaining wei
                   args address(_345)
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg4.length
            require ext_code.size(address(sub_30144f96Address))
            staticcall address(sub_30144f96Address).0x69940d79 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 260] = address(ext_call.return_data[0])
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 292] = ext_call.return_data[0]
            require ext_code.size(exchangeRateAddress)
            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228], address(ext_call.return_data[0]), ext_call.return_data[0]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                require s < arg4.length + arg5.length
                mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0 / arg2 / 10000
                require s < arg4.length + arg5.length
                if (0 / arg2 / 10000) + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                if s + 1 < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + 1
                t = (0 / arg2 / 10000) + t
                continue 
            if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
            if arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg2
            require s < arg4.length + arg5.length
            mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0] * arg3 / arg2 / 10000
            require s < arg4.length + arg5.length
            if (ext_call.return_data[0] * arg3 / arg2 / 10000) + t < t:
                revert with 0, 'SafeMath: addition overflow'
            if s + 1 < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = (ext_call.return_data[0] * arg3 / arg2 / 10000) + t
            continue 
        idx = 0
        u = s
        v = t
        while idx < arg5.length:
            require idx < arg5.length
            if not sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]:
                revert with 0, 'GRBPL:6'
            require idx < arg5.length
            mem[0] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
            mem[32] = 203
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]
            require ext_code.size(address(sub_30144f96Address))
            staticcall address(sub_30144f96Address).0xfb25e5b9 with:
                    gas gas_remaining wei
                   args sub_abd915d7[mem[0]]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < arg4.length + arg5.length
            mem[(32 * u) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
            require u < arg4.length + arg5.length
            if ext_call.return_data[0] + v < v:
                revert with 0, 'SafeMath: addition overflow'
            if u + 1 < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        idx = 0
        while idx < arg4.length + arg5.length:
            require idx < arg4.length + arg5.length
            if not arg1:
                if t + (_713 * arg5.length) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require t + (_713 * arg5.length)
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
                mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = 0 / t + (_713 * arg5.length)
            else:
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / arg1 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
                if t + (_713 * arg5.length) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require t + (_713 * arg5.length)
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
                mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / t + (_713 * arg5.length)
            idx = idx + 1
            continue 
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 256] = t + (_713 * arg5.length)
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = 64
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 288] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])]
        return Array(len=mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192], data=mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len 32 * mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]]), 
               t + (_713 * arg5.length)
    mem[(32 * arg4.length) + (32 * arg5.length) + 192 len 32 * arg4.length + arg5.length] = call.data[calldata.size len 32 * arg4.length + arg5.length]
    require arg4.length + arg5.length <= test266151307()
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192] = arg4.length + arg5.length
    if not arg4.length + arg5.length:
        idx = 0
        s = 0
        t = 0
        while idx < arg4.length:
            require idx < arg4.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 203
            if not sub_abd915d7[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'GRBPL:5'
            require idx < arg4.length
            _351 = mem[(32 * idx) + 128]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(address(sub_30144f96Address))
            staticcall address(sub_30144f96Address).0x68198b80 with:
                    gas gas_remaining wei
                   args address(_351)
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg4.length
            require ext_code.size(address(sub_30144f96Address))
            staticcall address(sub_30144f96Address).0x69940d79 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 260] = address(ext_call.return_data[0])
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 292] = ext_call.return_data[0]
            require ext_code.size(exchangeRateAddress)
            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228], address(ext_call.return_data[0]), ext_call.return_data[0]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg3:
                if arg2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require arg2
                require s < arg4.length + arg5.length
                mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0 / arg2 / 10000
                require s < arg4.length + arg5.length
                if (0 / arg2 / 10000) + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                if s + 1 < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = s + 1
                t = (0 / arg2 / 10000) + t
                continue 
            if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
            if arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg2
            require s < arg4.length + arg5.length
            mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0] * arg3 / arg2 / 10000
            require s < arg4.length + arg5.length
            if (ext_call.return_data[0] * arg3 / arg2 / 10000) + t < t:
                revert with 0, 'SafeMath: addition overflow'
            if s + 1 < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = (ext_call.return_data[0] * arg3 / arg2 / 10000) + t
            continue 
        idx = 0
        u = s
        v = t
        while idx < arg5.length:
            require idx < arg5.length
            if not sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]:
                revert with 0, 'GRBPL:6'
            require idx < arg5.length
            mem[0] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
            mem[32] = 203
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]
            require ext_code.size(address(sub_30144f96Address))
            staticcall address(sub_30144f96Address).0xfb25e5b9 with:
                    gas gas_remaining wei
                   args sub_abd915d7[mem[0]]
            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require u < arg4.length + arg5.length
            mem[(32 * u) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
            require u < arg4.length + arg5.length
            if ext_call.return_data[0] + v < v:
                revert with 0, 'SafeMath: addition overflow'
            if u + 1 < u:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        idx = 0
        while idx < arg4.length + arg5.length:
            require idx < arg4.length + arg5.length
            if not arg1:
                if t + (_714 * arg5.length) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require t + (_714 * arg5.length)
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
                mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = 0 / t + (_714 * arg5.length)
            else:
                if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / arg1 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
                if t + (_714 * arg5.length) <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require t + (_714 * arg5.length)
                require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
                mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / t + (_714 * arg5.length)
            idx = idx + 1
            continue 
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 256] = t + (_714 * arg5.length)
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = 64
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 288] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])]
        return Array(len=mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192], data=mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len 32 * mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]]), 
               t + (_714 * arg5.length)
    mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224 len 32 * arg4.length + arg5.length] = call.data[calldata.size len 32 * arg4.length + arg5.length]
    idx = 0
    s = 0
    t = 0
    while idx < arg4.length:
        require idx < arg4.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 203
        if not sub_abd915d7[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'GRBPL:5'
        require idx < arg4.length
        _357 = mem[(32 * idx) + 128]
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(sub_30144f96Address))
        staticcall address(sub_30144f96Address).0x68198b80 with:
                gas gas_remaining wei
               args address(_357)
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg4.length
        require ext_code.size(address(sub_30144f96Address))
        staticcall address(sub_30144f96Address).0x69940d79 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 260] = address(ext_call.return_data[0])
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 292] = ext_call.return_data[0]
        require ext_code.size(exchangeRateAddress)
        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228], address(ext_call.return_data[0]), ext_call.return_data[0]
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg3:
            if arg2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require arg2
            require s < arg4.length + arg5.length
            mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = 0 / arg2 / 10000
            require s < arg4.length + arg5.length
            if (0 / arg2 / 10000) + t < t:
                revert with 0, 'SafeMath: addition overflow'
            if s + 1 < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = s + 1
            t = (0 / arg2 / 10000) + t
            continue 
        if ext_call.return_data[0] * arg3 / arg3 != ext_call.return_data[0]:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2
        require s < arg4.length + arg5.length
        mem[(32 * s) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0] * arg3 / arg2 / 10000
        require s < arg4.length + arg5.length
        if (ext_call.return_data[0] * arg3 / arg2 / 10000) + t < t:
            revert with 0, 'SafeMath: addition overflow'
        if s + 1 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + 1
        t = (ext_call.return_data[0] * arg3 / arg2 / 10000) + t
        continue 
    idx = 0
    u = s
    v = t
    while idx < arg5.length:
        require idx < arg5.length
        if not sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]:
            revert with 0, 'GRBPL:6'
        require idx < arg5.length
        mem[0] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
        mem[32] = 203
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 228] = sub_abd915d7[mem[(32 * idx) + (32 * arg4.length) + 172 len 20]]
        require ext_code.size(address(sub_30144f96Address))
        staticcall address(sub_30144f96Address).0xfb25e5b9 with:
                gas gas_remaining wei
               args sub_abd915d7[mem[0]]
        mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require u < arg4.length + arg5.length
        mem[(32 * u) + (32 * arg4.length) + (32 * arg5.length) + 192] = ext_call.return_data[0]
        require u < arg4.length + arg5.length
        if ext_call.return_data[0] + v < v:
            revert with 0, 'SafeMath: addition overflow'
        if u + 1 < u:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        u = u + 1
        v = ext_call.return_data[0] + v
        continue 
    idx = 0
    while idx < arg4.length + arg5.length:
        require idx < arg4.length + arg5.length
        if not arg1:
            if t + (_715 * arg5.length) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t + (_715 * arg5.length)
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
            mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = 0 / t + (_715 * arg5.length)
        else:
            if mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / arg1 != mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 325 len 31]
            if t + (_715 * arg5.length) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t + (_715 * arg5.length)
            require idx < mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
            mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224] = mem[(32 * idx) + (32 * arg4.length) + (32 * arg5.length) + 192] * arg1 / t + (_715 * arg5.length)
        idx = idx + 1
        continue 
    mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 256] = t + (_715 * arg5.length)
    mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 224] = 64
    mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 288] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]
    mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])] = mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 224 len floor32(mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192])]
    return Array(len=mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192], data=mem[(32 * arg4.length) + (32 * arg5.length) + (64 * arg4.length + arg5.length) + 320 len 32 * mem[(32 * arg4.length) + (32 * arg5.length) + (32 * arg4.length + arg5.length) + 192]]), 
           t + (_715 * arg5.length)
}

function stakeTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    else:
        if stor151 == 2:
            revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
        else:
            stor151 = 2
            if not sub_abd915d7[address(arg2)]:
                revert with 0, 'onlyAllowedToken'
            else:
                if arg1 < sub_7a5e7bdb[address(arg2)]:
                    revert with 0, 'ST:1'
                else:
                    require ext_code.size(address(sub_30144f96Address))
                    call address(sub_30144f96Address).0x82380a12 with:
                         gas gas_remaining wei
                        args sub_abd915d7[address(arg2)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(address(sub_30144f96Address))
                        call address(sub_30144f96Address).0xd21df230 with:
                             gas gas_remaining wei
                            args msg.sender, sub_abd915d7[address(arg2)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                require ext_code.size(arg2)
                                staticcall arg2.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if ext_call.return_data[0] < arg1:
                                        revert with 0, 'ST:3'
                                    else:
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xdd62ed3e with:
                                                gas gas_remaining wei
                                               args msg.sender, this.address
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < arg1:
                                                revert with 0, 'ST:4'
                                            else:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                                                else:
                                                    if not ext_code.size(arg2):
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
                                                        mem[416 len 4] = 0
                                                        call arg2 with:
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg1) << 480, mem[388 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                            else:
                                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                    revert with 0, 
                                                                                32,
                                                                                42,
                                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                mem[402 len 14],
                                                                                0,
                                                                                mem[420 len 4]
                                                                else:
                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                    staticcall address(sub_30144f96Address).0x68198b80 with:
                                                                            gas gas_remaining wei
                                                                           args arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                                                                else:
                                                                                    if not ext_code.size(arg2):
                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                    else:
                                                                                        mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                        call arg2 with:
                                                                                           funct uint32(stor201)
                                                                                             gas gas_remaining wei
                                                                                            args Mask(224, 32, arg1) << 224, mem[520 len 4]
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                            else:
                                                                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                                                                                else:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args address(arg2), arg1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, arg1, ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                            revert with 0, 'ST:6'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                                                                                        else:
                                                                                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                            if not ext_call.success:
                                                                                                if return_data.size:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args address(arg2), arg1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, arg1, ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                            revert with 0, 'ST:6'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        32,
                                                                                                                                                        33,
                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not mem[488]:
                                                                                                        revert with 0, 
                                                                                                                    32,
                                                                                                                    42,
                                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args address(arg2), arg1
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, arg1, ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                        else:
                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                revert with 0, 'ST:6'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            32,
                                                                                                                                                            33,
                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                            mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                    else:
                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args msg.sender
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                            stor151 = 1
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                            else:
                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                call address(sub_30144f96Address).0xf1383b48 with:
                                                                                   value arg1 wei
                                                                                     gas gas_remaining wei
                                                                                    args address(arg2), arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                    staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                            gas gas_remaining wei
                                                                                           args sub_abd915d7[address(arg2)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                        call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, arg1, ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args msg.sender
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                        revert with 0, 'ST:6'
                                                                                                    else:
                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                        staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                gas gas_remaining wei
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                if ext_call.return_data[0]:
                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                        else:
                                                                                                                            require ext_call.return_data[0]
                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                revert with 0, 'ST:7'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                    stor151 = 1
                                                                                                                else:
                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                                    else:
                                                                                                                        require ext_call.return_data[0]
                                                                                                                        if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                            revert with 0, 'ST:7'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args msg.sender
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                stor151 = 1
                                                                        else:
                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if arg1:
                                                                                    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                                                    else:
                                                                                        if ext_call.return_data[0] <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require ext_call.return_data[0]
                                                                                            if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                                                                                revert with 0, 'ST:5'
                                                                                            else:
                                                                                                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                                    if eth.balance(this.address) < 0:
                                                                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                                                                                    else:
                                                                                                        if not ext_code.size(arg2):
                                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                                        else:
                                                                                                            mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                                            call arg2 with:
                                                                                                               funct uint32(stor201)
                                                                                                                 gas gas_remaining wei
                                                                                                                args Mask(224, 32, arg1) << 224, mem[520 len 4]
                                                                                                            if not return_data.size:
                                                                                                                if not ext_call.success:
                                                                                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                                                else:
                                                                                                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:6'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                                            else:
                                                                                                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                if not ext_call.success:
                                                                                                                    if return_data.size:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:6'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            32,
                                                                                                                                                                            33,
                                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                            mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if not mem[488]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[ceil32(return_data.size) + 567 len 22]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(arg2), arg1
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                                                staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args sub_abd915d7[address(arg2)]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:6'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0]:
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                32,
                                                                                                                                                                                33,
                                                                                                                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                                mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                                else:
                                                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                            revert with 0, 'ST:7'
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args msg.sender
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                                stor151 = 1
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                            stor151 = 1
                                                                                                else:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                       value arg1 wei
                                                                                                         gas gas_remaining wei
                                                                                                        args address(arg2), arg1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                            revert with 0, 'ST:6'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                                                                                else:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require ext_call.return_data[0]
                                                                                        if not 0 / ext_call.return_data[0]:
                                                                                            revert with 0, 'ST:5'
                                                                                        else:
                                                                                            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                                if eth.balance(this.address) < 0:
                                                                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                                                                                                else:
                                                                                                    if not ext_code.size(arg2):
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                                        call arg2 with:
                                                                                                           funct uint32(stor201)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg1) << 224, mem[520 len 4]
                                                                                                        if not return_data.size:
                                                                                                            if not ext_call.success:
                                                                                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                                            else:
                                                                                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg2), arg1
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                            revert with 0, 'ST:6'
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                else:
                                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[557 len 31]
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                                            else:
                                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args msg.sender
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                    stor151 = 1
                                                                                                        else:
                                                                                                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg2), arg1
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                            revert with 0, 'ST:6'
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                else:
                                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        32,
                                                                                                                                                                        33,
                                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                                            else:
                                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args msg.sender
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                    stor151 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[488]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:6'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            32,
                                                                                                                                                                            33,
                                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                            mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                            else:
                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                   value arg1 wei
                                                                                                     gas gas_remaining wei
                                                                                                    args address(arg2), arg1
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args sub_abd915d7[address(arg2)]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                        call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args msg.sender
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                        revert with 0, 'ST:6'
                                                                                                                    else:
                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[0]:
                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                                                    else:
                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                        if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                            revert with 0, 'ST:7'
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                   args msg.sender
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                stor151 = 1
                                                        else:
                                                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if not return_data.size:
                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                    staticcall address(sub_30144f96Address).0x68198b80 with:
                                                                            gas gas_remaining wei
                                                                           args arg2
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        if not ext_call.return_data[0]:
                                                                            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                if eth.balance(this.address) < 0:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                38,
                                                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                                                else:
                                                                                    if not ext_code.size(arg2):
                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                    else:
                                                                                        mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                        mem[ceil32(return_data.size) + 549 len 4] = 0
                                                                                        call arg2 with:
                                                                                           funct uint32(stor201)
                                                                                             gas gas_remaining wei
                                                                                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
                                                                                        if not return_data.size:
                                                                                            if not ext_call.success:
                                                                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                            else:
                                                                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                    revert with 0, 
                                                                                                                32,
                                                                                                                42,
                                                                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                mem[ceil32(return_data.size) + 567 len 22]
                                                                                                else:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args address(arg2), arg1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, arg1, ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                            revert with 0, 'ST:6'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        32,
                                                                                                                                                        33,
                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                                                                                        else:
                                                                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                            if not ext_call.success:
                                                                                                if return_data.size:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                            else:
                                                                                                if not return_data.size:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                         gas gas_remaining wei
                                                                                                        args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, arg1, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 
                                                                                                                                    'SafeMath: addition overflow',
                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                    else:
                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                            revert with 0, 
                                                                                                                                        'ST:6',
                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                    revert with 0, 
                                                                                                                                                'SafeMath: addition overflow',
                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        32,
                                                                                                                                                        33,
                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'SafeMath: division by zero',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'ST:7',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                              arg1,
                                                                                                                                                                              ext_call.return_data[0],
                                                                                                                                                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                              msg.sender,
                                                                                                                                                                              sub_abd915d7[address(arg2)],
                                                                                                                                                        stor151 = 1
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 
                                                                                                                                                        'SafeMath: division by zero',
                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'ST:7',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                          arg1,
                                                                                                                                                                          ext_call.return_data[0],
                                                                                                                                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                          msg.sender,
                                                                                                                                                                          sub_abd915d7[address(arg2)],
                                                                                                                                                    stor151 = 1
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not mem[ceil32(return_data.size) + 489]:
                                                                                                        revert with 0, 
                                                                                                                    32,
                                                                                                                    42,
                                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, arg1, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                            revert with 0, 
                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        else:
                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                revert with 0, 
                                                                                                                                            'ST:6',
                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 
                                                                                                                                                    'SafeMath: addition overflow',
                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            32,
                                                                                                                                                            33,
                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'ST:7',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                  arg1,
                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                            stor151 = 1
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'SafeMath: division by zero',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'ST:7',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                              arg1,
                                                                                                                                                                              ext_call.return_data[0],
                                                                                                                                                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                              msg.sender,
                                                                                                                                                                              sub_abd915d7[address(arg2)],
                                                                                                                                                        stor151 = 1
                                                                            else:
                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                call address(sub_30144f96Address).0xf1383b48 with:
                                                                                   value arg1 wei
                                                                                     gas gas_remaining wei
                                                                                    args address(arg2), arg1
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                    staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                            gas gas_remaining wei
                                                                                           args sub_abd915d7[address(arg2)]
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                        call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                             gas gas_remaining wei
                                                                                            args msg.sender, arg1, ext_call.return_data[0]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args msg.sender
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                        revert with 0, 'ST:6'
                                                                                                    else:
                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                        staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                gas gas_remaining wei
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                if ext_call.return_data[0]:
                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    33,
                                                                                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                    mem[ceil32(return_data.size) + 394 len 31]
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                        else:
                                                                                                                            require ext_call.return_data[0]
                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                revert with 0, 'ST:7'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                    stor151 = 1
                                                                                                                else:
                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                                    else:
                                                                                                                        require ext_call.return_data[0]
                                                                                                                        if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                            revert with 0, 'ST:7'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args msg.sender
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                stor151 = 1
                                                                        else:
                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                    gas gas_remaining wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if arg1:
                                                                                    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                                                                                        revert with 0, 
                                                                                                    32,
                                                                                                    33,
                                                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                    mem[ceil32(return_data.size) + 394 len 31]
                                                                                    else:
                                                                                        if ext_call.return_data[0] <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require ext_call.return_data[0]
                                                                                            if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                                                                                revert with 0, 'ST:5'
                                                                                            else:
                                                                                                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                                    if eth.balance(this.address) < 0:
                                                                                                        revert with 0, 
                                                                                                                    32,
                                                                                                                    38,
                                                                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                                                                    else:
                                                                                                        if not ext_code.size(arg2):
                                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                                        else:
                                                                                                            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                                            mem[ceil32(return_data.size) + 549 len 4] = 0
                                                                                                            call arg2 with:
                                                                                                               funct uint32(stor201)
                                                                                                                 gas gas_remaining wei
                                                                                                                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
                                                                                                            if not return_data.size:
                                                                                                                if not ext_call.success:
                                                                                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                                                else:
                                                                                                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:6'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            32,
                                                                                                                                                                            33,
                                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                            mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                                            else:
                                                                                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                if not ext_call.success:
                                                                                                                    if return_data.size:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'ST:6',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'SafeMath: addition overflow',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            32,
                                                                                                                                                                            33,
                                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'ST:7',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                  ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            'SafeMath: division by zero',
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'ST:7',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                              ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                              ext_call.return_data[0],
                                                                                                                                                                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                              msg.sender,
                                                                                                                                                                                              sub_abd915d7[address(arg2)],
                                                                                                                                                                        stor151 = 1
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if not mem[ceil32(return_data.size) + 489]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                                                staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'SafeMath: addition overflow',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'ST:6',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0]:
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                32,
                                                                                                                                                                                33,
                                                                                                                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                                else:
                                                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'SafeMath: division by zero',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                            revert with 0, 
                                                                                                                                                                                        'ST:7',
                                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                      ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                                      ext_call.return_data[0],
                                                                                                                                                                                                      mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                      msg.sender,
                                                                                                                                                                                                      sub_abd915d7[address(arg2)],
                                                                                                                                                                                stor151 = 1
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'ST:7',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                  ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                                            stor151 = 1
                                                                                                else:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                       value arg1 wei
                                                                                                         gas gas_remaining wei
                                                                                                        args address(arg2), arg1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                            revert with 0, 'ST:6'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        32,
                                                                                                                                                        33,
                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                        mem[ceil32(return_data.size) + 394 len 31]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                                                                                else:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require ext_call.return_data[0]
                                                                                        if not 0 / ext_call.return_data[0]:
                                                                                            revert with 0, 'ST:5'
                                                                                        else:
                                                                                            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                                if eth.balance(this.address) < 0:
                                                                                                    revert with 0, 
                                                                                                                32,
                                                                                                                38,
                                                                                                                0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                                                mem[ceil32(return_data.size) + 563 len 26]
                                                                                                else:
                                                                                                    if not ext_code.size(arg2):
                                                                                                        revert with 0, 'Address: call to non-contract'
                                                                                                    else:
                                                                                                        mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                                        mem[ceil32(return_data.size) + 549 len 4] = 0
                                                                                                        call arg2 with:
                                                                                                           funct uint32(stor201)
                                                                                                             gas gas_remaining wei
                                                                                                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
                                                                                                        if not return_data.size:
                                                                                                            if not ext_call.success:
                                                                                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                                            else:
                                                                                                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                                    revert with 0, 
                                                                                                                                32,
                                                                                                                                42,
                                                                                                                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                mem[ceil32(return_data.size) + 567 len 22]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg2), arg1
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                            revert with 0, 'ST:6'
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                else:
                                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        32,
                                                                                                                                                                        33,
                                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                        mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                                            else:
                                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args msg.sender
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                    stor151 = 1
                                                                                                        else:
                                                                                                            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                            if not ext_call.success:
                                                                                                                if return_data.size:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                                                            else:
                                                                                                                if not return_data.size:
                                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 
                                                                                                                                                    'SafeMath: addition overflow',
                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    else:
                                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        'ST:6',
                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                   args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'SafeMath: addition overflow',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        32,
                                                                                                                                                                        33,
                                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            'SafeMath: division by zero',
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'ST:7',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                              0 / ext_call.return_data[0],
                                                                                                                                                                                              ext_call.return_data[0],
                                                                                                                                                                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                              msg.sender,
                                                                                                                                                                                              sub_abd915d7[address(arg2)],
                                                                                                                                                                        stor151 = 1
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        'SafeMath: division by zero',
                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        else:
                                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            'ST:7',
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                            else:
                                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                       args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                else:
                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                    emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                          0 / ext_call.return_data[0],
                                                                                                                                                                                          ext_call.return_data[0],
                                                                                                                                                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                          msg.sender,
                                                                                                                                                                                          sub_abd915d7[address(arg2)],
                                                                                                                                                                    stor151 = 1
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if not mem[ceil32(return_data.size) + 489]:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'ST:6',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'SafeMath: addition overflow',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            32,
                                                                                                                                                                            33,
                                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'ST:7',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                  0 / ext_call.return_data[0],
                                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            'SafeMath: division by zero',
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'ST:7',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                              0 / ext_call.return_data[0],
                                                                                                                                                                                              ext_call.return_data[0],
                                                                                                                                                                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                              msg.sender,
                                                                                                                                                                                              sub_abd915d7[address(arg2)],
                                                                                                                                                                        stor151 = 1
                                                                                            else:
                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                   value arg1 wei
                                                                                                     gas gas_remaining wei
                                                                                                    args address(arg2), arg1
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args sub_abd915d7[address(arg2)]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                        call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                             gas gas_remaining wei
                                                                                                            args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args msg.sender
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                        revert with 0, 'ST:6'
                                                                                                                    else:
                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                gas gas_remaining wei
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[0]:
                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                        revert with 0, 
                                                                                                                                                    32,
                                                                                                                                                    33,
                                                                                                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                    mem[ceil32(return_data.size) + 394 len 31]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                                                    else:
                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                        if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                            revert with 0, 'ST:7'
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                   args msg.sender
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                stor151 = 1
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[324]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[ceil32(return_data.size) + 403 len 22]
                                                                    else:
                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                        staticcall address(sub_30144f96Address).0x68198b80 with:
                                                                                gas gas_remaining wei
                                                                               args arg2
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if not ext_call.return_data[0]:
                                                                                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                    if eth.balance(this.address) < 0:
                                                                                        revert with 0, 
                                                                                                    32,
                                                                                                    38,
                                                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                                                    else:
                                                                                        if not ext_code.size(arg2):
                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                        else:
                                                                                            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                            mem[ceil32(return_data.size) + 549 len 4] = 0
                                                                                            call arg2 with:
                                                                                               funct uint32(stor201)
                                                                                                 gas gas_remaining wei
                                                                                                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
                                                                                            if not return_data.size:
                                                                                                if not ext_call.success:
                                                                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                                else:
                                                                                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                        revert with 0, 
                                                                                                                    32,
                                                                                                                    42,
                                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args address(arg2), arg1
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, arg1, ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                        else:
                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                revert with 0, 'ST:6'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            32,
                                                                                                                                                            33,
                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                            mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                    else:
                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args msg.sender
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                            stor151 = 1
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                            else:
                                                                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                if not ext_call.success:
                                                                                                    if return_data.size:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                else:
                                                                                                    if not return_data.size:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                             gas gas_remaining wei
                                                                                                            args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, arg1, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                            revert with 0, 
                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        else:
                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                revert with 0, 
                                                                                                                                            'ST:6',
                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 
                                                                                                                                                    'SafeMath: addition overflow',
                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            32,
                                                                                                                                                            33,
                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'ST:7',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                  arg1,
                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                            stor151 = 1
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'SafeMath: division by zero',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'ST:7',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                              arg1,
                                                                                                                                                                              ext_call.return_data[0],
                                                                                                                                                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                              msg.sender,
                                                                                                                                                                              sub_abd915d7[address(arg2)],
                                                                                                                                                        stor151 = 1
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not mem[ceil32(return_data.size) + 489]:
                                                                                                            revert with 0, 
                                                                                                                        32,
                                                                                                                        42,
                                                                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                                                        else:
                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                            call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                                staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                         gas gas_remaining wei
                                                                                                                        args msg.sender, arg1, ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                revert with 0, 
                                                                                                                                            'SafeMath: addition overflow',
                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            else:
                                                                                                                                if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                    revert with 0, 
                                                                                                                                                'ST:6',
                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0]:
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                32,
                                                                                                                                                                33,
                                                                                                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                else:
                                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'SafeMath: division by zero',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        'ST:7',
                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        else:
                                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                   args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                            else:
                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                      arg1,
                                                                                                                                                                                      ext_call.return_data[0],
                                                                                                                                                                                      mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                      msg.sender,
                                                                                                                                                                                      sub_abd915d7[address(arg2)],
                                                                                                                                                                stor151 = 1
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                    if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'ST:7',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                  arg1,
                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                            stor151 = 1
                                                                                else:
                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                       value arg1 wei
                                                                                         gas gas_remaining wei
                                                                                        args address(arg2), arg1
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                gas gas_remaining wei
                                                                                               args sub_abd915d7[address(arg2)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, arg1, ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args msg.sender
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                            revert with 0, 'ST:6'
                                                                                                        else:
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                    gas gas_remaining wei
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    if ext_call.return_data[0]:
                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 394 len 31]
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                            else:
                                                                                                                                require ext_call.return_data[0]
                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                        stor151 = 1
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                        else:
                                                                                                                            require ext_call.return_data[0]
                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                revert with 0, 'ST:7'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                    stor151 = 1
                                                                            else:
                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                        gas gas_remaining wei
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if arg1:
                                                                                        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                                                                                            revert with 0, 
                                                                                                        32,
                                                                                                        33,
                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                        mem[ceil32(return_data.size) + 394 len 31]
                                                                                        else:
                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                            else:
                                                                                                require ext_call.return_data[0]
                                                                                                if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                                                                                    revert with 0, 'ST:5'
                                                                                                else:
                                                                                                    if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                                        if eth.balance(this.address) < 0:
                                                                                                            revert with 0, 
                                                                                                                        32,
                                                                                                                        38,
                                                                                                                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                                                        mem[ceil32(return_data.size) + 563 len 26]
                                                                                                        else:
                                                                                                            if not ext_code.size(arg2):
                                                                                                                revert with 0, 'Address: call to non-contract'
                                                                                                            else:
                                                                                                                mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                                                mem[ceil32(return_data.size) + 549 len 4] = 0
                                                                                                                call arg2 with:
                                                                                                                   funct uint32(stor201)
                                                                                                                     gas gas_remaining wei
                                                                                                                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
                                                                                                                if not return_data.size:
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                                                    else:
                                                                                                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[ceil32(return_data.size) + 567 len 22]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(arg2), arg1
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                                                staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args sub_abd915d7[address(arg2)]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                                                            else:
                                                                                                                                                if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:6'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0]:
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                32,
                                                                                                                                                                                33,
                                                                                                                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                                mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                                else:
                                                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                            revert with 0, 'ST:7'
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args msg.sender
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                                stor151 = 1
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                            stor151 = 1
                                                                                                                else:
                                                                                                                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                    if not ext_call.success:
                                                                                                                        if return_data.size:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                    else:
                                                                                                                        if not return_data.size:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                                                staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'SafeMath: addition overflow',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'ST:6',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0]:
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                32,
                                                                                                                                                                                33,
                                                                                                                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                                else:
                                                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'SafeMath: division by zero',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                            revert with 0, 
                                                                                                                                                                                        'ST:7',
                                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                      ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                                      ext_call.return_data[0],
                                                                                                                                                                                                      mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                      msg.sender,
                                                                                                                                                                                                      sub_abd915d7[address(arg2)],
                                                                                                                                                                                stor151 = 1
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'ST:7',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                  ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                                            stor151 = 1
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            if not mem[ceil32(return_data.size) + 489]:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            42,
                                                                                                                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                                                call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                                                    staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                             gas gas_remaining wei
                                                                                                                                            args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                   args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'SafeMath: addition overflow',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'ST:6',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            'SafeMath: addition overflow',
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0]:
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    32,
                                                                                                                                                                                    33,
                                                                                                                                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                                    else:
                                                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                                                            revert with 0, 
                                                                                                                                                                                        'SafeMath: division by zero',
                                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                                revert with 0, 
                                                                                                                                                                                            'ST:7',
                                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                            else:
                                                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                                                       args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                                if not ext_call.success:
                                                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                                else:
                                                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                                                    emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                          ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                                          ext_call.return_data[0],
                                                                                                                                                                                                          mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                          msg.sender,
                                                                                                                                                                                                          sub_abd915d7[address(arg2)],
                                                                                                                                                                                    stor151 = 1
                                                                                                                                                                else:
                                                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'SafeMath: division by zero',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                                                        if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                            revert with 0, 
                                                                                                                                                                                        'ST:7',
                                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                      ext_call.return_data[0] * arg1 / ext_call.return_data[0],
                                                                                                                                                                                                      ext_call.return_data[0],
                                                                                                                                                                                                      mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                      msg.sender,
                                                                                                                                                                                                      sub_abd915d7[address(arg2)],
                                                                                                                                                                                stor151 = 1
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                           value arg1 wei
                                                                                                             gas gas_remaining wei
                                                                                                            args address(arg2), arg1
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                     gas gas_remaining wei
                                                                                                                    args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                        else:
                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                revert with 0, 'ST:6'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            32,
                                                                                                                                                            33,
                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                            mem[ceil32(return_data.size) + 394 len 31]
                                                                                                                                            else:
                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                else:
                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                    else:
                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                               args msg.sender
                                                                                                                                                        if not ext_call.success:
                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                        else:
                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                            stor151 = 1
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                    else:
                                                                                        if ext_call.return_data[0] <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require ext_call.return_data[0]
                                                                                            if not 0 / ext_call.return_data[0]:
                                                                                                revert with 0, 'ST:5'
                                                                                            else:
                                                                                                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                                                    if eth.balance(this.address) < 0:
                                                                                                        revert with 0, 
                                                                                                                    32,
                                                                                                                    38,
                                                                                                                    0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                                                                                    mem[ceil32(return_data.size) + 563 len 26]
                                                                                                    else:
                                                                                                        if not ext_code.size(arg2):
                                                                                                            revert with 0, 'Address: call to non-contract'
                                                                                                        else:
                                                                                                            mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                                                            mem[ceil32(return_data.size) + 549 len 4] = 0
                                                                                                            call arg2 with:
                                                                                                               funct uint32(stor201)
                                                                                                                 gas gas_remaining wei
                                                                                                                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
                                                                                                            if not return_data.size:
                                                                                                                if not ext_call.success:
                                                                                                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                                                                                                else:
                                                                                                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                                                                                        revert with 0, 
                                                                                                                                    32,
                                                                                                                                    42,
                                                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                    mem[ceil32(return_data.size) + 567 len 22]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:6'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            32,
                                                                                                                                                                            33,
                                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                            mem[ceil32(return_data.size) + 558 len 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                                        stor151 = 1
                                                                                                            else:
                                                                                                                mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                                                if not ext_call.success:
                                                                                                                    if return_data.size:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                                                else:
                                                                                                                    if not return_data.size:
                                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                             gas gas_remaining wei
                                                                                                                            args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                     gas gas_remaining wei
                                                                                                                                    args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        else:
                                                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'ST:6',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                        revert with 0, 
                                                                                                                                                                    'SafeMath: addition overflow',
                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                    else:
                                                                                                                                                        if ext_call.return_data[0]:
                                                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            32,
                                                                                                                                                                            33,
                                                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'ST:7',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                  0 / ext_call.return_data[0],
                                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                                            stor151 = 1
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                                revert with 0, 
                                                                                                                                                                            'SafeMath: division by zero',
                                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                            else:
                                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'ST:7',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                                           args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    if not ext_call.success:
                                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                    else:
                                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                                        emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                              0 / ext_call.return_data[0],
                                                                                                                                                                                              ext_call.return_data[0],
                                                                                                                                                                                              mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                              msg.sender,
                                                                                                                                                                                              sub_abd915d7[address(arg2)],
                                                                                                                                                                        stor151 = 1
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if not mem[ceil32(return_data.size) + 489]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        42,
                                                                                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                                                            call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                                                 gas gas_remaining wei
                                                                                                                                args address(arg2), arg1, mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                                                staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args sub_abd915d7[address(arg2)], mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                                         gas gas_remaining wei
                                                                                                                                        args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0], mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                revert with 0, 
                                                                                                                                                            'SafeMath: addition overflow',
                                                                                                                                                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                            else:
                                                                                                                                                if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                                                    revert with 0, 
                                                                                                                                                                'ST:6',
                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x18160ddd00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                                            revert with 0, 
                                                                                                                                                                        'SafeMath: addition overflow',
                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                        else:
                                                                                                                                                            if ext_call.return_data[0]:
                                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                32,
                                                                                                                                                                                33,
                                                                                                                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 559 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                                                                                                                                                                else:
                                                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'SafeMath: division by zero',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                            revert with 0, 
                                                                                                                                                                                        'ST:7',
                                                                                                                                                                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        else:
                                                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                                                   args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                            if not ext_call.success:
                                                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                            else:
                                                                                                                                                                                require return_data.size >= 32
                                                                                                                                                                                emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                      0 / ext_call.return_data[0],
                                                                                                                                                                                                      ext_call.return_data[0],
                                                                                                                                                                                                      mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                      msg.sender,
                                                                                                                                                                                                      sub_abd915d7[address(arg2)],
                                                                                                                                                                                stor151 = 1
                                                                                                                                                            else:
                                                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                                                    revert with 0, 
                                                                                                                                                                                'SafeMath: division by zero',
                                                                                                                                                                                mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                else:
                                                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                                                    if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                                        revert with 0, 
                                                                                                                                                                                    'ST:7',
                                                                                                                                                                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                    else:
                                                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                                                gas gas_remaining wei
                                                                                                                                                                               args msg.sender, mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                                                                                                                                                        if not ext_call.success:
                                                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                                        else:
                                                                                                                                                                            require return_data.size >= 32
                                                                                                                                                                            emit StakeTokensEvent(address rg1, address rg2, uint256 rg3, uint256 rg4):
                                                                                                                                                                                                  0 / ext_call.return_data[0],
                                                                                                                                                                                                  ext_call.return_data[0],
                                                                                                                                                                                                  mem[(2 * ceil32(return_data.size)) + 522 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                                                                                                                                                                  msg.sender,
                                                                                                                                                                                                  sub_abd915d7[address(arg2)],
                                                                                                                                                                            stor151 = 1
                                                                                                else:
                                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                       value arg1 wei
                                                                                                         gas gas_remaining wei
                                                                                                        args address(arg2), arg1
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args sub_abd915d7[address(arg2)]
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                                 gas gas_remaining wei
                                                                                                                args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                            revert with 0, 'ST:6'
                                                                                                                        else:
                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 32
                                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0]:
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                            revert with 0, 
                                                                                                                                                        32,
                                                                                                                                                        33,
                                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                        mem[ceil32(return_data.size) + 394 len 31]
                                                                                                                                        else:
                                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                                            else:
                                                                                                                                                require ext_call.return_data[0]
                                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                                else:
                                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                            gas gas_remaining wei
                                                                                                                                                           args msg.sender
                                                                                                                                                    if not ext_call.success:
                                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                    else:
                                                                                                                                                        require return_data.size >= 32
                                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                        stor151 = 1
                                                                                                                                    else:
                                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                                        else:
                                                                                                                                            require ext_call.return_data[0]
                                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                                revert with 0, 'ST:7'
                                                                                                                                            else:
                                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                        gas gas_remaining wei
                                                                                                                                                       args msg.sender
                                                                                                                                                if not ext_call.success:
                                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                                else:
                                                                                                                                                    require return_data.size >= 32
                                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                    stor151 = 1
                            else:
                                if arg1 > msg.value:
                                    revert with 0, 'ST:2'
                                else:
                                    require ext_code.size(address(sub_30144f96Address))
                                    staticcall address(sub_30144f96Address).0x68198b80 with:
                                            gas gas_remaining wei
                                           args arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                if eth.balance(this.address) < 0:
                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                else:
                                                    if not ext_code.size(arg2):
                                                        revert with 0, 'Address: call to non-contract'
                                                    else:
                                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                        call arg2 with:
                                                           funct uint32(stor201)
                                                             gas gas_remaining wei
                                                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                                                        if not return_data.size:
                                                            if not ext_call.success:
                                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), arg1
                                                            else:
                                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor201):
                                                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                                else:
                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), arg1
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                gas gas_remaining wei
                                                                               args sub_abd915d7[address(arg2)]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg1, ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                            revert with 0, 'ST:6'
                                                                                        else:
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                    gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if ext_call.return_data[0]:
                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                            else:
                                                                                                                require ext_call.return_data[0]
                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                    revert with 0, 'ST:7'
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                        stor151 = 1
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require ext_call.return_data[0]
                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                revert with 0, 'ST:7'
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                    stor151 = 1
                                                        else:
                                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            if not ext_call.success:
                                                                if return_data.size:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                            else:
                                                                if not return_data.size:
                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                         gas gas_remaining wei
                                                                        args address(arg2), arg1
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                gas gas_remaining wei
                                                                               args sub_abd915d7[address(arg2)]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, arg1, ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                            revert with 0, 'ST:6'
                                                                                        else:
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                    gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if ext_call.return_data[0]:
                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                            revert with 0, 
                                                                                                                        32,
                                                                                                                        33,
                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                            else:
                                                                                                                require ext_call.return_data[0]
                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                    revert with 0, 'ST:7'
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                        stor151 = 1
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require ext_call.return_data[0]
                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                revert with 0, 'ST:7'
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                    stor151 = 1
                                                                else:
                                                                    require return_data.size >= 32
                                                                    if not mem[292]:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    42,
                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                                    else:
                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                             gas gas_remaining wei
                                                                            args address(arg2), arg1
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                    gas gas_remaining wei
                                                                                   args sub_abd915d7[address(arg2)]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, arg1, ext_call.return_data[0]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                            gas gas_remaining wei
                                                                                           args msg.sender
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                        else:
                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                revert with 0, 'ST:6'
                                                                                            else:
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                        gas gas_remaining wei
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if ext_call.return_data[0]:
                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                revert with 0, 
                                                                                                                            32,
                                                                                                                            33,
                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                                                                            else:
                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                else:
                                                                                                                    require ext_call.return_data[0]
                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                        revert with 0, 'ST:7'
                                                                                                                    else:
                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args msg.sender
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 32
                                                                                                                            emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                            stor151 = 1
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                            else:
                                                                                                                require ext_call.return_data[0]
                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                    revert with 0, 'ST:7'
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                        stor151 = 1
                                            else:
                                                require ext_code.size(address(sub_30144f96Address))
                                                call address(sub_30144f96Address).0xf1383b48 with:
                                                   value arg1 wei
                                                     gas gas_remaining wei
                                                    args address(arg2), arg1
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(address(sub_30144f96Address))
                                                    staticcall address(sub_30144f96Address).0x83853109 with:
                                                            gas gas_remaining wei
                                                           args sub_abd915d7[address(arg2)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                        call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                             gas gas_remaining wei
                                                            args msg.sender, arg1, ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                    gas gas_remaining wei
                                                                   args msg.sender
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                        revert with 0, 'ST:6'
                                                                    else:
                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                        staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                gas gas_remaining wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                            else:
                                                                                if ext_call.return_data[0]:
                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                    32,
                                                                                                    33,
                                                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                    mem[197 len 31]
                                                                                    else:
                                                                                        if ext_call.return_data[0] <= 0:
                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                        else:
                                                                                            require ext_call.return_data[0]
                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                revert with 0, 'ST:7'
                                                                                            else:
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args msg.sender
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                    stor151 = 1
                                                                                else:
                                                                                    if ext_call.return_data[0] <= 0:
                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                    else:
                                                                                        require ext_call.return_data[0]
                                                                                        if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                            revert with 0, 'ST:7'
                                                                                        else:
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args msg.sender
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                emit StakeTokensEvent(arg1, ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                stor151 = 1
                                        else:
                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if arg1:
                                                    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    else:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if not ext_call.return_data[0] * arg1 / ext_call.return_data[0]:
                                                                revert with 0, 'ST:5'
                                                            else:
                                                                if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                    if eth.balance(this.address) < 0:
                                                                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                                    else:
                                                                        if not ext_code.size(arg2):
                                                                            revert with 0, 'Address: call to non-contract'
                                                                        else:
                                                                            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                            call arg2 with:
                                                                               funct uint32(stor201)
                                                                                 gas gas_remaining wei
                                                                                args Mask(224, 32, arg1) << 224, mem[324 len 4]
                                                                            if not return_data.size:
                                                                                if not ext_call.success:
                                                                                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), arg1
                                                                                else:
                                                                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, stor201):
                                                                                        revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                                                    else:
                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                             gas gas_remaining wei
                                                                                            args address(arg2), arg1
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args msg.sender
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                revert with 0, 'ST:6'
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                        gas gas_remaining wei
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0]:
                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                else:
                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                            stor151 = 1
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                            else:
                                                                                                                                require ext_call.return_data[0]
                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                        stor151 = 1
                                                                            else:
                                                                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                                if not ext_call.success:
                                                                                    if return_data.size:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        revert with 0, 'SafeERC20: low-level call failed'
                                                                                else:
                                                                                    if not return_data.size:
                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                             gas gas_remaining wei
                                                                                            args address(arg2), arg1
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args msg.sender
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                revert with 0, 'ST:6'
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                        gas gas_remaining wei
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0]:
                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                else:
                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                            stor151 = 1
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                            else:
                                                                                                                                require ext_call.return_data[0]
                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                        stor151 = 1
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not mem[292]:
                                                                                            revert with 0, 
                                                                                                        32,
                                                                                                        42,
                                                                                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                        mem[ceil32(return_data.size) + 371 len 22]
                                                                                        else:
                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                            call address(sub_30144f96Address).0xf1383b48 with:
                                                                                                 gas gas_remaining wei
                                                                                                args address(arg2), arg1
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(address(sub_30144f96Address))
                                                                                                staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args sub_abd915d7[address(arg2)]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                    call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                         gas gas_remaining wei
                                                                                                        args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args msg.sender
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                                            else:
                                                                                                                if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                    revert with 0, 'ST:6'
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                            gas gas_remaining wei
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[0]:
                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                    revert with 0, 
                                                                                                                                                32,
                                                                                                                                                33,
                                                                                                                                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                                mem[ceil32(return_data.size) + 362 len 31]
                                                                                                                                else:
                                                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                                                    else:
                                                                                                                                        require ext_call.return_data[0]
                                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                            revert with 0, 'ST:7'
                                                                                                                                        else:
                                                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                    gas gas_remaining wei
                                                                                                                                                   args msg.sender
                                                                                                                                            if not ext_call.success:
                                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                            else:
                                                                                                                                                require return_data.size >= 32
                                                                                                                                                emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                                stor151 = 1
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                else:
                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                    if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                            stor151 = 1
                                                                else:
                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                       value arg1 wei
                                                                         gas gas_remaining wei
                                                                        args address(arg2), arg1
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                gas gas_remaining wei
                                                                               args sub_abd915d7[address(arg2)]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                        gas gas_remaining wei
                                                                                       args msg.sender
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                    else:
                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                            revert with 0, 'ST:6'
                                                                                        else:
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                    gas gas_remaining wei
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                else:
                                                                                                    if ext_call.return_data[0]:
                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                        32,
                                                                                                                        33,
                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                        mem[197 len 31]
                                                                                                        else:
                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                            else:
                                                                                                                require ext_call.return_data[0]
                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                    revert with 0, 'ST:7'
                                                                                                                else:
                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args msg.sender
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 32
                                                                                                                        emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                        stor151 = 1
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require ext_call.return_data[0]
                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                revert with 0, 'ST:7'
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    emit StakeTokensEvent(ext_call.return_data[0] * arg1 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                    stor151 = 1
                                                else:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if not 0 / ext_call.return_data[0]:
                                                            revert with 0, 'ST:5'
                                                        else:
                                                            if arg2 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                                                                if eth.balance(this.address) < 0:
                                                                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                                                                else:
                                                                    if not ext_code.size(arg2):
                                                                        revert with 0, 'Address: call to non-contract'
                                                                    else:
                                                                        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), Mask(224, 32, arg1) >> 32
                                                                        call arg2 with:
                                                                           funct uint32(stor201)
                                                                             gas gas_remaining wei
                                                                            args Mask(224, 32, arg1) << 224, mem[324 len 4]
                                                                        if not return_data.size:
                                                                            if not ext_call.success:
                                                                                revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor201), uint32(stor201), arg1
                                                                            else:
                                                                                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor201):
                                                                                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                                                                else:
                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                         gas gas_remaining wei
                                                                                        args address(arg2), arg1
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                gas gas_remaining wei
                                                                                               args sub_abd915d7[address(arg2)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args msg.sender
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                            revert with 0, 'ST:6'
                                                                                                        else:
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                    gas gas_remaining wei
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    if ext_call.return_data[0]:
                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                            else:
                                                                                                                                require ext_call.return_data[0]
                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                        stor151 = 1
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                        else:
                                                                                                                            require ext_call.return_data[0]
                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                revert with 0, 'ST:7'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                    stor151 = 1
                                                                        else:
                                                                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                                            if not ext_call.success:
                                                                                if return_data.size:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    revert with 0, 'SafeERC20: low-level call failed'
                                                                            else:
                                                                                if not return_data.size:
                                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                                    call address(sub_30144f96Address).0xf1383b48 with:
                                                                                         gas gas_remaining wei
                                                                                        args address(arg2), arg1
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                        staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                gas gas_remaining wei
                                                                                               args sub_abd915d7[address(arg2)]
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                            call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                 gas gas_remaining wei
                                                                                                args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args msg.sender
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                    else:
                                                                                                        if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                            revert with 0, 'ST:6'
                                                                                                        else:
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                    gas gas_remaining wei
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                                                else:
                                                                                                                    if ext_call.return_data[0]:
                                                                                                                        if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                            revert with 0, 
                                                                                                                                        32,
                                                                                                                                        33,
                                                                                                                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                        mem[ceil32(return_data.size) + 362 len 31]
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                            else:
                                                                                                                                require ext_call.return_data[0]
                                                                                                                                if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                        stor151 = 1
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                                        else:
                                                                                                                            require ext_call.return_data[0]
                                                                                                                            if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                revert with 0, 'ST:7'
                                                                                                                            else:
                                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args msg.sender
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 32
                                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                    stor151 = 1
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not mem[292]:
                                                                                        revert with 0, 
                                                                                                    32,
                                                                                                    42,
                                                                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                                                    mem[ceil32(return_data.size) + 371 len 22]
                                                                                    else:
                                                                                        require ext_code.size(address(sub_30144f96Address))
                                                                                        call address(sub_30144f96Address).0xf1383b48 with:
                                                                                             gas gas_remaining wei
                                                                                            args address(arg2), arg1
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require ext_code.size(address(sub_30144f96Address))
                                                                                            staticcall address(sub_30144f96Address).0x83853109 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args sub_abd915d7[address(arg2)]
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                                                     gas gas_remaining wei
                                                                                                    args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args msg.sender
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                                                        else:
                                                                                                            if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                                                revert with 0, 'ST:6'
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                                        gas gas_remaining wei
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                                                                    else:
                                                                                                                        if ext_call.return_data[0]:
                                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                                                revert with 0, 
                                                                                                                                            32,
                                                                                                                                            33,
                                                                                                                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                                            mem[ceil32(return_data.size) + 362 len 31]
                                                                                                                            else:
                                                                                                                                if ext_call.return_data[0] <= 0:
                                                                                                                                    revert with 0, 'SafeMath: division by zero'
                                                                                                                                else:
                                                                                                                                    require ext_call.return_data[0]
                                                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                        revert with 0, 'ST:7'
                                                                                                                                    else:
                                                                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                        staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                                gas gas_remaining wei
                                                                                                                                               args msg.sender
                                                                                                                                        if not ext_call.success:
                                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                        else:
                                                                                                                                            require return_data.size >= 32
                                                                                                                                            emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                            stor151 = 1
                                                                                                                        else:
                                                                                                                            if ext_call.return_data[0] <= 0:
                                                                                                                                revert with 0, 'SafeMath: division by zero'
                                                                                                                            else:
                                                                                                                                require ext_call.return_data[0]
                                                                                                                                if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                                    revert with 0, 'ST:7'
                                                                                                                                else:
                                                                                                                                    require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                                    staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                                            gas gas_remaining wei
                                                                                                                                           args msg.sender
                                                                                                                                    if not ext_call.success:
                                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                    else:
                                                                                                                                        require return_data.size >= 32
                                                                                                                                        emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                                        stor151 = 1
                                                            else:
                                                                require ext_code.size(address(sub_30144f96Address))
                                                                call address(sub_30144f96Address).0xf1383b48 with:
                                                                   value arg1 wei
                                                                     gas gas_remaining wei
                                                                    args address(arg2), arg1
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(address(sub_30144f96Address))
                                                                    staticcall address(sub_30144f96Address).0x83853109 with:
                                                                            gas gas_remaining wei
                                                                           args sub_abd915d7[address(arg2)]
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                        call sub_abd915d7[address(arg2)].mint(address rg1, uint256 rg2, uint256 rg3) with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0 / ext_call.return_data[0], ext_call.return_data[0]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                    gas gas_remaining wei
                                                                                   args msg.sender
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                                else:
                                                                                    if arg1 + ext_call.return_data[0] > sub_90323f87[address(arg2)]:
                                                                                        revert with 0, 'ST:6'
                                                                                    else:
                                                                                        require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                        staticcall sub_abd915d7[address(arg2)].0x18160ddd with:
                                                                                                gas gas_remaining wei
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if arg1 + ext_call.return_data[0] < ext_call.return_data[0]:
                                                                                                revert with 0, 'SafeMath: addition overflow'
                                                                                            else:
                                                                                                if ext_call.return_data[0]:
                                                                                                    if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg1 + ext_call.return_data[0]:
                                                                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                                                                    32,
                                                                                                                    33,
                                                                                                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                                    mem[197 len 31]
                                                                                                    else:
                                                                                                        if ext_call.return_data[0] <= 0:
                                                                                                            revert with 0, 'SafeMath: division by zero'
                                                                                                        else:
                                                                                                            require ext_call.return_data[0]
                                                                                                            if (arg1 * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                                revert with 0, 'ST:7'
                                                                                                            else:
                                                                                                                require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                                staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args msg.sender
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 32
                                                                                                                    emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                    stor151 = 1
                                                                                                else:
                                                                                                    if ext_call.return_data[0] <= 0:
                                                                                                        revert with 0, 'SafeMath: division by zero'
                                                                                                    else:
                                                                                                        require ext_call.return_data[0]
                                                                                                        if 0 / ext_call.return_data[0] > sub_a651cd25[address(arg2)]:
                                                                                                            revert with 0, 'ST:7'
                                                                                                        else:
                                                                                                            require ext_code.size(sub_abd915d7[address(arg2)])
                                                                                                            staticcall sub_abd915d7[address(arg2)].0x70a08231 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args msg.sender
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 32
                                                                                                                emit StakeTokensEvent(0 / ext_call.return_data[0], ext_call.return_data[0], msg.sender, sub_abd915d7[address(arg2)]);
                                                                                                                stor151 = 1
}



}
