contract main {




// =====================  Runtime code  =====================


address owner;
address sub_336a2901Address;
address investTokenAddress;
address sub_11dc99b3Address;
uint256 sub_38771754;
uint256 sub_b17253e6;
uint256 sub_1920508d;
uint256 sub_e230fbe7;
uint256 sub_ff6807cb;
uint256 sub_bc4c3bb3;
uint256 sub_8b65be08;
uint256 totalInvestors;
uint256 sub_7bb501ec;
uint256 saleDuration;
uint256 sub_49a433a2;
uint256 sub_93c7c04e;
uint256 startingPrice;
uint256 finalPrice;
uint8 saleEnabled;
uint8 sub_d2f82536; offset 8
uint8 finalized; offset 16
array of address investorList;
array of uint256 stor93369884277498597659590946175997448338802118867485977633968544981113634346220;

function sub_11dc99b3(?) payable {
    return sub_11dc99b3Address
}

function investorList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < investorList.length
    return investorList[arg1]
}

function sub_1920508d(?) payable {
    return sub_1920508d
}

function totalInvestors() payable {
    return totalInvestors
}

function sub_336a2901(?) payable {
    return sub_336a2901Address
}

function saleDuration() payable {
    return saleDuration
}

function sub_38771754(?) payable {
    return sub_38771754
}

function sub_49a433a2(?) payable {
    return sub_49a433a2
}

function saleEnabled() payable {
    return bool(saleEnabled)
}

function sub_7bb501ec(?) payable {
    return sub_7bb501ec
}

function sub_8b65be08(?) payable {
    return sub_8b65be08
}

function owner() payable {
    return owner
}

function sub_93c7c04e(?) payable {
    return sub_93c7c04e
}

function finalPrice() payable {
    return finalPrice
}

function sub_b17253e6(?) payable {
    return sub_b17253e6
}

function finalized() payable {
    return bool(finalized)
}

function investToken() payable {
    return investTokenAddress
}

function sub_bc4c3bb3(?) payable {
    return sub_bc4c3bb3
}

function sub_d2f82536(?) payable {
    return bool(sub_d2f82536)
}

function startingPrice() payable {
    return startingPrice
}

function sub_e230fbe7(?) payable {
    return sub_e230fbe7
}

function sub_f703f36f(?) payable {
    require calldata.size - 4 >= 32
    return sub_f703f36f[arg1].field_0, 
           sub_f703f36f[arg1].field_256,
           sub_f703f36f[arg1].field_512,
           bool(sub_f703f36f[arg1].field_1024)
}

function sub_ff6807cb(?) payable {
    return sub_ff6807cb
}

function _fallback() payable {
    revert
}

function enableSale() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    saleEnabled = 1
    emit 0x20b56eb5: 1, block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableRedeem() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    sub_d2f82536 = 1
    emit 0xef5fd91d: 1, block.timestamp
}

function hasSaleEnded() payable {
    if saleDuration + sub_7bb501ec < sub_7bb501ec:
        revert with 0, 'SafeMath: addition overflow'
    return (block.timestamp > saleDuration + sub_7bb501ec)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function computePrice() payable {
    if not sub_bc4c3bb3:
        if not sub_ff6807cb:
            revert with 0, 'SafeMath: division by zero'
        return (0 / sub_ff6807cb)
    if 10^9 * sub_bc4c3bb3 / sub_bc4c3bb3 != 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not sub_ff6807cb:
        revert with 0, 'SafeMath: division by zero'
    return (10^9 * sub_bc4c3bb3 / sub_ff6807cb)
}

function changeStartTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6453746172742074696d65206d75737420626520696e2074686520667574757265,
                    mem[197 len 31]
    if block.timestamp >= sub_7bb501ec:
        revert with 0, 'Sale has already started'
    sub_7bb501ec = arg1
    if saleDuration + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    sub_49a433a2 = saleDuration + arg1
}

function sub_69e1da2d(?) payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp <= sub_49a433a2:
        revert with 0, 'Sale has not ended'
    require ext_code.size(investTokenAddress)
    staticcall investTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_336a2901Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function currentPrice() payable {
    if not sub_bc4c3bb3:
        if not sub_ff6807cb:
            revert with 0, 'SafeMath: division by zero'
        if 0 / sub_ff6807cb > startingPrice:
            return (0 / sub_ff6807cb)
    else:
        if 10^9 * sub_bc4c3bb3 / sub_bc4c3bb3 != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_ff6807cb:
            revert with 0, 'SafeMath: division by zero'
        if 10^9 * sub_bc4c3bb3 / sub_ff6807cb > startingPrice:
            return (10^9 * sub_bc4c3bb3 / sub_ff6807cb)
    return startingPrice
}

