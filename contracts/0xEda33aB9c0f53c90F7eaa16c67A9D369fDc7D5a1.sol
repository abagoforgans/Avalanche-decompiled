contract main {




// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1)
#
uint256 stor0;
address owner;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address commissionReceiverAddress;
uint256 sub_ead56fc8;

function getWallet() {
    return walletAddress
}

function getToken() {
    return tokenAddress
}

function weiRaised() {
    return weiRaised
}

function getRate() {
    return rate
}

function owner() {
    return owner
}

function getCommissionReceiver() {
    return commissionReceiverAddress
}

function sub_ead56fc8(?) {
    return sub_ead56fc8
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rate = arg1
    return arg1
}

function setCommissionReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'fees cannot go to 0 address'
    commissionReceiverAddress = arg1
}

function sub_61335f35(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can not charge commission more than 100%'
    sub_ead56fc8 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        if stor0 == 2:
            revert with 0, 'ReentrancyGuard: reentrant call'
        stor0 = 2
        if not msg.sender:
            revert with 0, 'Crowdsale: beneficiary is the zero address'
        if not msg.value:
            revert with 0, 'Crowdsale: weiAmount is 0'
        if msg.value and rate > -1 / msg.value:
            revert with 0, 17
        if msg.value and sub_ead56fc8 > -1 / msg.value:
            revert with 0, 17
        if msg.value < msg.value * sub_ead56fc8 / 1000:
            revert with 0, 17
        if weiRaised > !(msg.value - (msg.value * sub_ead56fc8 / 1000)):
            revert with 0, 17
        weiRaised = weiRaised + msg.value - (msg.value * sub_ead56fc8 / 1000)
        mem[164] = msg.sender
        mem[196] = msg.value * rate
        mem[128] = 68
        mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[160 len 4] = unknown_0xa9059cbb(?????)
        mem[228] = 32
        mem[260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(tokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0xa9059cbb(?????), msg.sender, msg.value * rate, 0
        mem[360] = 0
        call tokenAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, msg.value * rate, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, msg.value * rate, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                revert with 0, 'SafeERC20: low-level call failed'
            require not mem[96]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[324] == bool(mem[324])
                if not mem[324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit TokensPurchased(msg.value - (msg.value * sub_ead56fc8 / 1000), msg.value * sub_ead56fc8 / 1000, msg.value * rate, msg.sender, msg.sender);
        if not msg.value * sub_ead56fc8 / 1000:
            call walletAddress with:
               value msg.value - (msg.value * sub_ead56fc8 / 1000) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            call commissionReceiverAddress with:
               value msg.value * sub_ead56fc8 / 1000 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call walletAddress with:
               value msg.value - (msg.value * sub_ead56fc8 / 1000) wei
                 gas 2300 * is_zero(value) wei
        stor0 = 1
    else:
        if unknown_0x715018a6(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x13299604(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return walletAddress
            if unknown_0x21df0da7(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return tokenAddress
            if unknown_0x4042b66f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return weiRaised
            if unknown_0x61335f35(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if arg1 > 1000:
                    revert with 0, 'can not charge commission more than 100%'
                sub_ead56fc8 = arg1
            if unknown_0x679aefce(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return rate
            require unknown_0x69ea1771(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            require calldata.size - 4 >= 32
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            rate = arg1
            return arg1
        if unknown_0xce01725b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = 0
                emit OwnershipTransferred(owner, 0);
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return owner
                require unknown_0xa576cf9d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'fees cannot go to 0 address'
                commissionReceiverAddress = address(arg1)
        else:
            if unknown_0xce01725b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return commissionReceiverAddress
            if unknown_0xead56fc8(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_ead56fc8
            if uint32(call.func_hash) >> 224 != unknown_0xec8ac4d8(?????):
                require unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(arg1):
                    revert with 0, 'Ownable: new owner is the zero address'
                owner = address(arg1)
                emit OwnershipTransferred(owner, address(arg1));
            else:
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor0 == 2:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 2
                if not address(arg1):
                    revert with 0, 'Crowdsale: beneficiary is the zero address'
                if not msg.value:
                    revert with 0, 'Crowdsale: weiAmount is 0'
                if msg.value and rate > -1 / msg.value:
                    revert with 0, 17
                if msg.value and sub_ead56fc8 > -1 / msg.value:
                    revert with 0, 17
                if msg.value < msg.value * sub_ead56fc8 / 1000:
                    revert with 0, 17
                if weiRaised > !(msg.value - (msg.value * sub_ead56fc8 / 1000)):
                    revert with 0, 17
                weiRaised = weiRaised + msg.value - (msg.value * sub_ead56fc8 / 1000)
                mem[164] = address(arg1)
                mem[196] = msg.value * rate
                mem[128] = 68
                mem[164 len 28] = address(arg1) << 64
                mem[160 len 4] = unknown_0xa9059cbb(?????)
                mem[228] = 32
                mem[260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(tokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, msg.value * rate, 0
                mem[360] = 0
                call tokenAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, msg.value * rate, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, msg.value * rate, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    require not mem[96]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[324] == bool(mem[324])
                        if not mem[324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit TokensPurchased(msg.value - (msg.value * sub_ead56fc8 / 1000), msg.value * sub_ead56fc8 / 1000, msg.value * rate, msg.sender, address(arg1));
                if not msg.value * sub_ead56fc8 / 1000:
                    call walletAddress with:
                       value msg.value - (msg.value * sub_ead56fc8 / 1000) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    call commissionReceiverAddress with:
                       value msg.value * sub_ead56fc8 / 1000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call walletAddress with:
                       value msg.value - (msg.value * sub_ead56fc8 / 1000) wei
                         gas 2300 * is_zero(value) wei
                stor0 = 1
}



}
