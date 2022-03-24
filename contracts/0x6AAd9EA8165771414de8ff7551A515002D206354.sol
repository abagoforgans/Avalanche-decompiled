contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address sub_94a4036bAddress;
uint32 stor3;
address recipientAddress;
uint256 stor3;
uint256 stor4; offset 32
uint256 stor4; offset 1
uint256 vestingAmount;
big480 stor4;
uint256 vestingCliff;
uint256 halvingPeriod;
uint256 nextSlash;
uint8 vestingEnabled;
uint256 lastUpdate;
uint256 startingBalance;

function vestingAmount() payable {
    return vestingAmount
}

function nextSlash() payable {
    return nextSlash
}

function halvingPeriod() payable {
    return halvingPeriod
}

function recipient() payable {
    return address(recipientAddress)
}

function vestingEnabled() payable {
    return bool(vestingEnabled)
}

function owner() payable {
    return owner
}

function sub_94a4036b(?) payable {
    return sub_94a4036bAddress
}

function startingBalance() payable {
    return startingBalance
}

function lastUpdate() payable {
    return lastUpdate
}

function vestingCliff() payable {
    return vestingCliff
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

function setRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(recipientAddress) = arg1
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

function startVesting() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if vestingEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6454726561737572795665737465723a3a737461727456657374696e673a2076657374696e6720616c726561647920737461727465,
                    mem[217 len 11]
    require ext_code.size(sub_94a4036bAddress)
    staticcall sub_94a4036bAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < startingBalance:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x6454726561737572795665737465723a3a737461727456657374696e673a20696e636f72726563742059545320737570706c,
                    mem[214 len 14]
    if not address(recipientAddress):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6c54726561737572795665737465723a3a737461727456657374696e673a20726563697069656e74206e6f74207365,
                    mem[211 len 17]
    vestingEnabled = 1
    emit 0xf78a71da 
}

function claim() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not vestingEnabled:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6d54726561737572795665737465723a3a636c61696d3a2076657374696e67206e6f7420656e61626c65,
                    mem[206 len 22]
    if address(recipientAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x7354726561737572795665737465723a3a636c61696d3a206f6e6c7920726563697069656e742063616e20636c6169,
                    mem[211 len 17]
    if block.timestamp < lastUpdate + vestingCliff:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x7454726561737572795665737465723a3a636c61696d3a206e6f742074696d65207965,
                    mem[199 len 29]
    if not nextSlash:
        nextSlash = halvingPeriod - 1
        vestingAmount = uint255(stor4.field_1)
        lastUpdate = block.timestamp
        emit 0x277d5afb: vestingAmount, address(recipientAddress)
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_94a4036bAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor4.field_32)
    else:
        if 1 > nextSlash:
            revert with 0, 'SafeMath: subtraction overflow'
        nextSlash--
        lastUpdate = block.timestamp
        emit 0x277d5afb: vestingAmount, address(recipientAddress)
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(sub_94a4036bAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), Mask(224, 0, stor4.field_32)
        mem[324 len 0] = 0
    call sub_94a4036bAddress with:
       funct uint32(stor3)
         gas gas_remaining wei
        args Mask(480, 0, stor4.field_0), mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor3), uint32(stor3), vestingAmount
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor3):
            revert with 0, 32, 42, 0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x745361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    stor1 = 1
    return vestingAmount
}



}
