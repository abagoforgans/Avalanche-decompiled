contract main {




// =====================  Runtime code  =====================


const releasePeriod = (720 * 24 * 3600)


address owner;
uint256 stor1;
mapping of struct sales;
uint256 start;
uint256 end;
uint256 price;
uint256 sub_d9825381;
uint256 releaseTime;
uint256 numberParticipants;
address whitelistContractAddress;
address tokenAddress;
address currencyAddress;

function sub_225b712a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sales[address(arg1)].field_0, 
           sales[address(arg1)].field_256,
           sales[address(arg1)].field_512,
           bool(sales[address(arg1)].field_768)
}

function numberParticipants() payable {
    return numberParticipants
}

function whitelistContract() payable {
    return whitelistContractAddress
}

function owner() payable {
    return owner
}

function price() payable {
    return price
}

function releaseTime() payable {
    return releaseTime
}

function start() payable {
    return start
}

function sales(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sales[arg1].field_0, sales[arg1].field_256, sales[arg1].field_512, bool(sales[arg1].field_768)
}

function sub_d9825381(?) payable {
    return sub_d9825381
}

function currency() payable {
    return currencyAddress
}

function end() payable {
    return end
}

function token() payable {
    return tokenAddress
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isPoolWhiteListed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Zero account'
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_106bbf3b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Zero beneficiary address'
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < end:
        revert with 0, 'Not ended yet'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = this.address
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(currencyAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call currencyAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Withdraw(ext_call.return_data[0], msg.sender);
    stor1 = 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if start > block.timestamp:
        revert with 0, 'Pool is not active'
    if block.timestamp > end:
        revert with 0, 'Pool is not active'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = msg.sender
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.isWhitelisted(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'You are not whitelisted'
    if sales[address(msg.sender)].field_0:
        revert with 0, 'Already purchased'
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(currencyAddress)
    staticcall currencyAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient account balance'
    if not msg.sender:
        revert with 0, 'Zero beneficiary address'
    mem[(2 * ceil32(return_data.size)) + 100] = msg.sender
    require ext_code.size(whitelistContractAddress)
    staticcall whitelistContractAddress.whitelistedAmountFor(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Maximum allocation size'
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    mem[(4 * ceil32(return_data.size)) + 132] = arg1
    require ext_code.size(currencyAddress)
    call currencyAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(6 * ceil32(return_data.size)) + 164] = this.address
    mem[(6 * ceil32(return_data.size)) + 196] = arg1
    mem[(6 * ceil32(return_data.size)) + 96] = 100
    mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(6 * ceil32(return_data.size)) + 228] = 32
    mem[(6 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(currencyAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(6 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[(6 * ceil32(return_data.size)) + 392] = 0
    call currencyAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(6 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(6 * ceil32(return_data.size)) + 324] == bool(mem[(6 * ceil32(return_data.size)) + 324])
            if not mem[(6 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if not price:
        revert with 'NH{q', 18
    if arg1 / price and 10^18 > -1 / arg1 / price:
        revert with 'NH{q', 17
    sales[address(msg.sender)].field_0 = 10^18 * arg1 / price
    sales[address(msg.sender)].field_256 = 10^18 * arg1 / price
    sales[address(msg.sender)].field_512 = releaseTime
    sales[address(msg.sender)].field_768 = 1
    if numberParticipants > -2:
        revert with 'NH{q', 17
    numberParticipants++
    if sub_d9825381 > (-1 * 10^18 * arg1 / price) - 1:
        revert with 'NH{q', 17
    sub_d9825381 += 10^18 * arg1 / price
    emit Buy(arg1, 10^18 * arg1 / price, msg.sender);
    stor1 = 1
}

function emergencyWithdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(currencyAddress)
        staticcall currencyAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(currencyAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call currencyAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
                    if not mem[(2 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdraw(ext_call.return_data[0], msg.sender);
    else:
        mem[ceil32(return_data.size) + 100] = msg.sender
        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit EmergencyWithdraw(ext_call.return_data[0], msg.sender);
        mem[(2 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(currencyAddress)
        staticcall currencyAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(currencyAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call currencyAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                    if not 0, mem[132 len 28]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                    if not mem[(4 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdraw(ext_call.return_data[0], msg.sender);
    stor1 = 1
}

function release() payable {
    mem[128] = sales[address(msg.sender)].field_256
    mem[160] = sales[address(msg.sender)].field_512
    mem[192] = bool(sales[address(msg.sender)].field_768)
    if sales[address(msg.sender)].field_256 <= 0:
        revert with 0, 'All tokens were released'
    if block.timestamp < sales[address(msg.sender)].field_512:
        revert with 0, 'Please wait until release time'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[224] = sales[address(msg.sender)].field_0
    mem[320] = bool(sales[address(msg.sender)].field_768)
    if not sales[address(msg.sender)].field_768:
        if sales[address(msg.sender)].field_0 and 14 > -1 / sales[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if 14 * sales[address(msg.sender)].field_0 / 100 > sales[address(msg.sender)].field_256:
            if sales[address(msg.sender)].field_256 < sales[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            mem[256] = 0
            if sales[address(msg.sender)].field_512 > -2592001:
                revert with 'NH{q', 17
            mem[288] = sales[address(msg.sender)].field_512 + (720 * 24 * 3600)
            sales[address(msg.sender)].field_256 = 0
            sales[address(msg.sender)].field_512 += 720 * 24 * 3600
            sales[address(msg.sender)].field_768 = uint8(bool(sales[address(msg.sender)].field_768))
            mem[388] = msg.sender
            mem[420] = sales[address(msg.sender)].field_256
            mem[352] = 68
            mem[388 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[384 len 4] = unknown_0xa9059cbb(?????)
            mem[452] = 32
            mem[484] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[516 len 96] = unknown_0xa9059cbb(?????), msg.sender, sales[address(msg.sender)].field_256, 0
            mem[584] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sales[address(msg.sender)].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sales[address(msg.sender)].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sales[address(msg.sender)].field_0 > 0:
                        revert with memory
                          from 128
                           len sales[address(msg.sender)].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sales[address(msg.sender)].field_0 > 0:
                    require sales[address(msg.sender)].field_0 >= 32
                    require sales[address(msg.sender)].field_256 == bool(sales[address(msg.sender)].field_256)
                    if not sales[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[548] == bool(mem[548])
                    if not mem[548]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Claim(sales[address(msg.sender)].field_256, msg.sender);
        else:
            if sales[address(msg.sender)].field_256 < 14 * sales[address(msg.sender)].field_0 / 100:
                revert with 'NH{q', 17
            mem[256] = sales[address(msg.sender)].field_256 - (14 * sales[address(msg.sender)].field_0 / 100)
            if sales[address(msg.sender)].field_512 > -2592001:
                revert with 'NH{q', 17
            mem[288] = sales[address(msg.sender)].field_512 + (720 * 24 * 3600)
            sales[address(msg.sender)].field_256 -= 14 * sales[address(msg.sender)].field_0 / 100
            sales[address(msg.sender)].field_512 += 720 * 24 * 3600
            sales[address(msg.sender)].field_768 = uint8(bool(sales[address(msg.sender)].field_768))
            mem[388] = msg.sender
            mem[420] = 14 * sales[address(msg.sender)].field_0 / 100
            mem[352] = 68
            mem[388 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[384 len 4] = unknown_0xa9059cbb(?????)
            mem[452] = 32
            mem[484] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[516 len 96] = unknown_0xa9059cbb(?????), msg.sender, 14 * sales[address(msg.sender)].field_0 / 100, 0
            mem[584] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 14 * sales[address(msg.sender)].field_0 / 100, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 14 * sales[address(msg.sender)].field_0 / 100, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sales[address(msg.sender)].field_0 > 0:
                        revert with memory
                          from 128
                           len sales[address(msg.sender)].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sales[address(msg.sender)].field_0 > 0:
                    require sales[address(msg.sender)].field_0 >= 32
                    require sales[address(msg.sender)].field_256 == bool(sales[address(msg.sender)].field_256)
                    if not sales[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[548] == bool(mem[548])
                    if not mem[548]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Claim((14 * sales[address(msg.sender)].field_0 / 100), msg.sender);
    else:
        mem[320] = 0
        if sales[address(msg.sender)].field_0 and 30 > -1 / sales[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if 30 * sales[address(msg.sender)].field_0 / 100 > sales[address(msg.sender)].field_256:
            if sales[address(msg.sender)].field_256 < sales[address(msg.sender)].field_256:
                revert with 'NH{q', 17
            mem[256] = 0
            if sales[address(msg.sender)].field_512 > -2592001:
                revert with 'NH{q', 17
            mem[288] = sales[address(msg.sender)].field_512 + (720 * 24 * 3600)
            sales[address(msg.sender)].field_256 = 0
            sales[address(msg.sender)].field_512 += 720 * 24 * 3600
            sales[address(msg.sender)].field_768 = 0
            mem[388] = msg.sender
            mem[420] = sales[address(msg.sender)].field_256
            mem[352] = 68
            mem[388 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[384 len 4] = unknown_0xa9059cbb(?????)
            mem[452] = 32
            mem[484] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[516 len 96] = unknown_0xa9059cbb(?????), msg.sender, sales[address(msg.sender)].field_256, 0
            mem[584] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sales[address(msg.sender)].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sales[address(msg.sender)].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sales[address(msg.sender)].field_0 > 0:
                        revert with memory
                          from 128
                           len sales[address(msg.sender)].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sales[address(msg.sender)].field_0 > 0:
                    require sales[address(msg.sender)].field_0 >= 32
                    require sales[address(msg.sender)].field_256 == bool(sales[address(msg.sender)].field_256)
                    if not sales[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[548] == bool(mem[548])
                    if not mem[548]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Claim(sales[address(msg.sender)].field_256, msg.sender);
        else:
            if sales[address(msg.sender)].field_256 < 30 * sales[address(msg.sender)].field_0 / 100:
                revert with 'NH{q', 17
            mem[256] = sales[address(msg.sender)].field_256 - (30 * sales[address(msg.sender)].field_0 / 100)
            if sales[address(msg.sender)].field_512 > -2592001:
                revert with 'NH{q', 17
            mem[288] = sales[address(msg.sender)].field_512 + (720 * 24 * 3600)
            sales[address(msg.sender)].field_256 -= 30 * sales[address(msg.sender)].field_0 / 100
            sales[address(msg.sender)].field_512 += 720 * 24 * 3600
            sales[address(msg.sender)].field_768 = 0
            mem[388] = msg.sender
            mem[420] = 30 * sales[address(msg.sender)].field_0 / 100
            mem[352] = 68
            mem[388 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[384 len 4] = unknown_0xa9059cbb(?????)
            mem[452] = 32
            mem[484] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[516 len 96] = unknown_0xa9059cbb(?????), msg.sender, 30 * sales[address(msg.sender)].field_0 / 100, 0
            mem[584] = 0
            call tokenAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 30 * sales[address(msg.sender)].field_0 / 100, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 30 * sales[address(msg.sender)].field_0 / 100, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if sales[address(msg.sender)].field_0 > 0:
                        revert with memory
                          from 128
                           len sales[address(msg.sender)].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if sales[address(msg.sender)].field_0 > 0:
                    require sales[address(msg.sender)].field_0 >= 32
                    require sales[address(msg.sender)].field_256 == bool(sales[address(msg.sender)].field_256)
                    if not sales[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[548] == bool(mem[548])
                    if not mem[548]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Claim((30 * sales[address(msg.sender)].field_0 / 100), msg.sender);
    stor1 = 1
}



}
