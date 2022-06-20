contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
address tokenAddress;
uint256 stor2;
uint256 sub_d453bec6;
address sub_5d4f0cb6Address;
mapping of struct vestingAmount;

function vestingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_256
}

function releaseTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_0
}

function sub_5d4f0cb6(?) payable {
    return sub_5d4f0cb6Address
}

function beneficiary(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_512
}

function vestings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return vestingAmount[arg1].field_0, 
           vestingAmount[arg1].field_256,
           vestingAmount[arg1].field_512,
           bool(vestingAmount[arg1].field_672)
}

function owner() payable {
    return address(owner)
}

function sub_d453bec6(?) payable {
    return sub_d453bec6
}

function sub_d9ae3d2f(?) payable {
    require calldata.size - 4 >= 32
    return bool(vestingAmount[arg1].field_672)
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function removeVesting(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not vestingAmount[arg1].field_512:
        revert with 0, 'Inva', 0
    if vestingAmount[arg1].field_672:
        revert with 0, 'Vesting already ', 0
    vestingAmount[arg1].field_672 = 1
    if stor2 < vestingAmount[arg1].field_256:
        revert with 0, 17
    stor2 -= vestingAmount[arg1].field_256
    emit TokenVestingRemoved(vestingAmount[arg1].field_256, arg1, vestingAmount[arg1].field_512);
}

function addVesting(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid beneficiary address', 0
    if arg2 <= block.timestamp:
        revert with 0, 'Invalid release time'
    if not arg3:
        revert with 0, 'Amount must be greater then 0'
    if stor2 > !arg3:
        revert with 0, 17
    stor2 += arg3
    if sub_d453bec6 > -2:
        revert with 0, 17
    sub_d453bec6++
    vestingAmount[stor3 + 1].field_0 = arg2
    vestingAmount[stor3 + 1].field_256 = arg3
    vestingAmount[stor3 + 1].field_512 = arg1
    vestingAmount[stor3 + 1].field_672 = 0
    emit TokenVestingAdded(arg3, sub_d453bec6, arg1);
}

function release(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not vestingAmount[arg1].field_512:
        revert with 0, 'Inva', 0
    if vestingAmount[arg1].field_672:
        revert with 0, 'Vesting already ', 0
    if block.timestamp < vestingAmount[arg1].field_0:
        revert with 0, 'Tokens have not vested yet', 0
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < vestingAmount[arg1].field_256:
        revert with 0, 'Insufficient balance', 0
    vestingAmount[arg1].field_672 = 1
    if stor2 < vestingAmount[arg1].field_256:
        revert with 0, 17
    stor2 -= vestingAmount[arg1].field_256
    require ext_code.size(vestingAmount[arg1].field_512)
    call vestingAmount[arg1].field_512.deposit(uint256 arg1, uint8 arg2) with:
         gas gas_remaining wei
        args vestingAmount[arg1].field_256, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenVestingReleased(vestingAmount[arg1].field_256, arg1, vestingAmount[arg1].field_512);
}

function retrieveExcessTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor2:
        revert with 0, 17
    mem[ceil32(return_data.size) + 96] = 20
    mem[ceil32(return_data.size) + 128] = 'Insufficient balance' << 96
    if arg1 > ext_call.return_data[0] - stor2:
        revert with 0, 'Insufficient balance', 0
    emit RetrieveExcessTokens(arg1);
    mem[ceil32(return_data.size) + 196] = address(owner)
    mem[ceil32(return_data.size) + 228] = arg1
    mem[ceil32(return_data.size) + 160] = 68
    mem[ceil32(return_data.size) + 196 len 28] = Mask(224, 0, stor0)
    mem[ceil32(return_data.size) + 192 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 260] = 32
    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 324 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
            if not mem[ceil32(return_data.size) + 356]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_6faa0f63(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[0] = sub_d453bec6
    mem[32] = 5
    if vestingAmount[stor3].field_672:
        if arg2 <= 0:
            revert with 0, 'numDays out of bounds'
        if arg2 > 365:
            revert with 0, 'numDays out of bounds'
        idx = 0
        while idx < arg2:
            if idx > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if arg1 > !(24 * 3600 * idx):
                revert with 0, 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _149 = mem[_147]
            require mem[_147] == mem[_147 + 31 len 1]
            if not mem[_147 + 31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_151] = 27
                mem[_151 + 32] = 'Invalid beneficiary address'
                if not sub_5d4f0cb6Address:
                    _155 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    idx = 0
                    while idx < 27:
                        mem[idx + _155 + 68] = mem[idx + _151 + 32]
                        idx = idx + 32
                        continue 
                    mem[_155 + 95] = 0
                    revert with memory
                      from mem[64]
                       len _155 + -mem[64] + 100
                if arg1 + (24 * 3600 * idx) <= block.timestamp:
                    revert with 0, 'Invalid release time'
                if not arg3:
                    revert with 0, 'Amount must be greater then 0'
                if stor2 > !arg3:
                    revert with 0, 17
                stor2 += arg3
                if sub_d453bec6 > -2:
                    revert with 0, 17
                sub_d453bec6++
                _209 = mem[64]
                mem[64] = mem[64] + 128
                mem[_209] = arg1 + (24 * 3600 * idx)
                mem[_209 + 32] = arg3
                mem[_209 + 64] = sub_5d4f0cb6Address
                mem[_209 + 96] = 0
                mem[0] = sub_d453bec6 + 1
                mem[32] = 5
                vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                vestingAmount[stor3 + 1].field_256 = arg3
                vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                vestingAmount[stor3 + 1].field_672 = 0
                mem[mem[64]] = arg3
                emit TokenVestingAdded(arg3, sub_d453bec6, sub_5d4f0cb6Address);
            else:
                if bool(bool(mem[_147 + 31 len 1] < 78)) or bool(bool(mem[_147 + 31 len 1] < 32)):
                    if 10^mem[_147 + 31 len 1] > -1:
                        revert with 0, 17
                    if arg3 and 10^mem[_147 + 31 len 1] > -1 / arg3:
                        revert with 0, 17
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_171] = 27
                    mem[_171 + 32] = 'Invalid beneficiary address'
                    if not sub_5d4f0cb6Address:
                        _175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _175 + 68] = mem[idx + _171 + 32]
                            idx = idx + 32
                            continue 
                        mem[_175 + 95] = 0
                        revert with memory
                          from mem[64]
                           len _175 + -mem[64] + 100
                    if arg1 + (24 * 3600 * idx) <= block.timestamp:
                        revert with 0, 'Invalid release time'
                    if not arg3 * 10^uint8(_149):
                        revert with 0, 'Amount must be greater then 0'
                    if stor2 > !(arg3 * 10^uint8(_149)):
                        revert with 0, 17
                    stor2 += arg3 * 10^uint8(_149)
                    if sub_d453bec6 > -2:
                        revert with 0, 17
                    sub_d453bec6++
                    _239 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_239] = arg1 + (24 * 3600 * idx)
                    mem[_239 + 32] = arg3 * 10^uint8(_149)
                    mem[_239 + 64] = sub_5d4f0cb6Address
                    mem[_239 + 96] = 0
                    mem[0] = sub_d453bec6 + 1
                    mem[32] = 5
                    vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                    vestingAmount[stor3 + 1].field_256 = arg3 * 10^uint8(_149)
                    vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                    vestingAmount[stor3 + 1].field_672 = 0
                    mem[mem[64]] = arg3 * 10^uint8(_149)
                    emit TokenVestingAdded((arg3 * 10^uint8(_149)), sub_d453bec6, sub_5d4f0cb6Address);
                else:
                    if var40005 > 1:
                        s = var40001
                        t = var40002
                        u = var40005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * t > -1 / arg3:
                                    revert with 0, 17
                                if address(owner) != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _409 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_409] = 27
                                mem[_409 + 32] = 'Invalid beneficiary address'
                                if not sub_5d4f0cb6Address:
                                    _413 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 27
                                    idx = 0
                                    while idx < 27:
                                        mem[idx + _413 + 68] = mem[idx + _409 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_413 + 95] = 0
                                    revert with memory
                                      from mem[64]
                                       len _413 + -mem[64] + 100
                                if arg1 + (24 * 3600 * idx) <= block.timestamp:
                                    revert with 0, 'Invalid release time'
                                if not arg3 * s * s * t:
                                    revert with 0, 'Amount must be greater then 0'
                                if stor2 > !(arg3 * s * s * t):
                                    revert with 0, 17
                                stor2 += arg3 * s * s * t
                                if sub_d453bec6 > -2:
                                    revert with 0, 17
                                sub_d453bec6++
                                _457 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_457] = arg1 + (24 * 3600 * idx)
                                mem[_457 + 32] = arg3 * s * s * t
                                mem[_457 + 64] = sub_5d4f0cb6Address
                                mem[_457 + 96] = 0
                                mem[0] = sub_d453bec6 + 1
                                mem[32] = 5
                                vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                                vestingAmount[stor3 + 1].field_256 = arg3 * s * s * t
                                vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                                vestingAmount[stor3 + 1].field_672 = 0
                                mem[mem[64]] = arg3 * s * s * t
                                emit TokenVestingAdded((arg3 * s * s * t), sub_d453bec6, sub_5d4f0cb6Address);
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * s * t > -1 / arg3:
                                    revert with 0, 17
                                if address(owner) != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _414 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_414] = 27
                                mem[_414 + 32] = 'Invalid beneficiary address'
                                if not sub_5d4f0cb6Address:
                                    _422 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 27
                                    idx = 0
                                    while idx < 27:
                                        mem[idx + _422 + 68] = mem[idx + _414 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_422 + 95] = 0
                                    revert with memory
                                      from mem[64]
                                       len _422 + -mem[64] + 100
                                if arg1 + (24 * 3600 * idx) <= block.timestamp:
                                    revert with 0, 'Invalid release time'
                                if not arg3 * s * s * s * t:
                                    revert with 0, 'Amount must be greater then 0'
                                if stor2 > !(arg3 * s * s * s * t):
                                    revert with 0, 17
                                stor2 += arg3 * s * s * s * t
                                if sub_d453bec6 > -2:
                                    revert with 0, 17
                                sub_d453bec6++
                                _472 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_472] = arg1 + (24 * 3600 * idx)
                                mem[_472 + 32] = arg3 * s * s * s * t
                                mem[_472 + 64] = sub_5d4f0cb6Address
                                mem[_472 + 96] = 0
                                mem[0] = sub_d453bec6 + 1
                                mem[32] = 5
                                vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                                vestingAmount[stor3 + 1].field_256 = arg3 * s * s * s * t
                                vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                                vestingAmount[stor3 + 1].field_672 = 0
                                mem[mem[64]] = arg3 * s * s * s * t
                                emit TokenVestingAdded((arg3 * s * s * s * t), sub_d453bec6, sub_5d4f0cb6Address);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        revert with 0, 17
                    if var40002 > -1 / var40001:
                        revert with 0, 17
                    if arg3 and var40001 * var40002 > -1 / arg3:
                        revert with 0, 17
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _283 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_283] = 27
                    mem[_283 + 32] = 'Invalid beneficiary address'
                    if not sub_5d4f0cb6Address:
                        _287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _287 + 68] = mem[idx + _283 + 32]
                            idx = idx + 32
                            continue 
                        mem[_287 + 95] = 0
                        revert with memory
                          from mem[64]
                           len _287 + -mem[64] + 100
                    if arg1 + (24 * 3600 * idx) <= block.timestamp:
                        revert with 0, 'Invalid release time'
                    if not arg3 * var40001 * var40002:
                        revert with 0, 'Amount must be greater then 0'
                    if stor2 > !(arg3 * var40001 * var40002):
                        revert with 0, 17
                    stor2 += arg3 * var40001 * var40002
                    if sub_d453bec6 > -2:
                        revert with 0, 17
                    sub_d453bec6++
                    _353 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_353] = arg1 + (24 * 3600 * idx)
                    mem[_353 + 32] = arg3 * var40001 * var40002
                    mem[_353 + 64] = sub_5d4f0cb6Address
                    mem[_353 + 96] = 0
                    mem[0] = sub_d453bec6 + 1
                    mem[32] = 5
                    vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                    vestingAmount[stor3 + 1].field_256 = arg3 * var40001 * var40002
                    vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                    vestingAmount[stor3 + 1].field_672 = 0
                    mem[mem[64]] = arg3 * var40001 * var40002
                    emit TokenVestingAdded((arg3 * var40001 * var40002), sub_d453bec6, sub_5d4f0cb6Address);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = sub_d453bec6
        mem[32] = 5
        if 24 * 3600 > !vestingAmount[stor3].field_0:
            revert with 0, 17
        if arg1 < vestingAmount[stor3].field_0 + (24 * 3600):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'start time should be >= latest vest time + 1 days'
        if arg2 <= 0:
            revert with 0, 'numDays out of bounds'
        if arg2 > 365:
            revert with 0, 'numDays out of bounds'
        idx = 0
        while idx < arg2:
            if idx > 0xc22e450672894ab6cd8efb11d33f5617839a5bc7dea00c22e450672894ab:
                revert with 0, 17
            if arg1 > !(24 * 3600 * idx):
                revert with 0, 17
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _150 = mem[_148]
            require mem[_148] == mem[_148 + 31 len 1]
            if not mem[_148 + 31 len 1]:
                if arg3 and 1 > -1 / arg3:
                    revert with 0, 17
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                _153 = mem[64]
                mem[64] = mem[64] + 64
                mem[_153] = 27
                mem[_153 + 32] = 'Invalid beneficiary address'
                if not sub_5d4f0cb6Address:
                    _156 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 27
                    idx = 0
                    while idx < 27:
                        mem[idx + _156 + 68] = mem[idx + _153 + 32]
                        idx = idx + 32
                        continue 
                    mem[_156 + 95] = 0
                    revert with memory
                      from mem[64]
                       len _156 + -mem[64] + 100
                if arg1 + (24 * 3600 * idx) <= block.timestamp:
                    revert with 0, 'Invalid release time'
                if not arg3:
                    revert with 0, 'Amount must be greater then 0'
                if stor2 > !arg3:
                    revert with 0, 17
                stor2 += arg3
                if sub_d453bec6 > -2:
                    revert with 0, 17
                sub_d453bec6++
                _218 = mem[64]
                mem[64] = mem[64] + 128
                mem[_218] = arg1 + (24 * 3600 * idx)
                mem[_218 + 32] = arg3
                mem[_218 + 64] = sub_5d4f0cb6Address
                mem[_218 + 96] = 0
                mem[0] = sub_d453bec6 + 1
                mem[32] = 5
                vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                vestingAmount[stor3 + 1].field_256 = arg3
                vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                vestingAmount[stor3 + 1].field_672 = 0
                mem[mem[64]] = arg3
                emit TokenVestingAdded(arg3, sub_d453bec6, sub_5d4f0cb6Address);
            else:
                if bool(bool(mem[_148 + 31 len 1] < 78)) or bool(bool(mem[_148 + 31 len 1] < 32)):
                    if 10^mem[_148 + 31 len 1] > -1:
                        revert with 0, 17
                    if arg3 and 10^mem[_148 + 31 len 1] > -1 / arg3:
                        revert with 0, 17
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_173] = 27
                    mem[_173 + 32] = 'Invalid beneficiary address'
                    if not sub_5d4f0cb6Address:
                        _176 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _176 + 68] = mem[idx + _173 + 32]
                            idx = idx + 32
                            continue 
                        mem[_176 + 95] = 0
                        revert with memory
                          from mem[64]
                           len _176 + -mem[64] + 100
                    if arg1 + (24 * 3600 * idx) <= block.timestamp:
                        revert with 0, 'Invalid release time'
                    if not arg3 * 10^uint8(_150):
                        revert with 0, 'Amount must be greater then 0'
                    if stor2 > !(arg3 * 10^uint8(_150)):
                        revert with 0, 17
                    stor2 += arg3 * 10^uint8(_150)
                    if sub_d453bec6 > -2:
                        revert with 0, 17
                    sub_d453bec6++
                    _246 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_246] = arg1 + (24 * 3600 * idx)
                    mem[_246 + 32] = arg3 * 10^uint8(_150)
                    mem[_246 + 64] = sub_5d4f0cb6Address
                    mem[_246 + 96] = 0
                    mem[0] = sub_d453bec6 + 1
                    mem[32] = 5
                    vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                    vestingAmount[stor3 + 1].field_256 = arg3 * 10^uint8(_150)
                    vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                    vestingAmount[stor3 + 1].field_672 = 0
                    mem[mem[64]] = arg3 * 10^uint8(_150)
                    emit TokenVestingAdded((arg3 * 10^uint8(_150)), sub_d453bec6, sub_5d4f0cb6Address);
                else:
                    if var44005 > 1:
                        s = var44001
                        t = var44002
                        u = var44005
                        while s <= -1 / s:
                            if not bool(u):
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = t
                                    u = uint255(u) * 0.5
                                    continue 
                                if t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * t > -1 / arg3:
                                    revert with 0, 17
                                if address(owner) != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _411 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_411] = 27
                                mem[_411 + 32] = 'Invalid beneficiary address'
                                if not sub_5d4f0cb6Address:
                                    _416 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 27
                                    idx = 0
                                    while idx < 27:
                                        mem[idx + _416 + 68] = mem[idx + _411 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_416 + 95] = 0
                                    revert with memory
                                      from mem[64]
                                       len _416 + -mem[64] + 100
                                if arg1 + (24 * 3600 * idx) <= block.timestamp:
                                    revert with 0, 'Invalid release time'
                                if not arg3 * s * s * t:
                                    revert with 0, 'Amount must be greater then 0'
                                if stor2 > !(arg3 * s * s * t):
                                    revert with 0, 17
                                stor2 += arg3 * s * s * t
                                if sub_d453bec6 > -2:
                                    revert with 0, 17
                                sub_d453bec6++
                                _464 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_464] = arg1 + (24 * 3600 * idx)
                                mem[_464 + 32] = arg3 * s * s * t
                                mem[_464 + 64] = sub_5d4f0cb6Address
                                mem[_464 + 96] = 0
                                mem[0] = sub_d453bec6 + 1
                                mem[32] = 5
                                vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                                vestingAmount[stor3 + 1].field_256 = arg3 * s * s * t
                                vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                                vestingAmount[stor3 + 1].field_672 = 0
                                mem[mem[64]] = arg3 * s * s * t
                                emit TokenVestingAdded((arg3 * s * s * t), sub_d453bec6, sub_5d4f0cb6Address);
                            else:
                                if uint255(u) * 0.5 > 1:
                                    s = s * s
                                    t = s * t
                                    u = uint255(u) * 0.5
                                    continue 
                                if s * t > -1 / s * s:
                                    revert with 0, 17
                                if arg3 and s * s * s * t > -1 / arg3:
                                    revert with 0, 17
                                if address(owner) != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                _417 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_417] = 27
                                mem[_417 + 32] = 'Invalid beneficiary address'
                                if not sub_5d4f0cb6Address:
                                    _426 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 27
                                    idx = 0
                                    while idx < 27:
                                        mem[idx + _426 + 68] = mem[idx + _417 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_426 + 95] = 0
                                    revert with memory
                                      from mem[64]
                                       len _426 + -mem[64] + 100
                                if arg1 + (24 * 3600 * idx) <= block.timestamp:
                                    revert with 0, 'Invalid release time'
                                if not arg3 * s * s * s * t:
                                    revert with 0, 'Amount must be greater then 0'
                                if stor2 > !(arg3 * s * s * s * t):
                                    revert with 0, 17
                                stor2 += arg3 * s * s * s * t
                                if sub_d453bec6 > -2:
                                    revert with 0, 17
                                sub_d453bec6++
                                _480 = mem[64]
                                mem[64] = mem[64] + 128
                                mem[_480] = arg1 + (24 * 3600 * idx)
                                mem[_480 + 32] = arg3 * s * s * s * t
                                mem[_480 + 64] = sub_5d4f0cb6Address
                                mem[_480 + 96] = 0
                                mem[0] = sub_d453bec6 + 1
                                mem[32] = 5
                                vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                                vestingAmount[stor3 + 1].field_256 = arg3 * s * s * s * t
                                vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                                vestingAmount[stor3 + 1].field_672 = 0
                                mem[mem[64]] = arg3 * s * s * s * t
                                emit TokenVestingAdded((arg3 * s * s * s * t), sub_d453bec6, sub_5d4f0cb6Address);
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        revert with 0, 17
                    if var44002 > -1 / var44001:
                        revert with 0, 17
                    if arg3 and var44001 * var44002 > -1 / arg3:
                        revert with 0, 17
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    _285 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_285] = 27
                    mem[_285 + 32] = 'Invalid beneficiary address'
                    if not sub_5d4f0cb6Address:
                        _288 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 27
                        idx = 0
                        while idx < 27:
                            mem[idx + _288 + 68] = mem[idx + _285 + 32]
                            idx = idx + 32
                            continue 
                        mem[_288 + 95] = 0
                        revert with memory
                          from mem[64]
                           len _288 + -mem[64] + 100
                    if arg1 + (24 * 3600 * idx) <= block.timestamp:
                        revert with 0, 'Invalid release time'
                    if not arg3 * var44001 * var44002:
                        revert with 0, 'Amount must be greater then 0'
                    if stor2 > !(arg3 * var44001 * var44002):
                        revert with 0, 17
                    stor2 += arg3 * var44001 * var44002
                    if sub_d453bec6 > -2:
                        revert with 0, 17
                    sub_d453bec6++
                    _362 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_362] = arg1 + (24 * 3600 * idx)
                    mem[_362 + 32] = arg3 * var44001 * var44002
                    mem[_362 + 64] = sub_5d4f0cb6Address
                    mem[_362 + 96] = 0
                    mem[0] = sub_d453bec6 + 1
                    mem[32] = 5
                    vestingAmount[stor3 + 1].field_0 = arg1 + (24 * 3600 * idx)
                    vestingAmount[stor3 + 1].field_256 = arg3 * var44001 * var44002
                    vestingAmount[stor3 + 1].field_512 = sub_5d4f0cb6Address
                    vestingAmount[stor3 + 1].field_672 = 0
                    mem[mem[64]] = arg3 * var44001 * var44002
                    emit TokenVestingAdded((arg3 * var44001 * var44002), sub_d453bec6, sub_5d4f0cb6Address);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
