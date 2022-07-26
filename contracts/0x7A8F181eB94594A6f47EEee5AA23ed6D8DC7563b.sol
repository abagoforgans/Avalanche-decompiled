contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address factoryAddress; offset 16
mapping of uint256 sub_9d7390eb;
mapping of struct sub_4ae7f09d;

function sub_4ae7f09d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(sub_4ae7f09d[arg1][arg2].field_0), 
           sub_4ae7f09d[arg1][arg2].field_0,
           sub_4ae7f09d[arg1][arg2].field_256,
           sub_4ae7f09d[arg1][arg2].field_512,
           sub_4ae7f09d[arg1][arg2].field_768,
           sub_4ae7f09d[arg1][arg2].field_1024,
           sub_4ae7f09d[arg1][arg2].field_1280
}

function sub_9d7390eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9d7390eb[arg1]
}

function factory() payable {
    return factoryAddress
}

function _fallback() payable {
    revert
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if uint8(stor0.field_8):
        factoryAddress = arg1
    else:
        uint16(stor0.field_0) = 257
        factoryAddress = arg1
        uint8(stor0.field_8) = 0
}

function sub_32349ff7(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.containsDao(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PayrollModule: only for DAOs'
    if not sub_4ae7f09d[msg.sender][arg1].field_0:
        revert with 0, 'PayrollModule: Payroll is not active'
    sub_4ae7f09d[msg.sender][arg1].field_1024 = arg2
    emit 0xbeb6fda1: arg2, arg1
}

function sub_8cb743ce(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.containsDao(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PayrollModule: only for DAOs'
    if not sub_4ae7f09d[msg.sender][arg1].field_0:
        revert with 0, 'PayrollModule: Payroll is not active'
    if block.timestamp < sub_4ae7f09d[msg.sender][arg1].field_512:
        sub_4ae7f09d[msg.sender][arg1].field_512 = block.timestamp
    sub_4ae7f09d[msg.sender][arg1].field_0 = 0
    emit 0x26e88c30: arg1
}

function sub_1bb4c4c5(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg4 == address(arg4)
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.containsDao(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PayrollModule: only for DAOs'
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_0 = 1
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_8 = address(arg1)
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_168 = 0
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_256 = arg2
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_512 = arg3
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_768 = address(arg4)
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_1024 = arg5
    sub_4ae7f09d[msg.sender][stor1[msg.sender]].field_1280 = arg2
    emit 0x911b364c: arg2, arg3, address(arg4), arg5, sub_9d7390eb[msg.sender], msg.sender, address(arg1)
    if sub_9d7390eb[msg.sender] == -1:
        revert with 0, 17
    sub_9d7390eb[msg.sender]++
}

function sub_28003f1e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(factoryAddress)
    staticcall factoryAddress.containsDao(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'PayrollModule: only for DAOs'
    if not sub_4ae7f09d[address(arg1)][arg2].field_8:
        revert with 0, 'PayrollModule: Unknown recipient'
    if block.timestamp < sub_4ae7f09d[address(arg1)][arg2].field_512:
        if block.timestamp < sub_4ae7f09d[address(arg1)][arg2].field_1280:
            revert with 0, 17
        if sub_4ae7f09d[address(arg1)][arg2].field_1024 and block.timestamp - sub_4ae7f09d[address(arg1)][arg2].field_1280 > -1 / sub_4ae7f09d[address(arg1)][arg2].field_1024:
            revert with 0, 17
        sub_4ae7f09d[address(arg1)][arg2].field_1280 = block.timestamp
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = sub_4ae7f09d[address(arg1)][arg2].field_8
        mem[ceil32(return_data.size) + 196] = (block.timestamp * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024)
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_4ae7f09d[address(arg1)][arg2].field_768):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg1) << 64, 0, sub_4ae7f09d[address(arg1)][arg2].field_0, (block.timestamp * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), 0
        mem[ceil32(return_data.size) + 392] = 0
        call sub_4ae7f09d[address(arg1)][arg2].field_768 with:
           funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), address(arg1) << 64, 0, sub_4ae7f09d[address(arg1)][arg2].field_0, (block.timestamp * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), address(arg1) << 64, 0, sub_4ae7f09d[address(arg1)][arg2].field_0, (block.timestamp * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x745869c8: sub_4ae7f09d[address(arg1)][arg2].field_768, (block.timestamp * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), block.timestamp, arg2, address(arg1), sub_4ae7f09d[address(arg1)][arg2].field_8
    else:
        if sub_4ae7f09d[address(arg1)][arg2].field_512 < sub_4ae7f09d[address(arg1)][arg2].field_1280:
            revert with 0, 17
        if sub_4ae7f09d[address(arg1)][arg2].field_1024 and sub_4ae7f09d[address(arg1)][arg2].field_512 - sub_4ae7f09d[address(arg1)][arg2].field_1280 > -1 / sub_4ae7f09d[address(arg1)][arg2].field_1024:
            revert with 0, 17
        sub_4ae7f09d[address(arg1)][arg2].field_1280 = sub_4ae7f09d[address(arg1)][arg2].field_512
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = sub_4ae7f09d[address(arg1)][arg2].field_8
        mem[ceil32(return_data.size) + 196] = (sub_4ae7f09d[address(arg1)][arg2].field_512 * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024)
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_4ae7f09d[address(arg1)][arg2].field_768):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), address(arg1) << 64, 0, sub_4ae7f09d[address(arg1)][arg2].field_0, (sub_4ae7f09d[address(arg1)][arg2].field_512 * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), 0
        mem[ceil32(return_data.size) + 392] = 0
        call sub_4ae7f09d[address(arg1)][arg2].field_768 with:
           funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), address(arg1) << 64, 0, sub_4ae7f09d[address(arg1)][arg2].field_0, (sub_4ae7f09d[address(arg1)][arg2].field_512 * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), address(arg1) << 64, 0, sub_4ae7f09d[address(arg1)][arg2].field_0, (sub_4ae7f09d[address(arg1)][arg2].field_512 * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit 0x745869c8: sub_4ae7f09d[address(arg1)][arg2].field_768, (sub_4ae7f09d[address(arg1)][arg2].field_512 * sub_4ae7f09d[address(arg1)][arg2].field_1024) - (sub_4ae7f09d[address(arg1)][arg2].field_1280 * sub_4ae7f09d[address(arg1)][arg2].field_1024), sub_4ae7f09d[address(arg1)][arg2].field_512, arg2, address(arg1), sub_4ae7f09d[address(arg1)][arg2].field_8
}

