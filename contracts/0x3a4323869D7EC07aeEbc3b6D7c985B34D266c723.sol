contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address tokenAddress; offset 8
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 openingTime;
uint256 closingTime;
uint256 cap;
mapping of uint256 balanceOf;
uint32 stor8;
address stor8;
uint256 stor8;
address owner;
uint256 sub_1d03ca62;
uint256 minContributionAmount;
uint256 maxContributionAmount;
mapping of uint256 contribution;
uint256 merkleRoot;

function maxContributionAmount() {
    return maxContributionAmount
}

function sub_1d03ca62(?) {
    return sub_1d03ca62
}

function getContribution(address arg1) {
    require calldata.size - 4 >= 32
    return contribution[address(arg1)]
}

function rate() {
    return rate
}

function merkleRoot() {
    return merkleRoot
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function minContributionAmount() {
    return minContributionAmount
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function isOwner() {
    return (msg.sender == owner)
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMerkleRoot(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    merkleRoot = arg1
}

function sub_9c75bd30(?) {
    if block.timestamp < sub_1d03ca62:
        return block.timestamp >= sub_1d03ca62
    if block.timestamp > closingTime:
        return block.timestamp <= closingTime
    return (weiRaised < cap)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp <= closingTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73506f737444656c697665727943726f776473616c653a206e6f7420636c6f7365,
                    mem[197 len 31]
    if not balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x64506f737444656c697665727943726f776473616c653a2062656e6566696369617279206973206e6f742064756520616e7920746f6b656e,
                    mem[220 len 8]
    balanceOf[address(arg1)] = 0
    require ext_code.size(address(stor8))
    call address(stor8).transfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(stor0.field_0), address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor0.field_0) = 0
    if block.timestamp >= sub_1d03ca62:
        if block.timestamp <= closingTime:
            if weiRaised < cap:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            56,
                            0x6e474f444c43726f776473616c653a20706c65617365207573652077686974656c697374206275792066756e6374696f6e20696e73746561,
                            mem[220 len 8]
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor0.field_0) = 0
    if block.timestamp < openingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if msg.value + weiRaised < weiRaised:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + weiRaised > cap:
        revert with 0, 'CappedCrowdsale: cap exceeded'
    if msg.value + contribution[address(arg1)] < contribution[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + contribution[address(arg1)] > maxContributionAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64474f444c43726f776473616c653a2062656e65666963696172792773206361702065786365656465,
                    mem[205 len 23]
    if msg.value > maxContributionAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69,
                    mem[201 len 27]
    if msg.value < minContributionAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69,
                    mem[201 len 27]
    if not msg.value:
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
        call tokenAddress with:
           funct uint32(stor8)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        if rate * msg.value / msg.value != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if (rate * msg.value) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += rate * msg.value
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, rate * msg.value) >> 32
        call tokenAddress with:
           funct uint32(stor8)
             gas gas_remaining wei
            args Mask(224, 32, rate * msg.value) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    if msg.value + contribution[address(arg1)] < contribution[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    contribution[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_0) = 1
}

function _fallback() payable {
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor0.field_0) = 0
    if block.timestamp >= sub_1d03ca62:
        if block.timestamp <= closingTime:
            if weiRaised < cap:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            56,
                            0x6e474f444c43726f776473616c653a20706c65617365207573652077686974656c697374206275792066756e6374696f6e20696e73746561,
                            mem[220 len 8]
    if not uint8(stor0.field_0):
        revert with 0, 'ReentrancyGuard: reentrant call'
    uint8(stor0.field_0) = 0
    if block.timestamp < openingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: not open'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                    mem[206 len 22]
    if not msg.value:
        revert with 0, 'Crowdsale: weiAmount is 0'
    if msg.value + weiRaised < weiRaised:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + weiRaised > cap:
        revert with 0, 'CappedCrowdsale: cap exceeded'
    if msg.value + contribution[address(msg.sender)] < contribution[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if msg.value + contribution[address(msg.sender)] > maxContributionAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x64474f444c43726f776473616c653a2062656e65666963696172792773206361702065786365656465,
                    mem[205 len 23]
    if msg.value > maxContributionAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69,
                    mem[201 len 27]
    if msg.value < minContributionAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69,
                    mem[201 len 27]
    if not msg.value:
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
        call tokenAddress with:
           funct uint32(stor8)
             gas gas_remaining wei
            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        if rate * msg.value / msg.value != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        weiRaised += msg.value
        if (rate * msg.value) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += rate * msg.value
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(tokenAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, rate * msg.value) >> 32
        call tokenAddress with:
           funct uint32(stor8)
             gas gas_remaining wei
            args Mask(224, 32, rate * msg.value) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor8):
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
        emit TokensPurchased(msg.value, rate * msg.value, msg.sender, msg.sender);
    if msg.value + contribution[address(msg.sender)] < contribution[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    contribution[address(msg.sender)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 1
    uint8(stor0.field_0) = 1
}

function sub_6da949a7(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if block.timestamp < sub_1d03ca62:
        if not merkleRoot:
            revert with 0, 'GODLCrowdsale: missing root'
        mem[(32 * arg2.length) + 160] = address(arg1)
        mem[(32 * arg2.length) + 128] = 20
        mem[64] = (32 * arg2.length) + 180
        idx = 0
        s = 0
        while idx < arg2.length:
            require idx < mem[96]
            _669 = mem[(32 * idx) + 128]
            if s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]]) > mem[(32 * idx) + 128]:
                mem[mem[64] + 32] = mem[(32 * idx) + 128]
                mem[mem[64] + 64] = s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]])
                _677 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_677 + 32 len mem[_677]])
                continue 
            mem[mem[64] + 32] = s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]])
            mem[mem[64] + 64] = _669
            _681 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_681 + 32 len mem[_681]])
            continue 
        if merkleRoot != s:
            revert with 0, 
                        32,
                        52,
                        0x73474f444c43726f776473616c653a2074686973206164647265737320646f6573206e6f742068617665207065726d697373696f,
                        mem[mem[64] + 120 len 12]
        if not uint8(stor0.field_0):
            revert with 0, 'ReentrancyGuard: reentrant call'
        uint8(stor0.field_0) = 0
        if block.timestamp < openingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if block.timestamp > closingTime:
            revert with 0, 'TimedCrowdsale: not open'
        if not arg1:
            revert with 0, 
                        32,
                        42,
                        0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                        mem[mem[64] + 110 len 22]
        if not msg.value:
            revert with 0, 'Crowdsale: weiAmount is 0'
        if msg.value + weiRaised < weiRaised:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + weiRaised > cap:
            revert with 0, 'CappedCrowdsale: cap exceeded'
        if msg.value + contribution[address(arg1)] < contribution[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        if msg.value + contribution[address(arg1)] > maxContributionAmount:
            revert with 0, 
                        32,
                        41,
                        0x64474f444c43726f776473616c653a2062656e65666963696172792773206361702065786365656465,
                        mem[mem[64] + 109 len 23]
        if msg.value > maxContributionAmount:
            revert with 0, 32, 37, 0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69, mem[mem[64] + 105 len 27]
        if msg.value < minContributionAmount:
            revert with 0, 32, 37, 0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69, mem[mem[64] + 105 len 27]
        if msg.value:
            if rate * msg.value / msg.value != rate:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if msg.value + weiRaised < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if (rate * msg.value) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg1
            mem[32] = 7
            balanceOf[address(arg1)] += rate * msg.value
            _908 = mem[64]
            mem[mem[64] + 36] = address(stor8)
            mem[mem[64] + 68] = rate * msg.value
            _909 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_909 + 32 len 4] = unknown_0xa9059cbb(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            _942 = mem[_909]
            mem[_908 + 100 len floor32(mem[_909])] = mem[_909 + 32 len floor32(mem[_909])]
            mem[_908 + floor32(mem[_909]) + -(mem[_909] % 32) + 132 len mem[_909] % 32] = mem[_909 + -(mem[_909] % 32) + floor32(mem[_909]) + 64 len mem[_909] % 32]
            call tokenAddress.mem[_908 + 100 len 4] with:
                 gas gas_remaining wei
                args mem[_908 + 104 len _942 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_908 + 210 len 22]
            else:
                mem[_908 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_908 + 132]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_908 + ceil32(return_data.size) + 211 len 22]
            emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
        else:
            if msg.value + weiRaised < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            weiRaised += msg.value
            if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg1
            mem[32] = 7
            _899 = mem[64]
            mem[mem[64] + 36] = address(stor8)
            mem[mem[64] + 68] = 0
            _900 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_900 + 32 len 4] = unknown_0xa9059cbb(?????)
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            _926 = mem[_900]
            mem[mem[64] len floor32(mem[_900])] = mem[_900 + 32 len floor32(mem[_900])]
            mem[mem[64] + floor32(mem[_900]) + -(mem[_900] % 32) + 32 len mem[_900] % 32] = mem[_900 + floor32(mem[_900]) + -(mem[_900] % 32) + 64 len mem[_900] % 32]
            call tokenAddress with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _926 + _899 + -mem[64] + 96]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
            else:
                _1260 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1260] = return_data.size
                mem[_1260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_1260 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
            emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        if block.timestamp > closingTime:
            if not merkleRoot:
                revert with 0, 'GODLCrowdsale: missing root'
            mem[(32 * arg2.length) + 160] = address(arg1)
            mem[(32 * arg2.length) + 128] = 20
            mem[64] = (32 * arg2.length) + 180
            idx = 0
            s = 0
            while idx < arg2.length:
                require idx < mem[96]
                _670 = mem[(32 * idx) + 128]
                if s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]]) > mem[(32 * idx) + 128]:
                    mem[mem[64] + 32] = mem[(32 * idx) + 128]
                    mem[mem[64] + 64] = s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]])
                    _687 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_687 + 32 len mem[_687]])
                    continue 
                mem[mem[64] + 32] = s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]])
                mem[mem[64] + 64] = _670
                _691 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_691 + 32 len mem[_691]])
                continue 
            if merkleRoot != s:
                revert with 0, 
                            32,
                            52,
                            0x73474f444c43726f776473616c653a2074686973206164647265737320646f6573206e6f742068617665207065726d697373696f,
                            mem[mem[64] + 120 len 12]
            if not uint8(stor0.field_0):
                revert with 0, 'ReentrancyGuard: reentrant call'
            uint8(stor0.field_0) = 0
            if block.timestamp < openingTime:
                revert with 0, 'TimedCrowdsale: not open'
            if block.timestamp > closingTime:
                revert with 0, 'TimedCrowdsale: not open'
            if not arg1:
                revert with 0, 
                            32,
                            42,
                            0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                            mem[mem[64] + 110 len 22]
            if not msg.value:
                revert with 0, 'Crowdsale: weiAmount is 0'
            if msg.value + weiRaised < weiRaised:
                revert with 0, 'SafeMath: addition overflow'
            if msg.value + weiRaised > cap:
                revert with 0, 'CappedCrowdsale: cap exceeded'
            if msg.value + contribution[address(arg1)] < contribution[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if msg.value + contribution[address(arg1)] > maxContributionAmount:
                revert with 0, 
                            32,
                            41,
                            0x64474f444c43726f776473616c653a2062656e65666963696172792773206361702065786365656465,
                            mem[mem[64] + 109 len 23]
            if msg.value > maxContributionAmount:
                revert with 0, 32, 37, 0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69, mem[mem[64] + 105 len 27]
            if msg.value < minContributionAmount:
                revert with 0, 32, 37, 0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69, mem[mem[64] + 105 len 27]
            if not msg.value:
                if msg.value + weiRaised < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                _902 = mem[64]
                mem[mem[64] + 36] = address(stor8)
                mem[mem[64] + 68] = 0
                _903 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_903 + 32 len 4] = unknown_0xa9059cbb(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                _932 = mem[_903]
                mem[_902 + 100 len floor32(mem[_903])] = mem[_903 + 32 len floor32(mem[_903])]
                mem[_902 + floor32(mem[_903]) + -(mem[_903] % 32) + 132 len mem[_903] % 32] = mem[_903 + -(mem[_903] % 32) + floor32(mem[_903]) + 64 len mem[_903] % 32]
                call tokenAddress.mem[_902 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_902 + 104 len _932 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_902 + 210 len 22]
                else:
                    mem[_902 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_902 + 132]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_902 + ceil32(return_data.size) + 211 len 22]
                emit TokensPurchased(msg.value, 0, msg.sender, arg1);
            else:
                if rate * msg.value / msg.value != rate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if msg.value + weiRaised < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                weiRaised += msg.value
                if (rate * msg.value) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                balanceOf[address(arg1)] += rate * msg.value
                _911 = mem[64]
                mem[mem[64] + 36] = address(stor8)
                mem[mem[64] + 68] = rate * msg.value
                _912 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_912 + 32 len 4] = unknown_0xa9059cbb(?????)
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(tokenAddress):
                    revert with 0, 'SafeERC20: call to non-contract'
                _946 = mem[_912]
                mem[_911 + 100 len floor32(mem[_912])] = mem[_912 + 32 len floor32(mem[_912])]
                mem[_911 + floor32(mem[_912]) + -(mem[_912] % 32) + 132 len mem[_912] % 32] = mem[_912 + -(mem[_912] % 32) + floor32(mem[_912]) + 64 len mem[_912] % 32]
                call tokenAddress.mem[_911 + 100 len 4] with:
                     gas gas_remaining wei
                    args mem[_911 + 104 len _946 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_911 + 210 len 22]
                else:
                    mem[_911 + 132 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_911 + 132]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_911 + ceil32(return_data.size) + 211 len 22]
                emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
        else:
            if weiRaised < cap:
                if not uint8(stor0.field_0):
                    revert with 0, 'ReentrancyGuard: reentrant call'
                uint8(stor0.field_0) = 0
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsale: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsale: not open'
                if not arg1:
                    revert with 0, 
                                32,
                                42,
                                0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                                mem[(32 * arg2.length) + 238 len 22]
                if not msg.value:
                    revert with 0, 'Crowdsale: weiAmount is 0'
                if msg.value + weiRaised < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                if msg.value + weiRaised > cap:
                    revert with 0, 'CappedCrowdsale: cap exceeded'
                if msg.value + contribution[address(arg1)] < contribution[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if msg.value + contribution[address(arg1)] > maxContributionAmount:
                    revert with 0, 
                                32,
                                41,
                                0x64474f444c43726f776473616c653a2062656e65666963696172792773206361702065786365656465,
                                mem[(32 * arg2.length) + 237 len 23]
                if msg.value > maxContributionAmount:
                    revert with 0, 
                                32,
                                37,
                                0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69,
                                mem[(32 * arg2.length) + 233 len 27]
                if msg.value < minContributionAmount:
                    revert with 0, 
                                32,
                                37,
                                0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69,
                                mem[(32 * arg2.length) + 233 len 27]
                if not msg.value:
                    if msg.value + weiRaised < weiRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    weiRaised += msg.value
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * arg2.length) + 128] = 68
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * arg2.length) + 228 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0
                    call tokenAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), 0) << 256, mem[(32 * arg2.length) + 292 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg2.length:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * arg2.length) + 338 len 22]
                    else:
                        mem[(32 * arg2.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * arg2.length) + 260]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * arg2.length) + ceil32(return_data.size) + 339 len 22]
                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                else:
                    if rate * msg.value / msg.value != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg2.length) + 229 len 31]
                    if msg.value + weiRaised < weiRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    weiRaised += msg.value
                    if (rate * msg.value) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += rate * msg.value
                    mem[(32 * arg2.length) + 128] = 68
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[(32 * arg2.length) + 228 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor8), uint32(stor8), Mask(224, 32, rate * msg.value) >> 32
                    call tokenAddress with:
                       funct uint32(stor8)
                         gas gas_remaining wei
                        args Mask(224, 32, rate * msg.value) << 224, mem[(32 * arg2.length) + 292 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg2.length:
                            require arg2.length >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * arg2.length) + 338 len 22]
                    else:
                        mem[(32 * arg2.length) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * arg2.length) + 260]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * arg2.length) + ceil32(return_data.size) + 339 len 22]
                    emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
            else:
                if not merkleRoot:
                    revert with 0, 'GODLCrowdsale: missing root'
                mem[(32 * arg2.length) + 160] = address(arg1)
                mem[(32 * arg2.length) + 128] = 20
                mem[64] = (32 * arg2.length) + 180
                idx = 0
                s = 0
                while idx < arg2.length:
                    require idx < mem[96]
                    _673 = mem[(32 * idx) + 128]
                    if s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]]) > mem[(32 * idx) + 128]:
                        mem[mem[64] + 32] = mem[(32 * idx) + 128]
                        mem[mem[64] + 64] = s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]])
                        _697 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_697 + 32 len mem[_697]])
                        continue 
                    mem[mem[64] + 32] = s + sha3(mem[(32 * arg2.length) + 160 len mem[(32 * arg2.length) + 128]])
                    mem[mem[64] + 64] = _673
                    _701 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_701 + 32 len mem[_701]])
                    continue 
                if merkleRoot != s:
                    revert with 0, 
                                32,
                                52,
                                0x73474f444c43726f776473616c653a2074686973206164647265737320646f6573206e6f742068617665207065726d697373696f,
                                mem[mem[64] + 120 len 12]
                if not uint8(stor0.field_0):
                    revert with 0, 'ReentrancyGuard: reentrant call'
                uint8(stor0.field_0) = 0
                if block.timestamp < openingTime:
                    revert with 0, 'TimedCrowdsale: not open'
                if block.timestamp > closingTime:
                    revert with 0, 'TimedCrowdsale: not open'
                if not arg1:
                    revert with 0, 
                                32,
                                42,
                                0x7743726f776473616c653a2062656e656669636961727920697320746865207a65726f20616464726573,
                                mem[mem[64] + 110 len 22]
                if not msg.value:
                    revert with 0, 'Crowdsale: weiAmount is 0'
                if msg.value + weiRaised < weiRaised:
                    revert with 0, 'SafeMath: addition overflow'
                if msg.value + weiRaised > cap:
                    revert with 0, 'CappedCrowdsale: cap exceeded'
                if msg.value + contribution[address(arg1)] < contribution[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                if msg.value + contribution[address(arg1)] > maxContributionAmount:
                    revert with 0, 
                                32,
                                41,
                                0x64474f444c43726f776473616c653a2062656e65666963696172792773206361702065786365656465,
                                mem[mem[64] + 109 len 23]
                if msg.value > maxContributionAmount:
                    revert with 0, 32, 37, 0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69, mem[mem[64] + 105 len 27]
                if msg.value < minContributionAmount:
                    revert with 0, 32, 37, 0x64474f444c43726f776473616c653a20636f6e747269627574696f6e206e6f742076616c69, mem[mem[64] + 105 len 27]
                if not msg.value:
                    if msg.value + weiRaised < weiRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    weiRaised += msg.value
                    if balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 7
                    _905 = mem[64]
                    mem[mem[64] + 36] = address(stor8)
                    mem[mem[64] + 68] = 0
                    _906 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_906 + 32 len 4] = unknown_0xa9059cbb(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    _938 = mem[_906]
                    mem[mem[64] len floor32(mem[_906])] = mem[_906 + 32 len floor32(mem[_906])]
                    mem[mem[64] + floor32(mem[_906]) + -(mem[_906] % 32) + 32 len mem[_906] % 32] = mem[_906 + floor32(mem[_906]) + -(mem[_906] % 32) + 64 len mem[_906] % 32]
                    call tokenAddress with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _938 + _905 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _1264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1264] = return_data.size
                        mem[_1264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1264 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    emit TokensPurchased(msg.value, 0, msg.sender, arg1);
                else:
                    if rate * msg.value / msg.value != rate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if msg.value + weiRaised < weiRaised:
                        revert with 0, 'SafeMath: addition overflow'
                    weiRaised += msg.value
                    if (rate * msg.value) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = arg1
                    mem[32] = 7
                    balanceOf[address(arg1)] += rate * msg.value
                    _914 = mem[64]
                    mem[mem[64] + 36] = address(stor8)
                    mem[mem[64] + 68] = rate * msg.value
                    _915 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_915 + 32 len 4] = unknown_0xa9059cbb(?????)
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(tokenAddress):
                        revert with 0, 'SafeERC20: call to non-contract'
                    _950 = mem[_915]
                    mem[mem[64] len floor32(mem[_915])] = mem[_915 + 32 len floor32(mem[_915])]
                    mem[mem[64] + floor32(mem[_915]) + -(mem[_915] % 32) + 32 len mem[_915] % 32] = mem[_915 + floor32(mem[_915]) + -(mem[_915] % 32) + 64 len mem[_915] % 32]
                    call tokenAddress with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _950 + _914 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    else:
                        _1263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1263] = return_data.size
                        mem[_1263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1263 + 32]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                    emit TokensPurchased(msg.value, rate * msg.value, msg.sender, arg1);
    if msg.value + contribution[address(arg1)] < contribution[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    contribution[address(arg1)] += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor0.field_0) = 1
}



}
