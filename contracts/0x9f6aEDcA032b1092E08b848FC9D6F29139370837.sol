contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const PERMIT_TYPEHASH = 0x736e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
address policyAddress;
address stor9;
address vaultAddress;
mapping of address routerForPair;
array of address pairs;
uint256 sub_665c6de9;
uint8 stor14; offset 160
uint8 sub_be80b05b; offset 168
uint128 stor14; offset 168
address stor14;
uint256 stor14;
uint256 stor15;
address stor16;
mapping of uint8 stor17;
uint256 sub_929c0ca8;
uint256 sub_e7670ded;
uint256 sub_ebb47541;

function policy() payable {
    return policyAddress
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function isExcludedFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[address(arg1)])
}

function sub_665c6de9(?) payable {
    return sub_665c6de9
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function routerForPair(address arg1) payable {
    require calldata.size - 4 >= 32
    return routerForPair[arg1]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function sub_929c0ca8(?) payable {
    return sub_929c0ca8
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function pairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pairs.length
    return address(pairs[arg1])
}

function sub_be80b05b(?) payable {
    return bool(sub_be80b05b)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e7670ded(?) payable {
    return sub_e7670ded
}

function sub_ebb47541(?) payable {
    return sub_ebb47541
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit 0x65ea8258: policyAddress, 0
    policyAddress = 0
}

function sub_232189b9(?) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    address(stor14.field_0) = arg1
}

function includeInFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    stor17[address(arg1)] = 0
}

function excludeFromFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    stor17[address(arg1)] = 1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    vaultAddress = arg1
    return 1
}

function sub_d6139fbe(?) payable {
    require calldata.size - 4 >= 96
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    Mask(88, 0, stor14.field_168) = Mask(88, 0, arg1)
    stor15 = arg2
    stor16 = arg3
}

function pullManagement() payable {
    if stor9 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x654f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(policyAddress, stor9);
    policyAddress = stor9
}

function setTaxes(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if arg1 > 2:
        revert with 0, 'Taxes overflow'
    if arg2 > 4:
        revert with 0, 'Taxes overflow'
    if arg3 > 1:
        revert with 0, 'Taxes overflow'
    sub_e7670ded = arg1
    sub_ebb47541 = arg2
    sub_929c0ca8 = arg3
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xba4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit 0x65ea8258: policyAddress, arg1
    stor9 = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0x65ddf252: arg1, msg.sender, 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if vaultAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x655661756c744f776e65643a2063616c6c6572206973206e6f7420746865205661756c,
                    mem[199 len 29]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit 0x65ddf252: arg2, this.address, arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x3045524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
}

function _burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x3045524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'Permit: expired deadline'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x736e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 32, 33, 0x6c5a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x6c5a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    nonces[address(arg1)]++
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function sub_5534ce86(?) payable {
    require calldata.size - 4 >= 96
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg3) >> 32
    mem[324 len 0] = 0
    call arg2 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg3
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    sub_665c6de9 = arg1
}