function sub_c0c201dd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    if sub_9d7390eb[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = sub_9d7390eb[address(arg1)]
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 128
    if not sub_9d7390eb[address(arg1)]:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _40 = mem[64]
            mem[64] = mem[64] + 224
            mem[_40] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_40 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_40 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_40 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_40 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_40 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_40 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _40
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[mem[64]] = 32
        _44 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _44:
            _70 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_70 + 44 len 20]
            mem[t + 64] = mem[_70 + 64]
            mem[t + 96] = mem[_70 + 96]
            mem[t + 128] = mem[_70 + 140 len 20]
            mem[t + 160] = mem[_70 + 160]
            mem[t + 192] = mem[_70 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _42 + (224 * _44) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 352
    mem[(32 * sub_9d7390eb[address(arg1)]) + 128] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 160] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 192] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 224] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 256] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 288] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 320] = 0
    mem[var15002] = var15001
    if not var15003 - 1:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _116 = mem[64]
            mem[64] = mem[64] + 224
            mem[_116] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_116 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_116 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_116 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_116 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_116 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_116 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _116
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[mem[64]] = 32
        _120 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _120:
            _147 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_147 + 44 len 20]
            mem[t + 64] = mem[_147 + 64]
            mem[t + 96] = mem[_147 + 96]
            mem[t + 128] = mem[_147 + 140 len 20]
            mem[t + 160] = mem[_147 + 160]
            mem[t + 192] = mem[_147 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _119 + (224 * _120) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 576
    mem[(32 * sub_9d7390eb[address(arg1)]) + 352] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 384] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 416] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 448] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 480] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 512] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 544] = 0
    mem[var19002] = var19001
    if not var19003 - 1:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _192 = mem[64]
            mem[64] = mem[64] + 224
            mem[_192] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_192 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_192 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_192 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_192 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_192 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_192 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _192
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _195 = mem[64]
        mem[mem[64]] = 32
        _196 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _196:
            _223 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_223 + 44 len 20]
            mem[t + 64] = mem[_223 + 64]
            mem[t + 96] = mem[_223 + 96]
            mem[t + 128] = mem[_223 + 140 len 20]
            mem[t + 160] = mem[_223 + 160]
            mem[t + 192] = mem[_223 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _195 + (224 * _196) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 800
    mem[(32 * sub_9d7390eb[address(arg1)]) + 576] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 608] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 640] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 672] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 704] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 736] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 768] = 0
    mem[var23002] = var23001
    if not var23003 - 1:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _268 = mem[64]
            mem[64] = mem[64] + 224
            mem[_268] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_268 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_268 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_268 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_268 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_268 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_268 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _268
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _271 = mem[64]
        mem[mem[64]] = 32
        _272 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _272:
            _299 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_299 + 44 len 20]
            mem[t + 64] = mem[_299 + 64]
            mem[t + 96] = mem[_299 + 96]
            mem[t + 128] = mem[_299 + 140 len 20]
            mem[t + 160] = mem[_299 + 160]
            mem[t + 192] = mem[_299 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _271 + (224 * _272) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 1024
    mem[(32 * sub_9d7390eb[address(arg1)]) + 800] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 832] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 864] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 896] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 928] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 960] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 992] = 0
    mem[var27002] = var27001
    if not var27003 - 1:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _344 = mem[64]
            mem[64] = mem[64] + 224
            mem[_344] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_344 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_344 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_344 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_344 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_344 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_344 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _344
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _347 = mem[64]
        mem[mem[64]] = 32
        _348 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _348:
            _375 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_375 + 44 len 20]
            mem[t + 64] = mem[_375 + 64]
            mem[t + 96] = mem[_375 + 96]
            mem[t + 128] = mem[_375 + 140 len 20]
            mem[t + 160] = mem[_375 + 160]
            mem[t + 192] = mem[_375 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _347 + (224 * _348) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 1248
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1024] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1056] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1088] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1120] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1152] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1184] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1216] = 0
    mem[var31002] = var31001
    if not var31003 - 1:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _420 = mem[64]
            mem[64] = mem[64] + 224
            mem[_420] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_420 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_420 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_420 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_420 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_420 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_420 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _420
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _423 = mem[64]
        mem[mem[64]] = 32
        _424 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _424:
            _451 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_451 + 44 len 20]
            mem[t + 64] = mem[_451 + 64]
            mem[t + 96] = mem[_451 + 96]
            mem[t + 128] = mem[_451 + 140 len 20]
            mem[t + 160] = mem[_451 + 160]
            mem[t + 192] = mem[_451 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _423 + (224 * _424) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 1472
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1248] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1280] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1312] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1344] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1376] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1408] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1440] = 0
    mem[var35002] = var35001
    if not var35003 - 1:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _496 = mem[64]
            mem[64] = mem[64] + 224
            mem[_496] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_496 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_496 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_496 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_496 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_496 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_496 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _496
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _499 = mem[64]
        mem[mem[64]] = 32
        _500 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _500:
            _527 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_527 + 44 len 20]
            mem[t + 64] = mem[_527 + 64]
            mem[t + 96] = mem[_527 + 96]
            mem[t + 128] = mem[_527 + 140 len 20]
            mem[t + 160] = mem[_527 + 160]
            mem[t + 192] = mem[_527 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _499 + (224 * _500) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 1696
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1472] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1504] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1536] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1568] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1600] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1632] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1664] = 0
    mem[var39002] = var39001
    if not var39003 - 1:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _572 = mem[64]
            mem[64] = mem[64] + 224
            mem[_572] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_572 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_572 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_572 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_572 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_572 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_572 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _572
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _575 = mem[64]
        mem[mem[64]] = 32
        _576 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _576:
            _603 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_603 + 44 len 20]
            mem[t + 64] = mem[_603 + 64]
            mem[t + 96] = mem[_603 + 96]
            mem[t + 128] = mem[_603 + 140 len 20]
            mem[t + 160] = mem[_603 + 160]
            mem[t + 192] = mem[_603 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _575 + (224 * _576) + -mem[64] + 64
    mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 1920
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1696] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1728] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1760] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1792] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1824] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1856] = 0
    mem[(32 * sub_9d7390eb[address(arg1)]) + 1888] = 0
    mem[var43002] = var43001
    if var43003 - 1:
        mem[64] = (32 * sub_9d7390eb[address(arg1)]) + 2144
        mem[var47002] = var47001
        if not var47003 - 1:
            idx = 0
            while idx < sub_9d7390eb[address(arg1)]:
                mem[0] = idx
                mem[32] = sha3(address(arg1), 2)
                _724 = mem[64]
                mem[64] = mem[64] + 224
                mem[_724] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
                mem[_724 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
                mem[_724 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
                mem[_724 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
                mem[_724 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
                mem[_724 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
                mem[_724 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _724
                if idx == -1:
                    revert with 0, 17
                mem[0] = address(arg1)
                mem[32] = 1
                idx = idx + 1
                continue 
        # nil
    else:
        mem[0] = address(arg1)
        mem[32] = 1
        idx = 0
        while idx < sub_9d7390eb[address(arg1)]:
            mem[0] = idx
            mem[32] = sha3(address(arg1), 2)
            _648 = mem[64]
            mem[64] = mem[64] + 224
            mem[_648] = bool(sub_4ae7f09d[address(arg1)][idx].field_0)
            mem[_648 + 32] = sub_4ae7f09d[address(arg1)][idx].field_8
            mem[_648 + 64] = sub_4ae7f09d[address(arg1)][idx].field_256
            mem[_648 + 96] = sub_4ae7f09d[address(arg1)][idx].field_512
            mem[_648 + 128] = sub_4ae7f09d[address(arg1)][idx].field_768
            mem[_648 + 160] = sub_4ae7f09d[address(arg1)][idx].field_1024
            mem[_648 + 192] = sub_4ae7f09d[address(arg1)][idx].field_1280
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _648
            if idx == -1:
                revert with 0, 17
            mem[0] = address(arg1)
            mem[32] = 1
            idx = idx + 1
            continue 
        _651 = mem[64]
        mem[mem[64]] = 32
        _652 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _652:
            _679 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_679 + 44 len 20]
            mem[t + 64] = mem[_679 + 64]
            mem[t + 96] = mem[_679 + 96]
            mem[t + 128] = mem[_679 + 140 len 20]
            mem[t + 160] = mem[_679 + 160]
            mem[t + 192] = mem[_679 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _651 + (224 * _652) + -mem[64] + 64
}



}