function sub_a4cea3b2(?) payable {
    if not sub_d2f82536:
        revert with 0, 'redeem not enabled'
    if block.timestamp < sub_49a433a2:
        revert with 0, 'Time to claim has not arrived'
    if sub_f703f36f[msg.sender].field_1024:
        revert with 0, 'Tokens already claimed'
    if not sub_f703f36f[msg.sender].field_0:
        revert with 0, 'No investment made'
    if 10^9 * sub_f703f36f[msg.sender].field_0 / sub_f703f36f[msg.sender].field_0 != 10^9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not finalPrice:
        revert with 0, 'SafeMath: division by zero'
    sub_f703f36f[msg.sender].field_1024 = 1
    sub_f703f36f[msg.sender].field_256 = 10^9 * sub_f703f36f[msg.sender].field_0 / finalPrice
    if (10^9 * sub_f703f36f[msg.sender].field_0 / finalPrice) + sub_8b65be08 < sub_8b65be08:
        revert with 0, 'SafeMath: addition overflow'
    sub_8b65be08 += 10^9 * sub_f703f36f[msg.sender].field_0 / finalPrice
    require ext_code.size(sub_11dc99b3Address)
    call sub_11dc99b3Address.0x867904b4 with:
         gas gas_remaining wei
        args msg.sender, 10^9 * sub_f703f36f[msg.sender].field_0 / finalPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3a4841c3: msg.sender, 10^9 * sub_f703f36f[msg.sender].field_0 / finalPrice
}

function sub_727dba53(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 19
    idx = 0
    s = 0
    while idx < sub_f703f36f[address(arg1)].field_768:
        _21 = mem[64]
        mem[64] = mem[64] + 64
        mem[_21] = 0
        mem[_21 + 32] = 0
        mem[0] = sha3(address(arg1), 19) + 3
        _23 = mem[64]
        mem[64] = mem[64] + 64
        mem[_23] = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_f703f36f', 19)))].field_0
        mem[_23 + 32] = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_f703f36f', 19)))].field_256
        _24 = mem[64]
        mem[64] = mem[64] + 64
        mem[_24] = 30
        mem[_24 + 32] = 'SafeMath: subtraction overflow'
        if sub_93c7c04e <= block.timestamp:
            if stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_f703f36f', 19)))].field_0 < block.timestamp - sub_93c7c04e:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_f703f36f[address(arg1)].field_768
            mem[0] = sha3(address(arg1), 19) + 3
            if stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_f703f36f', 19)))].field_256 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_f703f36f', 19)))].field_256 + s
            continue 
        _25 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _25 + 68] = mem[idx + _24 + 32]
            idx = idx + 32
            continue 
        mem[_25 + 68] = mem[_25 + 70 len 30]
        revert with memory
          from mem[64]
           len _25 + -mem[64] + 100
    return s
}

function invest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not saleEnabled:
        revert with 0, 'Sale is not enabled yet'
    if block.timestamp < sub_7bb501ec:
        revert with 0, 'Sale has not started yet'
    if arg1 < sub_b17253e6:
        revert with 0, 'Invest amount too small'
    if saleDuration + sub_7bb501ec < sub_7bb501ec:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > saleDuration + sub_7bb501ec:
        revert with 0, 'Sale period has ended'
    if arg1 + sub_bc4c3bb3 < sub_bc4c3bb3:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + sub_bc4c3bb3 > sub_e230fbe7:
        revert with 0, 'Maximum Investments reached'
    if arg1 + sub_f703f36f[msg.sender].field_0 < sub_f703f36f[msg.sender].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + sub_f703f36f[msg.sender].field_0 > sub_38771754:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x734d617820696e646976696475616c20696e766573746d656e7420726561636865,
                    mem[197 len 31]
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    if not sub_f703f36f[msg.sender].field_0:
        totalInvestors++
        investorList.length++
        storCE6D[stor20.length] = msg.sender or Mask(96, 160, storCE6D[stor20.length])
    sub_f703f36f[msg.sender].field_512 += arg1
    sub_f703f36f[msg.sender].field_0 += arg1
    sub_bc4c3bb3 += arg1
    if not sub_bc4c3bb3:
        if not sub_ff6807cb:
            revert with 0, 'SafeMath: division by zero'
        if 0 / sub_ff6807cb > startingPrice:
            finalPrice = 0 / sub_ff6807cb
            emit Invest(msg.sender, arg1, sub_bc4c3bb3, 0 / sub_ff6807cb);
        else:
            finalPrice = startingPrice
            emit Invest(msg.sender, arg1, sub_bc4c3bb3, startingPrice);
    else:
        if 10^9 * sub_bc4c3bb3 / sub_bc4c3bb3 != 10^9:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_ff6807cb:
            revert with 0, 'SafeMath: division by zero'
        if 10^9 * sub_bc4c3bb3 / sub_ff6807cb > startingPrice:
            finalPrice = 10^9 * sub_bc4c3bb3 / sub_ff6807cb
            emit Invest(msg.sender, arg1, sub_bc4c3bb3, 10^9 * sub_bc4c3bb3 / sub_ff6807cb);
        else:
            finalPrice = startingPrice
            emit Invest(msg.sender, arg1, sub_bc4c3bb3, startingPrice);
}