function sub_1375093e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    pairs.length = arg1.length
    if not arg1.length:
        idx = 0
        while pairs.length > idx:
            uint256(pairs[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(pairs[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while pairs.length > idx:
            uint256(pairs[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    while idx < pairs.length:
        require idx < arg2.length
        require idx < pairs.length
        mem[0] = address(pairs[idx])
        mem[32] = 11
        routerForPair[address(stor12[idx])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        idx = idx + 1
        continue 
}

function sub_c2371961(?) payable {
    require calldata.size - 4 >= 32
    if policyAddress != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    uint8(stor14.field_160) = 1
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not this.address:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not routerForPair[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(this.address)][stor11[address(arg1)]] = balanceOf[address(this.address)]
    emit Approval(balanceOf[address(this.address)], this.address, routerForPair[address(arg1)]);
    mem[388 len 0] = None
    require ext_code.size(routerForPair[address(arg1)])
    call routerForPair[address(arg1)].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args balanceOf[address(this.address)], 0, 160, address(stor14.field_0), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(stor14.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 100:
        if not ext_call.return_data[0]:
            if not balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / balanceOf[address(this.address)]:
                if 0 > 0 / balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / balanceOf[address(this.address)] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(stor14.field_0))
                call address(stor14.field_0).0x5ecfeb99 with:
                     gas gas_remaining wei
                    args 0, 0 / balanceOf[address(this.address)], ext_call.return_data[0] - (0 / balanceOf[address(this.address)]), address(ext_call.return_data[0])
            else:
                if 35 * 0 / balanceOf[address(this.address)] / 0 / balanceOf[address(this.address)] != 35:
                    revert with 0, 'eSafeMath: multiplication overflo'
                if 35 * 0 / balanceOf[address(this.address)] / 100 > 0 / balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 / balanceOf[address(this.address)] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(stor14.field_0))
                call address(stor14.field_0).0x5ecfeb99 with:
                     gas gas_remaining wei
                    args 35 * 0 / balanceOf[address(this.address)] / 100, (0 / balanceOf[address(this.address)]) - (35 * 0 / balanceOf[address(this.address)] / 100), ext_call.return_data[0] - (0 / balanceOf[address(this.address)]), address(ext_call.return_data[0])
        else:
            if sub_665c6de9 * ext_call.return_data[0] / ext_call.return_data[0] != sub_665c6de9:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor14.field_0)
            if not balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: division by zero'
            if not sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]:
                if 0 > sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(stor14.field_0))
                call address(stor14.field_0).0x5ecfeb99 with:
                     gas gas_remaining wei
                    args 0, sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)], ext_call.return_data[0] - (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]), address(ext_call.return_data[0])
            else:
                if 35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] != 35:
                    revert with 0, 'eSafeMath: multiplication overflo'
                if 35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100 > sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(stor14.field_0))
                call address(stor14.field_0).0x5ecfeb99 with:
                     gas gas_remaining wei
                    args 35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100, (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]) - (35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100), ext_call.return_data[0] - (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x7baeba94: balanceOf[address(this.address)]
        sub_665c6de9 = 0
    uint8(stor14.field_160) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xc945524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7245524332303a207472616e7366657220616d6f756e742063616e6e6f7420626520,
                    mem[198 len 30]
    mem[0] = this.address
    mem[32] = 0
    if balanceOf[address(this.address)] >= stor15:
        if not uint8(stor14.field_160):
            idx = 0
            while idx < pairs.length:
                mem[0] = 12
                if address(pairs[idx]) != msg.sender:
                    idx = idx + 1
                    continue 
                if not stor17[address(msg.sender)]:
                    mem[0] = arg1
                    mem[32] = 17
                    if not stor17[address(arg1)]:
                        idx = 0
                        while idx < pairs.length:
                            mem[0] = 12
                            if address(pairs[idx]) != msg.sender:
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < pairs.length:
                                mem[0] = 12
                                if address(pairs[idx]) != arg1:
                                    idx = idx + 1
                                    continue 
                                if not sub_929c0ca8:
                                    if not sub_e7670ded:
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_e7670ded / 100 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                        if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                    if sub_665c6de9 < sub_665c6de9:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not sub_e7670ded:
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_929c0ca8 / 100 > arg2:
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                    else:
                                        if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_e7670ded / 100 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                        if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * sub_929c0ca8 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                    if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                emit 0x65ddf252: arg2, msg.sender, arg1
                                return 1
                            if not sub_929c0ca8:
                                if not sub_e7670ded:
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_e7670ded / 100 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    mem[416] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                        mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[452] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 516] = mem[idx + 416]
                                            idx = idx + 32
                                            continue 
                                        mem[516] = mem[518 len 30]
                                        revert with 0, 32, 30, mem[516]
                                    if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                    if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                if sub_665c6de9 < sub_665c6de9:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not sub_e7670ded:
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    mem[416] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_929c0ca8 / 100 > arg2:
                                        mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[452] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 516] = mem[idx + 416]
                                            idx = idx + 32
                                            continue 
                                        mem[516] = mem[518 len 30]
                                        revert with 0, 32, 30, mem[516]
                                    if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                else:
                                    if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_e7670ded / 100 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    mem[416] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                        mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[452] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 516] = mem[idx + 416]
                                            idx = idx + 32
                                            continue 
                                        mem[516] = mem[518 len 30]
                                        revert with 0, 32, 30, mem[516]
                                    if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                    if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * sub_929c0ca8 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                            emit 0x65ddf252: arg2, msg.sender, arg1
                            return 1
                        idx = 0
                        while idx < pairs.length:
                            mem[0] = 12
                            if address(pairs[idx]) != arg1:
                                idx = idx + 1
                                continue 
                            if not sub_929c0ca8:
                                if not sub_ebb47541:
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] += arg2
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_ebb47541 / 100 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    mem[416] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2 - (arg2 * sub_ebb47541 / 100):
                                        mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[452] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 516] = mem[idx + 416]
                                            idx = idx + 32
                                            continue 
                                        mem[516] = mem[518 len 30]
                                        revert with 0, 32, 30, mem[516]
                                    if arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)]
                                    if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += arg2 * sub_ebb47541 / 100
                                if sub_665c6de9 < sub_665c6de9:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not sub_ebb47541:
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if 0 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    mem[416] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_929c0ca8 / 100 > arg2:
                                        mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[452] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 516] = mem[idx + 416]
                                            idx = idx + 32
                                            continue 
                                        mem[516] = mem[518 len 30]
                                        revert with 0, 32, 30, mem[516]
                                    if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                else:
                                    if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[324] = 32
                                        idx = 0
                                        while idx < 38:
                                            mem[idx + 388] = mem[idx + 256]
                                            idx = idx + 32
                                            continue 
                                        mem[420] = mem[446 len 6]
                                        revert with 0, 32, 38, mem[388 len 64]
                                    balanceOf[address(msg.sender)] -= arg2
                                    mem[352] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_ebb47541 / 100 > arg2:
                                        mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[388] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 452] = mem[idx + 352]
                                            idx = idx + 32
                                            continue 
                                        mem[452] = mem[454 len 30]
                                        revert with 0, 32, 30, mem[452]
                                    mem[416] = 'SafeMath: subtraction overflow'
                                    if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_ebb47541 / 100):
                                        mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[452] = 32
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + 516] = mem[idx + 416]
                                            idx = idx + 32
                                            continue 
                                        mem[516] = mem[518 len 30]
                                        revert with 0, 32, 30, mem[516]
                                    if arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                    if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if arg2 * sub_929c0ca8 / 100 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_ebb47541 / 100) + balanceOf[this.address]
                                if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                            emit 0x65ddf252: arg2, msg.sender, arg1
                            return 1
                mem[128 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if arg2 > balanceOf[address(msg.sender)]:
                    mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[196] = 32
                    idx = 0
                    while idx < 38:
                        mem[idx + 260] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    mem[292] = mem[318 len 6]
                    revert with 0, 32, 38, mem[260 len 64]
                balanceOf[address(msg.sender)] -= arg2
                mem[224] = 'SafeMath: subtraction overflow'
                if 0 > arg2:
                    mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[260] = 32
                    idx = 0
                    while idx < 30:
                        mem[idx + 324] = mem[idx + 224]
                        idx = idx + 32
                        continue 
                    mem[324] = mem[326 len 30]
                    revert with 0, 32, 30, mem[324]
                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                if balanceOf[this.address] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_665c6de9 < sub_665c6de9:
                    revert with 0, 'SafeMath: addition overflow'
                emit 0x65ddf252: arg2, msg.sender, arg1
                return 1
            idx = 0
            while idx < pairs.length:
                mem[0] = 12
                if address(pairs[idx]) != arg1:
                    idx = idx + 1
                    continue 
                if not sub_be80b05b:
                    if not stor17[address(msg.sender)]:
                        mem[0] = arg1
                        mem[32] = 17
                        if not stor17[address(arg1)]:
                            idx = 0
                            while idx < pairs.length:
                                mem[0] = 12
                                if address(pairs[idx]) != msg.sender:
                                    idx = idx + 1
                                    continue 
                                idx = 0
                                while idx < pairs.length:
                                    mem[0] = 12
                                    if address(pairs[idx]) != arg1:
                                        idx = idx + 1
                                        continue 
                                    if not sub_929c0ca8:
                                        if not sub_e7670ded:
                                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[324] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 388] = mem[idx + 256]
                                                    idx = idx + 32
                                                    continue 
                                                mem[420] = mem[446 len 6]
                                                revert with 0, 32, 38, mem[388 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[352] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[388] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 452] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[452] = mem[454 len 30]
                                                revert with 0, 32, 30, mem[452]
                                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[324] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 388] = mem[idx + 256]
                                                    idx = idx + 32
                                                    continue 
                                                mem[420] = mem[446 len 6]
                                                revert with 0, 32, 38, mem[388 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[352] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_e7670ded / 100 > arg2:
                                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[388] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 452] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[452] = mem[454 len 30]
                                                revert with 0, 32, 30, mem[452]
                                            mem[416] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                                mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[452] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 516] = mem[idx + 416]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[518 len 30]
                                                revert with 0, 32, 30, mem[516]
                                            if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                        if sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not sub_e7670ded:
                                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[324] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 388] = mem[idx + 256]
                                                    idx = idx + 32
                                                    continue 
                                                mem[420] = mem[446 len 6]
                                                revert with 0, 32, 38, mem[388 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[352] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[388] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 452] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[452] = mem[454 len 30]
                                                revert with 0, 32, 30, mem[452]
                                            mem[416] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2:
                                                mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[452] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 516] = mem[idx + 416]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[518 len 30]
                                                revert with 0, 32, 30, mem[516]
                                            if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                        else:
                                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[324] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 388] = mem[idx + 256]
                                                    idx = idx + 32
                                                    continue 
                                                mem[420] = mem[446 len 6]
                                                revert with 0, 32, 38, mem[388 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[352] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_e7670ded / 100 > arg2:
                                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[388] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 452] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[452] = mem[454 len 30]
                                                revert with 0, 32, 30, mem[452]
                                            mem[416] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                                mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[452] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 516] = mem[idx + 416]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[518 len 30]
                                                revert with 0, 32, 30, mem[516]
                                            if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * sub_929c0ca8 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                        if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                    emit 0x65ddf252: arg2, msg.sender, arg1
                                    return 1
                                if not sub_929c0ca8:
                                    if not sub_e7670ded:
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_e7670ded / 100 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                        if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                    if sub_665c6de9 < sub_665c6de9:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not sub_e7670ded:
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_929c0ca8 / 100 > arg2:
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                    else:
                                        if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_e7670ded / 100 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                        if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * sub_929c0ca8 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                    if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                emit 0x65ddf252: arg2, msg.sender, arg1
                                return 1
                            idx = 0
                            while idx < pairs.length:
                                mem[0] = 12
                                if address(pairs[idx]) != arg1:
                                    idx = idx + 1
                                    continue 
                                if not sub_929c0ca8:
                                    if not sub_ebb47541:
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] += arg2
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_ebb47541 / 100 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2 - (arg2 * sub_ebb47541 / 100):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)]
                                        if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] += arg2 * sub_ebb47541 / 100
                                    if sub_665c6de9 < sub_665c6de9:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not sub_ebb47541:
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if 0 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_929c0ca8 / 100 > arg2:
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                    else:
                                        if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[324] = 32
                                            idx = 0
                                            while idx < 38:
                                                mem[idx + 388] = mem[idx + 256]
                                                idx = idx + 32
                                                continue 
                                            mem[420] = mem[446 len 6]
                                            revert with 0, 32, 38, mem[388 len 64]
                                        balanceOf[address(msg.sender)] -= arg2
                                        mem[352] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_ebb47541 / 100 > arg2:
                                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[388] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 452] = mem[idx + 352]
                                                idx = idx + 32
                                                continue 
                                            mem[452] = mem[454 len 30]
                                            revert with 0, 32, 30, mem[452]
                                        mem[416] = 'SafeMath: subtraction overflow'
                                        if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_ebb47541 / 100):
                                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                            mem[452] = 32
                                            idx = 0
                                            while idx < 30:
                                                mem[idx + 516] = mem[idx + 416]
                                                idx = idx + 32
                                                continue 
                                            mem[516] = mem[518 len 30]
                                            revert with 0, 32, 30, mem[516]
                                        if arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                        if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if arg2 * sub_929c0ca8 / 100 < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_ebb47541 / 100) + balanceOf[this.address]
                                    if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                emit 0x65ddf252: arg2, msg.sender, arg1
                                return 1
                    mem[128 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                    if arg2 > balanceOf[address(msg.sender)]:
                        mem[192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[196] = 32
                        idx = 0
                        while idx < 38:
                            mem[idx + 260] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        mem[292] = mem[318 len 6]
                        revert with 0, 32, 38, mem[260 len 64]
                    balanceOf[address(msg.sender)] -= arg2
                    mem[224] = 'SafeMath: subtraction overflow'
                    if 0 > arg2:
                        mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[260] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + 324] = mem[idx + 224]
                            idx = idx + 32
                            continue 
                        mem[324] = mem[326 len 30]
                        revert with 0, 32, 30, mem[324]
                else:
                    uint8(stor14.field_160) = 1
                    if not stor16:
                        require ext_code.size(arg1)
                        staticcall arg1.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        staticcall arg1.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = this.address
                        mem[160] = address(ext_call.return_data[0])
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not routerForPair[address(arg1)]:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][stor11[address(arg1)]] = balanceOf[address(this.address)]
                        emit Approval(balanceOf[address(this.address)], this.address, routerForPair[address(arg1)]);
                        mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[196] = balanceOf[address(this.address)]
                        mem[228] = 0
                        mem[292] = address(stor14.field_0)
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        idx = 0
                        while idx < 64:
                            mem[idx + 388] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(routerForPair[address(arg1)])
                        call routerForPair[address(arg1)].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)], 0, 160, address(stor14.field_0), block.timestamp, 2, mem[388 len 64]
                    else:
                        require ext_code.size(stor16)
                        staticcall stor16.token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor16)
                        staticcall stor16.token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[96] = 2
                        mem[64] = 192
                        mem[128] = this.address
                        mem[160] = address(ext_call.return_data[0])
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
                        if not routerForPair[stor16]:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
                        allowance[address(this.address)][stor11[stor16]] = balanceOf[address(this.address)]
                        emit Approval(balanceOf[address(this.address)], this.address, routerForPair[stor16]);
                        mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                        mem[196] = balanceOf[address(this.address)]
                        mem[228] = 0
                        mem[292] = address(stor14.field_0)
                        mem[324] = block.timestamp
                        mem[260] = 160
                        mem[356] = 2
                        idx = 0
                        while idx < 64:
                            mem[idx + 388] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        require ext_code.size(routerForPair[stor16])
                        call routerForPair[stor16].swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args balanceOf[address(this.address)], 0, 160, address(stor14.field_0), block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[196] = address(stor14.field_0)
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor14.field_0)
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 100:
                        uint8(stor14.field_160) = 0
                        if not stor17[address(msg.sender)]:
                            mem[0] = arg1
                            mem[32] = 17
                            if not stor17[address(arg1)]:
                                idx = 0
                                while idx < pairs.length:
                                    mem[0] = 12
                                    if address(pairs[idx]) != msg.sender:
                                        idx = idx + 1
                                        continue 
                                    idx = 0
                                    while idx < pairs.length:
                                        mem[0] = 12
                                        if address(pairs[idx]) != arg1:
                                            idx = idx + 1
                                            continue 
                                        if not sub_929c0ca8:
                                            if not sub_e7670ded:
                                                mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[420] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 484] = mem[idx + 352]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[516] = mem[542 len 6]
                                                    revert with 0, 32, 38, mem[484 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[448] = 'SafeMath: subtraction overflow'
                                                if 0 > arg2:
                                                    mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[484] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 548] = mem[idx + 448]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[548] = mem[550 len 30]
                                                    revert with 0, 32, 30, mem[548]
                                                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                    revert with 0, 'eSafeMath: multiplication overflo'
                                                mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[420] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 484] = mem[idx + 352]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[516] = mem[542 len 6]
                                                    revert with 0, 32, 38, mem[484 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[448] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_e7670ded / 100 > arg2:
                                                    mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[484] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 548] = mem[idx + 448]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[548] = mem[550 len 30]
                                                    revert with 0, 32, 30, mem[548]
                                                mem[512] = 'SafeMath: subtraction overflow'
                                                if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                                    mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[548] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 612] = mem[idx + 512]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[612] = mem[614 len 30]
                                                    revert with 0, 32, 30, mem[612]
                                                if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                                if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                            if sub_665c6de9 < sub_665c6de9:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor14.field_0)
                                            if not sub_e7670ded:
                                                mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[420] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 484] = mem[idx + 352]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[516] = mem[542 len 6]
                                                    revert with 0, 32, 38, mem[484 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[448] = 'SafeMath: subtraction overflow'
                                                if 0 > arg2:
                                                    mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[484] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 548] = mem[idx + 448]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[548] = mem[550 len 30]
                                                    revert with 0, 32, 30, mem[548]
                                                mem[512] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_929c0ca8 / 100 > arg2:
                                                    mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[548] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 612] = mem[idx + 512]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[612] = mem[614 len 30]
                                                    revert with 0, 32, 30, mem[612]
                                                if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                            else:
                                                if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                    revert with 0, 'eSafeMath: multiplication overflo'
                                                mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[420] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 484] = mem[idx + 352]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[516] = mem[542 len 6]
                                                    revert with 0, 32, 38, mem[484 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[448] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_e7670ded / 100 > arg2:
                                                    mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[484] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 548] = mem[idx + 448]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[548] = mem[550 len 30]
                                                    revert with 0, 32, 30, mem[548]
                                                mem[512] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                                    mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[548] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 612] = mem[idx + 512]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[612] = mem[614 len 30]
                                                    revert with 0, 32, 30, mem[612]
                                                if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                                if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 * sub_929c0ca8 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                            if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                        emit 0x65ddf252: arg2, msg.sender, arg1
                                        return 1
                                    if not sub_929c0ca8:
                                        if not sub_e7670ded:
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                revert with 0, 'eSafeMath: multiplication overflo'
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_e7670ded / 100 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            mem[512] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                                mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[548] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 612] = mem[idx + 512]
                                                    idx = idx + 32
                                                    continue 
                                                mem[612] = mem[614 len 30]
                                                revert with 0, 32, 30, mem[612]
                                            if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                        if sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor14.field_0)
                                        if not sub_e7670ded:
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            mem[512] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2:
                                                mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[548] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 612] = mem[idx + 512]
                                                    idx = idx + 32
                                                    continue 
                                                mem[612] = mem[614 len 30]
                                                revert with 0, 32, 30, mem[612]
                                            if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                        else:
                                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                revert with 0, 'eSafeMath: multiplication overflo'
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_e7670ded / 100 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            mem[512] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                                mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[548] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 612] = mem[idx + 512]
                                                    idx = idx + 32
                                                    continue 
                                                mem[612] = mem[614 len 30]
                                                revert with 0, 32, 30, mem[612]
                                            if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * sub_929c0ca8 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                        if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                    emit 0x65ddf252: arg2, msg.sender, arg1
                                    return 1
                                idx = 0
                                while idx < pairs.length:
                                    mem[0] = 12
                                    if address(pairs[idx]) != arg1:
                                        idx = idx + 1
                                        continue 
                                    if not sub_929c0ca8:
                                        if not sub_ebb47541:
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                                revert with 0, 'eSafeMath: multiplication overflo'
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_ebb47541 / 100 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            mem[512] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2 - (arg2 * sub_ebb47541 / 100):
                                                mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[548] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 612] = mem[idx + 512]
                                                    idx = idx + 32
                                                    continue 
                                                mem[612] = mem[614 len 30]
                                                revert with 0, 32, 30, mem[612]
                                            if arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_ebb47541 / 100
                                        if sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor14.field_0)
                                        if not sub_ebb47541:
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            mem[512] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2:
                                                mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[548] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 612] = mem[idx + 512]
                                                    idx = idx + 32
                                                    continue 
                                                mem[612] = mem[614 len 30]
                                                revert with 0, 32, 30, mem[612]
                                            if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                        else:
                                            if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                                revert with 0, 'eSafeMath: multiplication overflo'
                                            mem[352 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[420] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 484] = mem[idx + 352]
                                                    idx = idx + 32
                                                    continue 
                                                mem[516] = mem[542 len 6]
                                                revert with 0, 32, 38, mem[484 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[448] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_ebb47541 / 100 > arg2:
                                                mem[480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[484] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 548] = mem[idx + 448]
                                                    idx = idx + 32
                                                    continue 
                                                mem[548] = mem[550 len 30]
                                                revert with 0, 32, 30, mem[548]
                                            mem[512] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_ebb47541 / 100):
                                                mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[548] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 612] = mem[idx + 512]
                                                    idx = idx + 32
                                                    continue 
                                                mem[612] = mem[614 len 30]
                                                revert with 0, 32, 30, mem[612]
                                            if arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * sub_929c0ca8 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_ebb47541 / 100) + balanceOf[this.address]
                                        if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                    emit 0x65ddf252: arg2, msg.sender, arg1
                                    return 1
                        mem[224 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[292] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 356] = mem[idx + 224]
                                idx = idx + 32
                                continue 
                            mem[388] = mem[414 len 6]
                            revert with 0, 32, 38, mem[356 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[320] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            mem[352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[356] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 420] = mem[idx + 320]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[422 len 30]
                            revert with 0, 32, 30, mem[420]
                    else:
                        if not ext_call.return_data[0]:
                            mem[192] = 26
                            mem[224] = 'SafeMath: division by zero' << 48
                            if not balanceOf[address(this.address)]:
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 324] = mem[idx + 224]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not 0 / balanceOf[address(this.address)]:
                                mem[256] = 26
                                mem[288] = 'SafeMath: division by zero' << 48
                                mem[320] = 30
                                mem[352] = 'SafeMath: subtraction overflow'
                                if 0 > 0 / balanceOf[address(this.address)]:
                                    mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[388] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 452] = mem[idx + 352]
                                        idx = idx + 32
                                        continue 
                                    mem[452] = mem[454 len 30]
                                    revert with 0, 32, 30, mem[452]
                                mem[64] = 448
                                mem[384] = 30
                                mem[416] = 'SafeMath: subtraction overflow'
                                if 0 / balanceOf[address(this.address)] > ext_call.return_data[0]:
                                    mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[452] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 516] = mem[idx + 416]
                                        idx = idx + 32
                                        continue 
                                    mem[516] = mem[518 len 30]
                                    revert with 0, 32, 30, mem[516]
                                mem[452] = 0
                                mem[484] = 0 / balanceOf[address(this.address)]
                                mem[516] = ext_call.return_data[0] - (0 / balanceOf[address(this.address)])
                                mem[548] = address(ext_call.return_data[0])
                                require ext_code.size(address(stor14.field_0))
                                call address(stor14.field_0).0x5ecfeb99 with:
                                     gas gas_remaining wei
                                    args 0, 0 / balanceOf[address(this.address)], ext_call.return_data[0] - (0 / balanceOf[address(this.address)]), address(ext_call.return_data[0])
                            else:
                                if 35 * 0 / balanceOf[address(this.address)] / 0 / balanceOf[address(this.address)] != 35:
                                    revert with 0, 'eSafeMath: multiplication overflo'
                                mem[256] = 26
                                mem[288] = 'SafeMath: division by zero' << 48
                                mem[320] = 30
                                mem[352] = 'SafeMath: subtraction overflow'
                                if 35 * 0 / balanceOf[address(this.address)] / 100 > 0 / balanceOf[address(this.address)]:
                                    mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[388] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 452] = mem[idx + 352]
                                        idx = idx + 32
                                        continue 
                                    mem[452] = mem[454 len 30]
                                    revert with 0, 32, 30, mem[452]
                                mem[64] = 448
                                mem[384] = 30
                                mem[416] = 'SafeMath: subtraction overflow'
                                if 0 / balanceOf[address(this.address)] > ext_call.return_data[0]:
                                    mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[452] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 516] = mem[idx + 416]
                                        idx = idx + 32
                                        continue 
                                    mem[516] = mem[518 len 30]
                                    revert with 0, 32, 30, mem[516]
                                mem[452] = 35 * 0 / balanceOf[address(this.address)] / 100
                                mem[484] = (0 / balanceOf[address(this.address)]) - (35 * 0 / balanceOf[address(this.address)] / 100)
                                mem[516] = ext_call.return_data[0] - (0 / balanceOf[address(this.address)])
                                mem[548] = address(ext_call.return_data[0])
                                require ext_code.size(address(stor14.field_0))
                                call address(stor14.field_0).0x5ecfeb99 with:
                                     gas gas_remaining wei
                                    args 35 * 0 / balanceOf[address(this.address)] / 100, (0 / balanceOf[address(this.address)]) - (35 * 0 / balanceOf[address(this.address)] / 100), ext_call.return_data[0] - (0 / balanceOf[address(this.address)]), address(ext_call.return_data[0])
                        else:
                            if sub_665c6de9 * ext_call.return_data[0] / ext_call.return_data[0] != sub_665c6de9:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, stor14.field_0)
                            mem[192] = 26
                            mem[224] = 'SafeMath: division by zero' << 48
                            if not balanceOf[address(this.address)]:
                                mem[256] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[260] = 32
                                idx = 32
                                while idx < 26:
                                    mem[idx + 324] = mem[idx + 224]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]:
                                mem[256] = 26
                                mem[288] = 'SafeMath: division by zero' << 48
                                mem[320] = 30
                                mem[352] = 'SafeMath: subtraction overflow'
                                if 0 > sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]:
                                    mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[388] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 452] = mem[idx + 352]
                                        idx = idx + 32
                                        continue 
                                    mem[452] = mem[454 len 30]
                                    revert with 0, 32, 30, mem[452]
                                mem[64] = 448
                                mem[384] = 30
                                mem[416] = 'SafeMath: subtraction overflow'
                                if sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] > ext_call.return_data[0]:
                                    mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[452] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 516] = mem[idx + 416]
                                        idx = idx + 32
                                        continue 
                                    mem[516] = mem[518 len 30]
                                    revert with 0, 32, 30, mem[516]
                                mem[452] = 0
                                mem[484] = sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]
                                mem[516] = ext_call.return_data[0] - (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)])
                                mem[548] = address(ext_call.return_data[0])
                                require ext_code.size(address(stor14.field_0))
                                call address(stor14.field_0).0x5ecfeb99 with:
                                     gas gas_remaining wei
                                    args 0, sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)], ext_call.return_data[0] - (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]), address(ext_call.return_data[0])
                            else:
                                if 35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] != 35:
                                    revert with 0, 'eSafeMath: multiplication overflo'
                                mem[256] = 26
                                mem[288] = 'SafeMath: division by zero' << 48
                                mem[320] = 30
                                mem[352] = 'SafeMath: subtraction overflow'
                                if 35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100 > sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]:
                                    mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[388] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 452] = mem[idx + 352]
                                        idx = idx + 32
                                        continue 
                                    mem[452] = mem[454 len 30]
                                    revert with 0, 32, 30, mem[452]
                                mem[64] = 448
                                mem[384] = 30
                                mem[416] = 'SafeMath: subtraction overflow'
                                if sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] > ext_call.return_data[0]:
                                    mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[452] = 32
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + 516] = mem[idx + 416]
                                        idx = idx + 32
                                        continue 
                                    mem[516] = mem[518 len 30]
                                    revert with 0, 32, 30, mem[516]
                                mem[452] = 35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100
                                mem[484] = (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]) - (35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100)
                                mem[516] = ext_call.return_data[0] - (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)])
                                mem[548] = address(ext_call.return_data[0])
                                require ext_code.size(address(stor14.field_0))
                                call address(stor14.field_0).0x5ecfeb99 with:
                                     gas gas_remaining wei
                                    args 35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100, (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]) - (35 * sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)] / 100), ext_call.return_data[0] - (sub_665c6de9 * ext_call.return_data[0] / balanceOf[address(this.address)]), address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[448] = balanceOf[address(this.address)]
                        emit 0x7baeba94: balanceOf[address(this.address)]
                        sub_665c6de9 = 0
                        uint8(stor14.field_160) = 0
                        if not stor17[address(msg.sender)]:
                            mem[0] = arg1
                            mem[32] = 17
                            if not stor17[address(arg1)]:
                                idx = 0
                                while idx < pairs.length:
                                    mem[0] = 12
                                    if address(pairs[idx]) != msg.sender:
                                        idx = idx + 1
                                        continue 
                                    idx = 0
                                    while idx < pairs.length:
                                        mem[0] = 12
                                        if address(pairs[idx]) != arg1:
                                            idx = idx + 1
                                            continue 
                                        if not sub_929c0ca8:
                                            if not sub_e7670ded:
                                                mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[676] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 740] = mem[idx + 608]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[772] = mem[798 len 6]
                                                    revert with 0, 32, 38, mem[740 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[704] = 'SafeMath: subtraction overflow'
                                                if 0 > arg2:
                                                    mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[740] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 804] = mem[idx + 704]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[804] = mem[806 len 30]
                                                    revert with 0, 32, 30, mem[804]
                                                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] += arg2
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            else:
                                                if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[676] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 740] = mem[idx + 608]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[772] = mem[798 len 6]
                                                    revert with 0, 32, 38, mem[740 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[704] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_e7670ded / 100 > arg2:
                                                    mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[740] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 804] = mem[idx + 704]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[804] = mem[806 len 30]
                                                    revert with 0, 32, 30, mem[804]
                                                mem[768] = 'SafeMath: subtraction overflow'
                                                if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                                    mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[804] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 868] = mem[idx + 768]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[868] = mem[870 len 30]
                                                    revert with 0, 32, 30, mem[868]
                                                if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                                if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                            if sub_665c6de9 < sub_665c6de9:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            Mask(152, 0, ext_call.return_data[0]) << 96
                                            if not sub_e7670ded:
                                                mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[676] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 740] = mem[idx + 608]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[772] = mem[798 len 6]
                                                    revert with 0, 32, 38, mem[740 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[704] = 'SafeMath: subtraction overflow'
                                                if 0 > arg2:
                                                    mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[740] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 804] = mem[idx + 704]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[804] = mem[806 len 30]
                                                    revert with 0, 32, 30, mem[804]
                                                mem[768] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_929c0ca8 / 100 > arg2:
                                                    mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[804] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 868] = mem[idx + 768]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[868] = mem[870 len 30]
                                                    revert with 0, 32, 30, mem[868]
                                                if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                            else:
                                                if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                                mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[676] = 32
                                                    idx = 0
                                                    while idx < 38:
                                                        mem[idx + 740] = mem[idx + 608]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[772] = mem[798 len 6]
                                                    revert with 0, 32, 38, mem[740 len 64]
                                                balanceOf[address(msg.sender)] -= arg2
                                                mem[704] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_e7670ded / 100 > arg2:
                                                    mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[740] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 804] = mem[idx + 704]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[804] = mem[806 len 30]
                                                    revert with 0, 32, 30, mem[804]
                                                mem[768] = 'SafeMath: subtraction overflow'
                                                if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                                    mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[804] = 32
                                                    idx = 0
                                                    while idx < 30:
                                                        mem[idx + 868] = mem[idx + 768]
                                                        idx = idx + 32
                                                        continue 
                                                    mem[868] = mem[870 len 30]
                                                    revert with 0, 32, 30, mem[868]
                                                if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                                if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if arg2 * sub_929c0ca8 / 100 < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                            if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                                revert with 0, 'SafeMath: addition overflow'
                                            sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                        emit 0x65ddf252: arg2, msg.sender, arg1
                                        return 1
                                    if not sub_929c0ca8:
                                        if not sub_e7670ded:
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_e7670ded / 100 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            mem[768] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                                mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[804] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 868] = mem[idx + 768]
                                                    idx = idx + 32
                                                    continue 
                                                mem[868] = mem[870 len 30]
                                                revert with 0, 32, 30, mem[868]
                                            if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_e7670ded / 100
                                        if sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        Mask(152, 0, ext_call.return_data[0]) << 96
                                        if not sub_e7670ded:
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            mem[768] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2:
                                                mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[804] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 868] = mem[idx + 768]
                                                    idx = idx + 32
                                                    continue 
                                                mem[868] = mem[870 len 30]
                                                revert with 0, 32, 30, mem[868]
                                            if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                        else:
                                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_e7670ded / 100 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            mem[768] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                                mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[804] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 868] = mem[idx + 768]
                                                    idx = idx + 32
                                                    continue 
                                                mem[868] = mem[870 len 30]
                                                revert with 0, 32, 30, mem[868]
                                            if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * sub_929c0ca8 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                                        if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                    emit 0x65ddf252: arg2, msg.sender, arg1
                                    return 1
                                idx = 0
                                while idx < pairs.length:
                                    mem[0] = 12
                                    if address(pairs[idx]) != arg1:
                                        idx = idx + 1
                                        continue 
                                    if not sub_929c0ca8:
                                        if not sub_ebb47541:
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] += arg2
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                        else:
                                            if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_ebb47541 / 100 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            mem[768] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2 - (arg2 * sub_ebb47541 / 100):
                                                mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[804] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 868] = mem[idx + 768]
                                                    idx = idx + 32
                                                    continue 
                                                mem[868] = mem[870 len 30]
                                                revert with 0, 32, 30, mem[868]
                                            if arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_ebb47541 / 100
                                        if sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                    else:
                                        if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        Mask(152, 0, ext_call.return_data[0]) << 96
                                        if not sub_ebb47541:
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if 0 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            mem[768] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2:
                                                mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[804] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 868] = mem[idx + 768]
                                                    idx = idx + 32
                                                    continue 
                                                mem[868] = mem[870 len 30]
                                                revert with 0, 32, 30, mem[868]
                                            if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                                        else:
                                            if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[613 len 31]
                                            mem[608 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                mem[672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[676] = 32
                                                idx = 0
                                                while idx < 38:
                                                    mem[idx + 740] = mem[idx + 608]
                                                    idx = idx + 32
                                                    continue 
                                                mem[772] = mem[798 len 6]
                                                revert with 0, 32, 38, mem[740 len 64]
                                            balanceOf[address(msg.sender)] -= arg2
                                            mem[704] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_ebb47541 / 100 > arg2:
                                                mem[736] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[740] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 804] = mem[idx + 704]
                                                    idx = idx + 32
                                                    continue 
                                                mem[804] = mem[806 len 30]
                                                revert with 0, 32, 30, mem[804]
                                            mem[768] = 'SafeMath: subtraction overflow'
                                            if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_ebb47541 / 100):
                                                mem[800] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[804] = 32
                                                idx = 0
                                                while idx < 30:
                                                    mem[idx + 868] = mem[idx + 768]
                                                    idx = idx + 32
                                                    continue 
                                                mem[868] = mem[870 len 30]
                                                revert with 0, 32, 30, mem[868]
                                            if arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                                            if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if arg2 * sub_929c0ca8 / 100 < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_ebb47541 / 100) + balanceOf[this.address]
                                        if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                                            revert with 0, 'SafeMath: addition overflow'
                                        sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                                    emit 0x65ddf252: arg2, msg.sender, arg1
                                    return 1
                        mem[480 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[544] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[548] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 612] = mem[idx + 480]
                                idx = idx + 32
                                continue 
                            mem[644] = mem[670 len 6]
                            revert with 0, 32, 38, mem[612 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[576] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            mem[608] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[612] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 676] = mem[idx + 576]
                                idx = idx + 32
                                continue 
                            mem[676] = mem[678 len 30]
                            revert with 0, 32, 30, mem[676]
                ('le', 0, ('param', 'arg2'))
                if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                if balanceOf[this.address] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_665c6de9 < sub_665c6de9:
                    revert with 0, 'SafeMath: addition overflow'
                emit 0x65ddf252: arg2, msg.sender, arg1
                return 1
    if not stor17[address(msg.sender)]:
        mem[0] = arg1
        mem[32] = 17
        if not stor17[address(arg1)]:
            idx = 0
            while idx < pairs.length:
                mem[0] = 12
                if address(pairs[idx]) != msg.sender:
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < pairs.length:
                    mem[0] = 12
                    if address(pairs[idx]) != arg1:
                        idx = idx + 1
                        continue 
                    if not sub_929c0ca8:
                        if not sub_e7670ded:
                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[324] = 32
                                idx = 0
                                while idx < 38:
                                    mem[idx + 388] = mem[idx + 256]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[446 len 6]
                                revert with 0, 32, 38, mem[388 len 64]
                            balanceOf[address(msg.sender)] -= arg2
                            mem[352] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[388] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 452] = mem[idx + 352]
                                    idx = idx + 32
                                    continue 
                                mem[452] = mem[454 len 30]
                                revert with 0, 32, 30, mem[452]
                            if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[324] = 32
                                idx = 0
                                while idx < 38:
                                    mem[idx + 388] = mem[idx + 256]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[446 len 6]
                                revert with 0, 32, 38, mem[388 len 64]
                            balanceOf[address(msg.sender)] -= arg2
                            mem[352] = 'SafeMath: subtraction overflow'
                            if arg2 * sub_e7670ded / 100 > arg2:
                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[388] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 452] = mem[idx + 352]
                                    idx = idx + 32
                                    continue 
                                mem[452] = mem[454 len 30]
                                revert with 0, 32, 30, mem[452]
                            mem[416] = 'SafeMath: subtraction overflow'
                            if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                                mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[452] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 516] = mem[idx + 416]
                                    idx = idx + 32
                                    continue 
                                mem[516] = mem[518 len 30]
                                revert with 0, 32, 30, mem[516]
                            if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += arg2 * sub_e7670ded / 100
                        if sub_665c6de9 < sub_665c6de9:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not sub_e7670ded:
                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[324] = 32
                                idx = 0
                                while idx < 38:
                                    mem[idx + 388] = mem[idx + 256]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[446 len 6]
                                revert with 0, 32, 38, mem[388 len 64]
                            balanceOf[address(msg.sender)] -= arg2
                            mem[352] = 'SafeMath: subtraction overflow'
                            if 0 > arg2:
                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[388] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 452] = mem[idx + 352]
                                    idx = idx + 32
                                    continue 
                                mem[452] = mem[454 len 30]
                                revert with 0, 32, 30, mem[452]
                            mem[416] = 'SafeMath: subtraction overflow'
                            if arg2 * sub_929c0ca8 / 100 > arg2:
                                mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[452] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 516] = mem[idx + 416]
                                    idx = idx + 32
                                    continue 
                                mem[516] = mem[518 len 30]
                                revert with 0, 32, 30, mem[516]
                            if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                            if balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                        else:
                            if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                            if arg2 > balanceOf[address(msg.sender)]:
                                mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[324] = 32
                                idx = 0
                                while idx < 38:
                                    mem[idx + 388] = mem[idx + 256]
                                    idx = idx + 32
                                    continue 
                                mem[420] = mem[446 len 6]
                                revert with 0, 32, 38, mem[388 len 64]
                            balanceOf[address(msg.sender)] -= arg2
                            mem[352] = 'SafeMath: subtraction overflow'
                            if arg2 * sub_e7670ded / 100 > arg2:
                                mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[388] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 452] = mem[idx + 352]
                                    idx = idx + 32
                                    continue 
                                mem[452] = mem[454 len 30]
                                revert with 0, 32, 30, mem[452]
                            mem[416] = 'SafeMath: subtraction overflow'
                            if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                                mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[452] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + 516] = mem[idx + 416]
                                    idx = idx + 32
                                    continue 
                                mem[516] = mem[518 len 30]
                                revert with 0, 32, 30, mem[516]
                            if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                            if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 * sub_929c0ca8 / 100 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                        if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                    emit 0x65ddf252: arg2, msg.sender, arg1
                    return 1
                if not sub_929c0ca8:
                    if not sub_e7670ded:
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        if balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_e7670ded / 100 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        mem[416] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 - (arg2 * sub_e7670ded / 100):
                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[452] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 516] = mem[idx + 416]
                                idx = idx + 32
                                continue 
                            mem[516] = mem[518 len 30]
                            revert with 0, 32, 30, mem[516]
                        if arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) + balanceOf[address(arg1)]
                        if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += arg2 * sub_e7670ded / 100
                    if sub_665c6de9 < sub_665c6de9:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_e7670ded:
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        mem[416] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_929c0ca8 / 100 > arg2:
                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[452] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 516] = mem[idx + 416]
                                idx = idx + 32
                                continue 
                            mem[516] = mem[518 len 30]
                            revert with 0, 32, 30, mem[516]
                        if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                        if balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                    else:
                        if arg2 * sub_e7670ded / sub_e7670ded != arg2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_e7670ded / 100 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        mem[416] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_e7670ded / 100):
                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[452] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 516] = mem[idx + 416]
                                idx = idx + 32
                                continue 
                            mem[516] = mem[518 len 30]
                            revert with 0, 32, 30, mem[516]
                        if arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_e7670ded / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                        if (arg2 * sub_e7670ded / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 * sub_929c0ca8 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_e7670ded / 100) + balanceOf[this.address]
                    if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                emit 0x65ddf252: arg2, msg.sender, arg1
                return 1
            idx = 0
            while idx < pairs.length:
                mem[0] = 12
                if address(pairs[idx]) != arg1:
                    idx = idx + 1
                    continue 
                if not sub_929c0ca8:
                    if not sub_ebb47541:
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        if balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                    else:
                        if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_ebb47541 / 100 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        mem[416] = 'SafeMath: subtraction overflow'
                        if 0 > arg2 - (arg2 * sub_ebb47541 / 100):
                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[452] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 516] = mem[idx + 416]
                                idx = idx + 32
                                continue 
                            mem[516] = mem[518 len 30]
                            revert with 0, 32, 30, mem[516]
                        if arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) + balanceOf[address(arg1)]
                        if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += arg2 * sub_ebb47541 / 100
                    if sub_665c6de9 < sub_665c6de9:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if arg2 * sub_929c0ca8 / sub_929c0ca8 != arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not sub_ebb47541:
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if 0 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        mem[416] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_929c0ca8 / 100 > arg2:
                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[452] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 516] = mem[idx + 416]
                                idx = idx + 32
                                continue 
                            mem[516] = mem[518 len 30]
                            revert with 0, 32, 30, mem[516]
                        if arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                        if balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (arg2 * sub_929c0ca8 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] += arg2 * sub_929c0ca8 / 100
                    else:
                        if arg2 * sub_ebb47541 / sub_ebb47541 != arg2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        mem[256 len 38] = 0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                        if arg2 > balanceOf[address(msg.sender)]:
                            mem[320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[324] = 32
                            idx = 0
                            while idx < 38:
                                mem[idx + 388] = mem[idx + 256]
                                idx = idx + 32
                                continue 
                            mem[420] = mem[446 len 6]
                            revert with 0, 32, 38, mem[388 len 64]
                        balanceOf[address(msg.sender)] -= arg2
                        mem[352] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_ebb47541 / 100 > arg2:
                            mem[384] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[388] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 452] = mem[idx + 352]
                                idx = idx + 32
                                continue 
                            mem[452] = mem[454 len 30]
                            revert with 0, 32, 30, mem[452]
                        mem[416] = 'SafeMath: subtraction overflow'
                        if arg2 * sub_929c0ca8 / 100 > arg2 - (arg2 * sub_ebb47541 / 100):
                            mem[448] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[452] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + 516] = mem[idx + 416]
                                idx = idx + 32
                                continue 
                            mem[516] = mem[518 len 30]
                            revert with 0, 32, 30, mem[516]
                        if arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 - (arg2 * sub_ebb47541 / 100) - (arg2 * sub_929c0ca8 / 100) + balanceOf[address(arg1)]
                        if (arg2 * sub_ebb47541 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 * sub_929c0ca8 / 100 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[this.address] = (arg2 * sub_929c0ca8 / 100) + (arg2 * sub_ebb47541 / 100) + balanceOf[this.address]
                    if (arg2 * sub_929c0ca8 / 100) + sub_665c6de9 < sub_665c6de9:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_665c6de9 += arg2 * sub_929c0ca8 / 100
                emit 0x65ddf252: arg2, msg.sender, arg1
                return 1
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if 0 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if balanceOf[this.address] < balanceOf[this.address]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_665c6de9 < sub_665c6de9:
        revert with 0, 'SafeMath: addition overflow'
    emit 0x65ddf252: arg2, msg.sender, arg1
    return 1
}



}
