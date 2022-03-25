contract main {




// =====================  Runtime code  =====================


const decimals = 18

const version = '0.0.1', 0

const DOMAIN_TYPEHASH = 0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const VERSION_HASH = 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6


array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 nonces;
address owner;
uint256 totalDeposits;
address depositTokenAddress;
address sub_0e04d23aAddress;
address sub_32ea3b3eAddress;

function name() payable {
    return name[0 len name.length].field_0
}

function sub_0e04d23a(?) payable {
    return sub_0e04d23aAddress
}

function totalSupply() payable {
    return totalSupply
}

function sub_32ea3b3e(?) payable {
    return sub_32ea3b3eAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function totalDeposits() payable {
    return totalDeposits
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function depositToken() payable {
    return depositTokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0, '_approve::owner zero address'
    if not arg1:
        revert with 0, '_approve::spender zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function checkReward() payable {
    if not sub_0e04d23aAddress:
        return 0
    require ext_code.size(sub_0e04d23aAddress)
    staticcall sub_0e04d23aAddress.0xc4b24a46 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function estimateReinvestReward() payable {
    if not sub_0e04d23aAddress:
        return 0
    require ext_code.size(sub_0e04d23aAddress)
    staticcall sub_0e04d23aAddress.0xb9e57b80 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_1e1becdf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, invalid msg.sender'
    if sub_32ea3b3eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, not strategy updater'
    emit 0x98ed873e: sub_32ea3b3eAddress, address(arg1)
    sub_32ea3b3eAddress = address(arg1)
}

function revokeAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}

function recoverAVAX(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::recoverAVAX, amount too low'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::recoverAVAX, amount too high'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address rg1, uint256 rg2):
                   arg1,
    emit 0x0: arg1
}

function sub_953841eb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, invalid msg.sender'
    if sub_32ea3b3eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, not strategy updater'
    if not sub_0e04d23aAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::deployStrategyFunds, no strategy'
    require ext_code.size(sub_0e04d23aAddress)
    call sub_0e04d23aAddress.0xb6b55f25 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '_transferTokens: cannot transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    46,
                    0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                    0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function reinvest() payable {
    if msg.sender != tx.origin:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyEOA, invalid msg.sender'
    if not sub_0e04d23aAddress:
        revert with 0, 'Vault::reinvest, no strategy'
    require ext_code.size(sub_0e04d23aAddress)
    call sub_0e04d23aAddress.0xfdb5a03e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Vault::reinvest, not enough deposit tokens'
    if totalDeposits + ext_call.return_data[0] < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += ext_call.return_data[0]
    emit Reinvest(totalDeposits, totalSupply);
}

function getDomainSeparator() payable {
    if not bool(name.length):
        mem[96] = Mask(248, 8, name.length)
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    if bool(name.length) != 1:
        return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len -96]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    idx = 0
    s = 0
    while idx < name.length.field_1:
        mem[idx + 96] = name[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    return sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[96 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == depositTokenAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::recoverERC20, cannot recover deposit token'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::recoverERC20, amount too low'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Vault::recoverERC20, transfer failed'
    emit Recovered(arg2, arg1);
}

function getDepositTokensForShares(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return 0
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply * totalDeposits:
        return 0
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if totalSupply:
            return (0 / totalSupply)
    else:
        if arg1:
            if arg1 * totalDeposits / arg1 != totalDeposits:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if totalSupply:
                return (arg1 * totalDeposits / totalSupply)
    revert
}

function sub_a4514f48(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xe0dac435 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(depositTokenAddress)
    staticcall depositTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    call address(arg1).0x8980f11f with:
         gas gas_remaining wei
        args depositTokenAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function revokeStrategy() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, invalid msg.sender'
    if sub_32ea3b3eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, not strategy updater'
    if not sub_0e04d23aAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::revokeStrategy, no strategy'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args sub_0e04d23aAddress, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit 0x1e0f9bc8: sub_0e04d23aAddress, 0
    sub_0e04d23aAddress = 0
}

function getSharesForDepositTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return arg1
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply * totalDeposits:
        return arg1
    if not arg1:
        if totalDeposits <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if totalDeposits:
            return (0 / totalDeposits)
    else:
        if arg1:
            if arg1 * totalSupply / arg1 != totalSupply:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if totalDeposits <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if totalDeposits:
                return (arg1 * totalSupply / totalDeposits)
    revert
}

function sub_daccaf63(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, invalid msg.sender'
    if sub_32ea3b3eAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::onlyStrategyUpdater, not strategy updater'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Vault::updateStrategy, use revokeStrategy() instead'
    require ext_code.size(address(arg1))
    staticcall address(arg1).vault() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'Vault::updateStrategy, incompatible strategy'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xc89039c5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != depositTokenAddress:
        revert with 0, 'Vault::updateStrategy, incompatible strategy'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    emit 0x1e0f9bc8: sub_0e04d23aAddress, address(arg1)
    sub_0e04d23aAddress = address(arg1)
}

function sub_edfc3d33(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[36] + 36)]):
            mem[mem[64]] = 0x4ebb791600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = eth.balance(this.address)
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x4ebb7916 with:
                 gas gas_remaining wei
                args eth.balance(this.address)
        else:
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 4] = address(cd[4])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _16 = mem[_15]
            require mem[_15] == mem[_15]
            mem[mem[64]] = 0x8980f11f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[mem[64] + 36] = _16
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0x8980f11f with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[36] + 36)]), _16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    if arg4 < block.timestamp:
        revert with 0, 'permit::expired'
    nonces[address(arg1)]++
    if not bool(name.length):
        mem[320] = Mask(248, 8, name.length)
        signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    else:
        if bool(name.length) != 1:
            signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len -320]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
        else:
            idx = 0
            s = 0
            while idx < name.length.field_1:
                mem[idx + 320] = name[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            signer = erecover(sha3(0, sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[320 len name.length.field_1]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address), sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'Arch::validateSig: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'Arch::validateSig: invalid signature'
    if not arg1:
        revert with 0, '_approve::owner zero address'
    if not arg2:
        revert with 0, '_approve::spender zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if msg.sender == arg1:
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        '_transferTokens: cannot transfer to the zero address'
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        46,
                        0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                        0
    else:
        if allowance[address(arg1)][address(msg.sender)] == -1:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            '_transferTokens: cannot transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[174 len 18] >> 112,
                            0
        else:
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            47,
                            0x797472616e7366657246726f6d3a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[175 len 17] >> 120,
                            0
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            if not arg2:
                revert with 0, '_transferTokens: cannot transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            46,
                            0x655f7472616e73666572546f6b656e733a207472616e7366657220657863656564732066726f6d2062616c616e63, mem[270 len 18] >> 112,
                            0
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 4))))
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_3ca4d9f4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if arg2 <= 0:
        revert with 0, 'Vault::_deposit, amount too low'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Vault::_deposit, transferFrom failed'
    if sub_0e04d23aAddress:
        require ext_code.size(sub_0e04d23aAddress)
        call sub_0e04d23aAddress.0xb6b55f25 with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if totalSupply + arg2 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg2
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, address(arg1));
    else:
        require totalSupply
        if totalSupply * totalDeposits / totalSupply != totalDeposits:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply * totalDeposits:
            if totalSupply + arg2 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, 0, address(arg1));
        else:
            if not arg2:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalDeposits
                if totalSupply + (0 / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if balanceOf[address(arg1)] + (0 / totalDeposits) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += 0 / totalDeposits
                emit Transfer((0 / totalDeposits), 0, address(arg1));
            else:
                require arg2
                if arg2 * totalSupply / arg2 != totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalDeposits
                if totalSupply + (arg2 * totalSupply / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg2 * totalSupply / totalDeposits
                if balanceOf[address(arg1)] + (arg2 * totalSupply / totalDeposits) < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2 * totalSupply / totalDeposits
                emit Transfer((arg2 * totalSupply / totalDeposits), 0, address(arg1));
    if totalDeposits + arg2 < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += arg2
    emit Deposit(arg2, address(arg1));
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Vault::_deposit, amount too low'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Vault::_deposit, transferFrom failed'
    if sub_0e04d23aAddress:
        require ext_code.size(sub_0e04d23aAddress)
        call sub_0e04d23aAddress.0xb6b55f25 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        require totalSupply
        if totalSupply * totalDeposits / totalSupply != totalDeposits:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply * totalDeposits:
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not arg1:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalDeposits
                if totalSupply + (0 / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalDeposits
                emit Transfer((0 / totalDeposits), 0, msg.sender);
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalDeposits
                if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / totalDeposits
                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
    if totalDeposits + arg1 < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += arg1
    emit Deposit(arg1, msg.sender);
}

function depositWithPermit(uint256 arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.0xd505accf with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), arg1, arg2, arg3 << 248, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 <= 0:
        revert with 0, 'Vault::_deposit, amount too low'
    require ext_code.size(depositTokenAddress)
    call depositTokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Vault::_deposit, transferFrom failed'
    if sub_0e04d23aAddress:
        require ext_code.size(sub_0e04d23aAddress)
        call sub_0e04d23aAddress.0xb6b55f25 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not totalSupply:
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        require totalSupply
        if totalSupply * totalDeposits / totalSupply != totalDeposits:
            revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply * totalDeposits:
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
        else:
            if not arg1:
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalDeposits
                if totalSupply + (0 / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / totalDeposits
                if balanceOf[address(msg.sender)] + (0 / totalDeposits) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / totalDeposits
                emit Transfer((0 / totalDeposits), 0, msg.sender);
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if totalDeposits <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                require totalDeposits
                if totalSupply + (arg1 * totalSupply / totalDeposits) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / totalDeposits
                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / totalDeposits) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1 * totalSupply / totalDeposits
                emit Transfer((arg1 * totalSupply / totalDeposits), 0, msg.sender);
    if totalDeposits + arg1 < totalDeposits:
        revert with 0, 'SafeMath: addition overflow'
    totalDeposits += arg1
    emit Deposit(arg1, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'Vault::withdraw, amount too low'
    if not totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::withdraw, deposit amount too low'
    require totalSupply
    if totalSupply * totalDeposits / totalSupply != totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not totalSupply * totalDeposits:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Vault::withdraw, deposit amount too low'
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require totalSupply
        if 0 / totalSupply <= 0:
            revert with 0, 'Vault::withdraw, deposit amount too low'
        if sub_0e04d23aAddress:
            require ext_code.size(sub_0e04d23aAddress)
            call sub_0e04d23aAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 39, 0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[231 len 25] >> 56, 0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 32, 39, 0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[327 len 25] >> 56, 0
        else:
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < 0 / totalSupply:
                revert with 0, 'Vault::withdraw, failed'
            require ext_code.size(depositTokenAddress)
            call depositTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Vault::withdraw, transfer failed'
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            39,
                            0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[(2 * ceil32(return_data.size)) + 231 len 25] >> 56,
                            0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 
                            32,
                            39,
                            0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[(2 * ceil32(return_data.size)) + 327 len 25] >> 56,
                            0
        ('le', ('param', 'arg1'), ('stor', ('name', 'totalSupply', 2)))
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if 0 / totalSupply > totalDeposits:
            revert with 0, 'SafeMath: subtraction underflow', 0
        totalDeposits -= 0 / totalSupply
        emit Withdraw((0 / totalSupply), msg.sender);
    else:
        require arg1
        if arg1 * totalDeposits / arg1 != totalDeposits:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require totalSupply
        if arg1 * totalDeposits / totalSupply <= 0:
            revert with 0, 'Vault::withdraw, deposit amount too low'
        if sub_0e04d23aAddress:
            require ext_code.size(sub_0e04d23aAddress)
            call sub_0e04d23aAddress.withdraw(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, arg1 * totalDeposits / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 39, 0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[231 len 25] >> 56, 0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 32, 39, 0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[327 len 25] >> 56, 0
        else:
            require ext_code.size(depositTokenAddress)
            staticcall depositTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg1 * totalDeposits / totalSupply:
                revert with 0, 'Vault::withdraw, failed'
            require ext_code.size(depositTokenAddress)
            call depositTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 * totalDeposits / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Vault::withdraw, transfer failed'
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            39,
                            0x655f6275726e3a206275726e20616d6f756e7420657863656564732066726f6d2062616c616e63, mem[(2 * ceil32(return_data.size)) + 231 len 25] >> 56,
                            0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 
                            32,
                            39,
                            0xfe5f6275726e3a206275726e20616d6f756e74206578636565647320746f74616c20737570706c, mem[(2 * ceil32(return_data.size)) + 327 len 25] >> 56,
                            0
        ('le', ('param', 'arg1'), ('stor', ('name', 'totalSupply', 2)))
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if arg1 * totalDeposits / totalSupply > totalDeposits:
            revert with 0, 'SafeMath: subtraction underflow', 0
        totalDeposits -= arg1 * totalDeposits / totalSupply
        emit Withdraw((arg1 * totalDeposits / totalSupply), msg.sender);
}



}
