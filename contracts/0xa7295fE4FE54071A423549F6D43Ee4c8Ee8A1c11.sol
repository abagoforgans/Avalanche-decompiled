contract main {




// =====================  Runtime code  =====================


address owner;
address sub_f098c644Address;
address baseTokenAddress;
address presaleWalletAddress;
uint256 minAmount;
uint256 maxAmount;
uint256 salePrice;
uint256 mintedAmount;
uint8 stor8;
mapping of uint256 claimed;
array of address whitelisted;

function openSale() payable {
    return bool(stor8)
}

function presaleWallet() payable {
    return presaleWalletAddress
}

function mintedAmount() payable {
    return mintedAmount
}

function maxAmount() payable {
    return maxAmount
}

function owner() payable {
    return owner
}

function minAmount() payable {
    return minAmount
}

function whitelistedAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < whitelisted.length
    return address(whitelisted[arg1])
}

function baseToken() payable {
    return baseTokenAddress
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return claimed[arg1]
}

function sub_f098c644(?) payable {
    return sub_f098c644Address
}

function salePrice() payable {
    return salePrice
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

function toggleSale(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8 = uint8(arg1)
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < whitelisted.length:
        mem[0] = 10
        if address(whitelisted[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor8:
        revert with 0, 'Sales are ongoing.'
    sub_f098c644Address = arg2
    baseTokenAddress = arg3
    salePrice = arg6
    presaleWalletAddress = arg1
    minAmount = arg4
    maxAmount = arg5
    return 1
}

function calculateSaleQuote(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if 10^9 * arg1 / 10^9 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if salePrice <= 0:
        revert with 0, 'SafeMath: division by zero'
    require salePrice
    return (10^9 * arg1 / salePrice)
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

function whitelistUsers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    whitelisted.length = 0
    idx = 0
    while whitelisted.length > idx:
        uint256(whitelisted[idx]) = 0
        idx = idx + 1
        continue 
    whitelisted.length = arg1.length
    if not arg1.length:
        idx = 0
        while whitelisted.length > idx:
            uint256(whitelisted[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(whitelisted[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while whitelisted.length > idx:
            uint256(whitelisted[idx]) = 0
            idx = idx + 1
            continue 
}

function sub_0092b76e(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor8) != 1:
        revert with 0, 'Sales are closed.'
    require ext_code.size(sub_f098c644Address)
    staticcall sub_f098c644Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_code.size(sub_f098c644Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    call sub_f098c644Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return 1
}

function sub_623ab5da(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(baseTokenAddress)
    staticcall baseTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Base token allowance too low.'
    if arg1 + claimed[address(msg.sender)] < minAmount:
        revert with 0, 'Below minimum allocation'
    mem[0] = msg.sender
    mem[32] = 9
    if arg1 + claimed[address(msg.sender)] > maxAmount:
        revert with 0, 'More than allocation'
    if bool(stor8) != 1:
        revert with 0, 'Sales are closed.'
    idx = 0
    while idx < whitelisted.length:
        mem[0] = 10
        if address(whitelisted[idx]) != msg.sender:
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 9
        claimed[address(msg.sender)] += arg1
        if mintedAmount + arg1 < mintedAmount:
            revert with 0, 'SafeMath: addition overflow'
        mintedAmount += arg1
        if 10^9 * arg1 / 10^9 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if salePrice <= 0:
            mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[164] = 32
            idx = 0
            while idx < 26:
                mem[idx + 228] = mem[idx + 128]
                idx = idx + 32
                continue 
            mem[228] = mem[234 len 26]
            revert with 0, 32, 26, mem[228]
        require salePrice
        mem[196] = msg.sender
        mem[228] = 10^9 * arg1 / salePrice
        mem[160] = 68
        mem[192] = Mask(224, 32, msg.sender) >> 32 or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[260] = 32
        mem[292] = 'SafeERC20: low-level call failed'
        if ext_code.size(sub_f098c644Address) <= 0:
            revert with 0, 'Address: call to non-contract'
        s = 192
        t = 324
        idx = 68
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[388] = 0 or Mask(224, 32, mem[388])
        call sub_f098c644Address.mem[324 len 4] with:
             gas gas_remaining wei
            args mem[328 len 64]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[324] = return_data.size
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 329] = 32
            idx = 0
            while idx < 32:
                mem[ceil32(return_data.size) + idx + 393] = mem[idx + 292]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[ceil32(return_data.size) + 393]
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        mem[ceil32(return_data.size) + 361] = msg.sender
        mem[ceil32(return_data.size) + 393] = presaleWalletAddress
        mem[ceil32(return_data.size) + 425] = arg1
        mem[ceil32(return_data.size) + 325] = 100
        mem[ceil32(return_data.size) + 357] = Mask(224, 32, msg.sender) >> 32 or 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 457] = 32
        mem[ceil32(return_data.size) + 489] = 'SafeERC20: low-level call failed'
        if ext_code.size(baseTokenAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        s = ceil32(return_data.size) + 357
        t = ceil32(return_data.size) + 521
        idx = 100
        while idx >= 32:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx - 32
            continue 
        mem[ceil32(return_data.size) + 617] = 0 or Mask(224, 32, mem[ceil32(return_data.size) + 617])
        call baseTokenAddress.mem[ceil32(return_data.size) + 521 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 525 len 96]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[64] = (2 * ceil32(return_data.size)) + 522
        mem[ceil32(return_data.size) + 521] = return_data.size
        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 553]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            return 1, mem[(2 * ceil32(return_data.size)) + 554 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 522] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 526] = 32
        mem[(2 * ceil32(return_data.size)) + 558] = 32
        idx = 0
        while idx < mem[ceil32(return_data.size) + 457]:
            mem[(2 * ceil32(return_data.size)) + idx + 590] = mem[ceil32(return_data.size) + idx + 489]
            idx = idx + 32
            continue 
        revert with memory
          from mem[64]
           len (2 * ceil32(return_data.size)) + -mem[64] + 622
    revert with 0, 'Not whitelisted'
}



}
