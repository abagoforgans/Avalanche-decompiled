contract main {




// =====================  Runtime code  =====================


const CHAIN_ID = 4

const ONE_DAY = (24 * 3600)

const TRUSTED_TOKEN_ADDRESS = 0xfa7a078c689129f1459a2b7c5e8f10daf9098a9a


address owner;
uint256 stor1;
uint256 dailyTokenWithdrawLimitPerAccount;
address verifyAddress;
mapping of uint256 lastUpdatedTokenWithdrawTimestamp;
mapping of uint256 lastUpdatedTokenWithdrawAmount;
mapping of uint8 stor6;
uint256 lastDepositIndex;

function verifyAddress() payable {
    return verifyAddress
}

function owner() payable {
    return owner
}

function lastDepositIndex() payable {
    return lastDepositIndex
}

function claimedWithdrawalsByOtherChainDepositId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function lastUpdatedTokenWithdrawTimestamp(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUpdatedTokenWithdrawTimestamp[arg1]
}

function dailyTokenWithdrawLimitPerAccount() payable {
    return dailyTokenWithdrawLimitPerAccount
}

function lastUpdatedTokenWithdrawAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastUpdatedTokenWithdrawAmount[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVerifyAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'No Contracts Allowed!'
    if msg.sender != tx.origin:
        revert with 0, 'No Contracts Allowed!'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    verifyAddress = arg1
}

function setDailyLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'No Contracts Allowed!'
    if msg.sender != tx.origin:
        revert with 0, 'No Contracts Allowed!'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    dailyTokenWithdrawLimitPerAccount = arg1
}

function transferOwnership(address arg1) payable {
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

function transferAnyERC20Token(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'No Contracts Allowed!'
    if msg.sender != tx.origin:
        revert with 0, 'No Contracts Allowed!'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg3
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'No Contracts Allowed!'
    if msg.sender != tx.origin:
        revert with 0, 'No Contracts Allowed!'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg1 > dailyTokenWithdrawLimitPerAccount:
        revert with 0, 'amount exceeds limit'
    if lastDepositIndex + 1 < lastDepositIndex:
        revert with 0, 'SafeMath: addition overflow'
    lastDepositIndex++
    if ext_code.size(0xfa7a078c689129f1459a2b7c5e8f10daf9098a9a) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call 0xfa7a078c689129f1459a2b7c5e8f10daf9098a9a with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit Deposit(arg1, block.number, block.timestamp, lastDepositIndex, msg.sender);
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'No Contracts Allowed!'
    if msg.sender != tx.origin:
        revert with 0, 'No Contracts Allowed!'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if arg2 != 4:
        revert with 0, 'invalid chainId!'
    if stor6[arg3]:
        revert with 0, 'already withdrawn!'
    mem[412 len arg4.length] = arg4[all]
    mem[arg4.length + 412] = 0
    require arg4.length >= 96
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(msg.sender, arg1, arg2, arg3, this.address)), mem[412] << 248, mem[444], mem[476]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != verifyAddress:
        revert with 0, 'invalid signature!'
    if lastUpdatedTokenWithdrawTimestamp[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - lastUpdatedTokenWithdrawTimestamp[address(msg.sender)] >= 24 * 3600:
        lastUpdatedTokenWithdrawAmount[address(msg.sender)] = 0
        lastUpdatedTokenWithdrawTimestamp[address(msg.sender)] = block.timestamp
    if lastUpdatedTokenWithdrawAmount[address(msg.sender)] + arg1 < lastUpdatedTokenWithdrawAmount[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    lastUpdatedTokenWithdrawAmount[address(msg.sender)] += arg1
    if lastUpdatedTokenWithdrawAmount[address(msg.sender)] > dailyTokenWithdrawLimitPerAccount:
        revert with 0, 
                    32,
                    52,
                    0x7363616e6e6f742077697468647261772c206c696d6974207265616368656420666f722063757272656e74206475726174696f6e,
                    mem[ceil32(arg4.length) + 628 len 12]
    stor6[arg3] = 1
    if ext_code.size(0xfa7a078c689129f1459a2b7c5e8f10daf9098a9a) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg4.length) + 672 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call 0xfa7a078c689129f1459a2b7c5e8f10daf9098a9a with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[ceil32(arg4.length) + 736 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with msg.sender, arg1, arg2, arg3, this.address
        if not msg.sender:
            revert with 0, 
                        32,
                        42,
                        0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[ceil32(arg4.length) + 782 len 22]
    else:
        mem[ceil32(arg4.length) + 704 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[ceil32(arg4.length) + 704]:
                revert with 0, 
                            32,
                            42,
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg4.length) + ceil32(return_data.size) + 783 len 22]
    emit Withdraw(arg1, arg3, msg.sender);
    stor1 = 1
}



}
