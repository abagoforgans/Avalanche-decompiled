contract main {




// =====================  Runtime code  =====================


#
#  - claim()
#
address owner;
address tokenAddress;
address subjectAddress;
address walletAddress;
uint256 numerator;
uint256 denominator;
uint256 sub_9eb9efcf;
mapping of uint256 sub_28df0416;
mapping of uint8 stor9;
uint256 openingTime;
uint256 closingTime;
uint256 hardCap;
uint256 sub_504e4956;
uint8 stor14; offset 160
address sub_b32d2298Address;
address sub_a1862b4cAddress;
uint8 stor16; offset 160
uint32 stor16;
address walletContractAddress;
uint256 stor16;
uint256 fundRaised;

function subject() payable {
    return subjectAddress
}

function sub_28df0416(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_28df0416[arg1]
}

function endSale() payable {
    return bool(uint8(stor16.field_160))
}

function closingTime() payable {
    return closingTime
}

function claimOpen() payable {
    return bool(stor14)
}

function sub_504e4956(?) payable {
    return sub_504e4956
}

function wallet() payable {
    return walletAddress
}

function owner() payable {
    return owner
}

function denominator() payable {
    return denominator
}

function sub_9eb9efcf(?) payable {
    return sub_9eb9efcf
}

function sub_a1862b4c(?) payable {
    return sub_a1862b4cAddress
}

function sub_a2413f20(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_28df0416[address(arg1)]
}

function sub_b32d2298(?) payable {
    return sub_b32d2298Address
}

function openingTime() payable {
    return openingTime
}

function fundRaised() payable {
    return fundRaised
}

function claimed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function numerator() payable {
    return numerator
}

function walletContract() payable {
    return walletContractAddress
}

function hardCap() payable {
    return hardCap
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function hasClosed() payable {
    return (block.timestamp > closingTime)
}

function openClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = 1
}

function closeClaim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14 = 0
}

function endOfSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_160) = 1
}

function isOpen() payable {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setCap(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    hardCap = arg1
    sub_504e4956 = arg2
}

function getTokenAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 and numerator > -1 / arg1:
        revert with 0, 17
    if not denominator:
        revert with 0, 18
    return (arg1 * numerator / denominator)
}

function sub_7530a1be(?) payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: token is the zero address'
    tokenAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function extendTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > closingTime:
        revert with 0, 'TimedCrowdsale: already closed'
    if arg1 <= closingTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TimedCrowdsale: new closing time is before current closing time'
    emit TimedCrowdsaleExtended(closingTime, arg1);
    closingTime = arg1
}

function sub_cb2ed4f0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if sub_504e4956 < sub_28df0416[address(arg1)]:
        return 0
    if arg2 > !sub_9eb9efcf:
        revert with 0, 17
    if arg2 + sub_9eb9efcf <= hardCap:
        if arg2 < sub_28df0416[address(arg1)]:
            revert with 0, 17
        return (arg2 - sub_28df0416[address(arg1)])
    if hardCap < sub_9eb9efcf:
        revert with 0, 17
    if hardCap - sub_9eb9efcf < sub_28df0416[address(arg1)]:
        revert with 0, 17
    return (hardCap - sub_9eb9efcf - sub_28df0416[address(arg1)])
}

function emergencyWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cbc432a9(?) payable {
    require calldata.size - 4 >= 160
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Crowdsale: rate is 0'
    if arg2 <= 0:
        revert with 0, 'Crowdsale: rate is 0'
    if not address(arg3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: wallet is the zero address'
    if not address(arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Crowdsale: subjuct is the zero address'
    numerator = arg1
    denominator = arg2
    walletAddress = address(arg3)
    tokenAddress = address(arg5)
    subjectAddress = address(arg4)
}

function canClaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_28df0416[address(arg1)] and numerator > -1 / sub_28df0416[address(arg1)]:
        revert with 0, 17
    if not denominator:
        revert with 0, 18
    if block.timestamp <= closingTime:
        return (block.timestamp > closingTime)
    if stor9[address(arg1)]:
        return not bool(stor9[address(arg1)])
    if not sub_28df0416[address(arg1)] * numerator / denominator:
        return bool(sub_28df0416[address(arg1)] * numerator / denominator)
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args walletAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_28df0416[address(arg1)] * numerator / denominator:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args walletAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return ext_call.return_data[0] >= sub_28df0416[address(arg1)] * numerator / denominator
}

function sub_e2f0aef6(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor16.field_160):
        revert with 0, 'Presale is not over yet'
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = walletContractAddress
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor16.field_0)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor16.field_0), uint32(stor16.field_0), ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor16.field_0), uint32(stor16.field_0), ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor16.field_0), uint32(stor16.field_0), ext_call.return_data[0], 0) << 288)
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
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0xd004b03600000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_b32d2298Address)
    staticcall sub_b32d2298Address.getTokenIds(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require return_data.size >= _4 + (32 * _5) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _5] = mem[_4 + 128 len 32 * _5]
    if _5:
        revert with 0, 'You need to buy with the Whitelist Sale'
    if sub_504e4956 < sub_28df0416[address(msg.sender)]:
        revert with 0, 'Presale Alert: Purchase amount is 0.'
    if arg1 > !sub_9eb9efcf:
        revert with 0, 17
    if arg1 + sub_9eb9efcf <= hardCap:
        if arg1 < sub_28df0416[address(msg.sender)]:
            revert with 0, 17
        if arg1 - sub_28df0416[address(msg.sender)] <= 0:
            revert with 0, 'Presale Alert: Purchase amount is 0.'
        if sub_28df0416[msg.sender] > !(arg1 - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        if sub_28df0416[msg.sender] + arg1 - sub_28df0416[address(msg.sender)] > sub_504e4956:
            revert with 0, 'Presale Alert: Purchase amount is above cap.'
        mem[0] = msg.sender
        mem[32] = 8
        if sub_504e4956 < sub_28df0416[msg.sender]:
            revert with 0, 17
        if sub_504e4956 - sub_28df0416[msg.sender] > sub_504e4956:
            revert with 0, 'Presale Alert: User has already purchased max amount.'
        _292 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = walletAddress
        mem[mem[64] + 100] = arg1 - sub_28df0416[address(msg.sender)]
        _295 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_292 + 132] = 32
        mem[_292 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(subjectAddress):
            revert with 0, 'Address: call to non-contract'
        _308 = mem[_295]
        mem[_292 + 196 len ceil32(mem[_295])] = mem[_295 + 32 len ceil32(mem[_295])]
        if ceil32(_308) > _308:
            mem[_308 + _292 + 196] = 0
        call subjectAddress with:
             gas gas_remaining wei
            args mem[_292 + 200 len _308 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32:
                    revert with memory
                      from 128
                       len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32:
                require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_292 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_292 + 228] == bool(mem[_292 + 228])
                if not mem[_292 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(subjectAddress)
        call subjectAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_a1862b4cAddress, arg1 - sub_28df0416[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_9eb9efcf > !(arg1 - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        sub_9eb9efcf = sub_9eb9efcf + arg1 - sub_28df0416[address(msg.sender)]
        if sub_28df0416[msg.sender] > !(arg1 - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        sub_28df0416[msg.sender] = sub_28df0416[msg.sender] + arg1 - sub_28df0416[address(msg.sender)]
        if fundRaised > !(arg1 - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        fundRaised = fundRaised + arg1 - sub_28df0416[address(msg.sender)]
        emit TokenPurchased((arg1 - sub_28df0416[address(msg.sender)]), msg.sender);
    else:
        if hardCap < sub_9eb9efcf:
            revert with 0, 17
        if hardCap - sub_9eb9efcf < sub_28df0416[address(msg.sender)]:
            revert with 0, 17
        if hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)] <= 0:
            revert with 0, 'Presale Alert: Purchase amount is 0.'
        if sub_28df0416[msg.sender] > !(hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        if sub_28df0416[msg.sender] + hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)] > sub_504e4956:
            revert with 0, 'Presale Alert: Purchase amount is above cap.'
        mem[0] = msg.sender
        mem[32] = 8
        if sub_504e4956 < sub_28df0416[msg.sender]:
            revert with 0, 17
        if sub_504e4956 - sub_28df0416[msg.sender] > sub_504e4956:
            revert with 0, 'Presale Alert: User has already purchased max amount.'
        _297 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = walletAddress
        mem[mem[64] + 100] = hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]
        _300 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_297 + 132] = 32
        mem[_297 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(subjectAddress):
            revert with 0, 'Address: call to non-contract'
        _313 = mem[_300]
        mem[_297 + 196 len ceil32(mem[_300])] = mem[_300 + 32 len ceil32(mem[_300])]
        if ceil32(_313) > _313:
            mem[_313 + _297 + 196] = 0
        call subjectAddress with:
             gas gas_remaining wei
            args mem[_297 + 200 len _313 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96 len 4], Mask(224, 32, msg.sender) >> 32:
                    revert with memory
                      from 128
                       len mem[96 len 4], Mask(224, 32, msg.sender) >> 32
                revert with 0, 'SafeERC20: low-level call failed'
            if mem[96 len 4], Mask(224, 32, msg.sender) >> 32:
                require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 >= 32
                require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
                if not uint32(msg.sender), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_297 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_297 + 228] == bool(mem[_297 + 228])
                if not mem[_297 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(subjectAddress)
        call subjectAddress.0xa9059cbb with:
             gas gas_remaining wei
            args sub_a1862b4cAddress, hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_9eb9efcf > !(hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        sub_9eb9efcf = hardCap - sub_28df0416[address(msg.sender)]
        if sub_28df0416[msg.sender] > !(hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        sub_28df0416[msg.sender] = sub_28df0416[msg.sender] + hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]
        if fundRaised > !(hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]):
            revert with 0, 17
        fundRaised = fundRaised + hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]
        emit TokenPurchased((hardCap - sub_9eb9efcf - sub_28df0416[address(msg.sender)]), msg.sender);
}



}