function sub_c0212d03(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if not saleEnabled:
        revert with 0, 'Sale is not enabled yet'
    if block.timestamp < sub_7bb501ec:
        revert with 0, 'Sale has not started yet'
    if block.timestamp >= sub_49a433a2:
        revert with 0, 'Sale has ended'
    if sub_bc4c3bb3 >= sub_e230fbe7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0xfe4d6178696d756d20496e766573746d656e747320726561636865642c206465706f736974732f7769746864726177616c206172652064697361626c65,
                    mem[225 len 3]
    if arg1 > sub_f703f36f[msg.sender].field_0:
        revert with 0, 'Cannot Remove more than invested'
    mem[0] = msg.sender
    mem[32] = 19
    idx = 0
    s = 0
    while idx < sub_f703f36f[address(msg.sender)].field_768:
        _82 = mem[64]
        mem[64] = mem[64] + 64
        mem[_82] = 0
        mem[_82 + 32] = 0
        mem[0] = sha3(address(msg.sender), 19) + 3
        _85 = mem[64]
        mem[64] = mem[64] + 64
        mem[_85] = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f703f36f', 19)))].field_0
        mem[_85 + 32] = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f703f36f', 19)))].field_256
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = 30
        mem[_89 + 32] = 'SafeMath: subtraction overflow'
        if sub_93c7c04e <= block.timestamp:
            if stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f703f36f', 19)))].field_0 < block.timestamp - sub_93c7c04e:
                idx = idx + 1
                s = s
                continue 
            require idx < sub_f703f36f[address(msg.sender)].field_768
            mem[0] = sha3(address(msg.sender), 19) + 3
            if stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f703f36f', 19)))].field_256 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = stor[(2 * idx) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_f703f36f', 19)))].field_256 + s
            continue 
        _91 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _91 + 68] = mem[idx + _89 + 32]
            idx = idx + 32
            continue 
        mem[_91 + 68] = mem[_91 + 70 len 30]
        revert with memory
          from mem[64]
           len _91 + -mem[64] + 100
    _83 = mem[64]
    mem[64] = mem[64] + 64
    mem[_83] = 30
    mem[_83 + 32] = 'SafeMath: subtraction overflow'
    if s > sub_1920508d:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg1 > sub_1920508d - s:
        revert with 0, 32, 34, 0x644d6178207769746864726177207265616368656420666f72207468697320686f75, mem[mem[64] + 102 len 30]
    _96 = mem[64]
    mem[64] = mem[64] + 64
    mem[_96] = block.timestamp
    mem[_96 + 32] = arg1
    sub_f703f36f[msg.sender].field_768++
    stor[('array', 3, ('map', 'msg.sender', ('name', 'sub_f703f36f', 19))) + (2 * sub_f703f36f[msg.sender].field_768)].field_0 = block.timestamp
    stor[('array', 3, ('map', 'msg.sender', ('name', 'sub_f703f36f', 19))) + (2 * sub_f703f36f[msg.sender].field_768)].field_256 = arg1
    sub_f703f36f[msg.sender].field_512 += arg1
    sub_f703f36f[msg.sender].field_0 -= arg1
    sub_bc4c3bb3 -= arg1
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'transfer failed'
    if not sub_bc4c3bb3:
        if not sub_ff6807cb:
            revert with 0, 'SafeMath: division by zero'
        if 0 / sub_ff6807cb > startingPrice:
            finalPrice = 0 / sub_ff6807cb
            emit 0x5b938ffa: msg.sender, arg1, sub_bc4c3bb3, 0 / sub_ff6807cb
        else:
            finalPrice = startingPrice
            emit 0x5b938ffa: msg.sender, arg1, sub_bc4c3bb3, startingPrice
    else:
        if 10^9 * sub_bc4c3bb3 / sub_bc4c3bb3 != 10^9:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not sub_ff6807cb:
            revert with 0, 'SafeMath: division by zero'
        if 10^9 * sub_bc4c3bb3 / sub_ff6807cb > startingPrice:
            finalPrice = 10^9 * sub_bc4c3bb3 / sub_ff6807cb
            emit 0x5b938ffa: msg.sender, arg1, sub_bc4c3bb3, 10^9 * sub_bc4c3bb3 / sub_ff6807cb
        else:
            finalPrice = startingPrice
            emit 0x5b938ffa: msg.sender, arg1, sub_bc4c3bb3, startingPrice
}



}
