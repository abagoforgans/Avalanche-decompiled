contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
mapping of uint8 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address deadWalletAddress;
address sub_527509f3Address;
address tokenAddress;
address sub_c4c6c237Address;
address joePairAddress;
address teamPoolAddress;
address rewardsPoolAddress;
uint256 swapTokensAmount;
uint8 sub_fabc4035;
address stor22;
address stor22; offset 8
address stor23;
uint256 stor25;
uint8 stor26;
mapping of uint8 stor27;

function rewardsPool() {
    return rewardsPoolAddress
}

function teamPool() {
    return teamPoolAddress
}

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function sub_527509f3(?) {
    return sub_527509f3Address
}

function swapTokensAmount() {
    return swapTokensAmount
}

function joePair() {
    return joePairAddress
}

function deadWallet() {
    return deadWalletAddress
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function tokenAddress() {
    return tokenAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor27[arg1])
}

function sub_c4c6c237(?) {
    return sub_c4c6c237Address
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function sub_fabc4035(?) {
    return bool(sub_fabc4035)
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[address(arg1)])
}

function fees() {
    return stor9, stor10, stor11, stor12, stor13
}

function getFees() {
    return stor9, stor10, stor11, stor12, stor13
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor25 = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    stor9 = arg1
    stor10 = arg2
    stor11 = arg3
    stor12 = arg4
    stor13 = arg5
}

function sub_f4e27dc8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fabc4035 = uint8(bool(arg1))
}

function sub_6eacab12(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamPoolAddress = address(arg1)
}

function sub_6653a340(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolAddress = address(arg1)
}

function setAuthorizedAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor8[msg.sender]:
        revert with 0, 'Not authorized'
    stor8[address(arg1)] = uint8(arg2)
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joePairAddress == arg1:
        revert with 0, 'TKN:2'
    if arg2 == bool(stor27[address(arg1)]):
        revert with 0, 'TKN:3'
    stor27[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function sub_e159b3ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(stor22.field_8) == address(arg1):
        revert with 0, 'TKN:1'
    emit 0xb172ff8d: address(arg1), address(stor22.field_8)
    require ext_code.size(address(stor22.field_8))
    staticcall address(stor22.field_8).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args tokenAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    joePairAddress = ext_call.return_data[12 len 20]
    sub_527509f3Address = address(arg1)
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function process() {
    if not stor8[msg.sender]:
        revert with 0, 'Not authorized'
    mem[100] = this.address
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= swapTokensAmount:
        if sub_fabc4035:
            if not stor26:
                if owner != msg.sender:
                    mem[0] = msg.sender
                    mem[32] = 27
                    if not stor27[address(msg.sender)]:
                        stor26 = 1
                        if ext_call.return_data[0] and stor9 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 100] = address(stor22.field_8)
                        mem[ceil32(return_data.size) + 132] = ext_call.return_data[0] * stor9 / 100
                        require ext_code.size(stor23)
                        call stor23.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor22.field_0), ext_call.return_data[0] * stor9 / 100
                        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Approve failed'
                        if not ext_call.return_data[0] * stor9 / 100:
                            if ext_call.return_data[0] and stor11 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * stor11 / 100 and stor12 > -1 / ext_call.return_data[0] * stor11 / 100:
                                revert with 0, 17
                            mem[(2 * ceil32(return_data.size)) + 100] = address(stor22.field_8)
                            mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            require ext_code.size(stor23)
                            call stor23.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor22.field_0), ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Approve failed'
                            if not ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 100] = rewardsPoolAddress
                                mem[(4 * ceil32(return_data.size)) + 132] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[(6 * ceil32(return_data.size)) + 100] = address(stor22.field_8)
                                mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor22.field_0), ext_call.return_data[0] * stor10 / 100 / 2
                                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    mem[(7 * ceil32(return_data.size)) + 96] = 2
                                    mem[(7 * ceil32(return_data.size)) + 128] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(7 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[(8 * ceil32(return_data.size)) + 228] = 0
                                    mem[(8 * ceil32(return_data.size)) + 260] = 160
                                    mem[(8 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 388
                                    t = (7 * ceil32(return_data.size)) + 128
                                    while idx < mem[(7 * ceil32(return_data.size)) + 96]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(8 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, 160, address(this.address), block.timestamp, mem[(8 * ceil32(return_data.size)) + 356 len (32 * mem[(7 * ceil32(return_data.size)) + 96]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 96] = 2
                                mem[(4 * ceil32(return_data.size)) + 128] = tokenAddress
                                require ext_code.size(address(stor22.field_8))
                                staticcall address(stor22.field_8).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                                mem[(6 * ceil32(return_data.size)) + 228] = 0
                                mem[(6 * ceil32(return_data.size)) + 260] = 160
                                mem[(6 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < mem[(4 * ceil32(return_data.size)) + 96]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 292] = this.address
                                mem[(6 * ceil32(return_data.size)) + 324] = block.timestamp
                                require ext_code.size(address(stor22.field_8))
                                call address(stor22.field_8).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 448]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = rewardsPoolAddress
                                mem[mem[64] + 36] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _295 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_295] == bool(mem[_295])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(stor22.field_8)
                                mem[mem[64] + 36] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor22.field_0), ext_call.return_data[0] * stor10 / 100 / 2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _325 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_325] == bool(mem[_325])
                                if not mem[_325]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor22.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _346 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_346] == bool(mem[_346])
                                    if not mem[_346]:
                                        revert with 0, 'Approve failed'
                                else:
                                    _336 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_336 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_336]:
                                        revert with 0, 50
                                    mem[_336 + 32] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_336 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _336 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_336]:
                                        revert with 0, 50
                                    mem[_336 + 64] = ext_call.return_data[12 len 20]
                                    mem[_336 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_336 + ceil32(return_data.size) + 100] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[_336 + ceil32(return_data.size) + 132] = 0
                                    mem[_336 + ceil32(return_data.size) + 164] = 160
                                    mem[_336 + ceil32(return_data.size) + 260] = mem[_336]
                                    idx = 0
                                    s = _336 + ceil32(return_data.size) + 292
                                    t = _336 + 32
                                    while idx < mem[_336]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, 160, address(this.address), block.timestamp, mem[_336 + ceil32(return_data.size) + 260 len (32 * mem[_336]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                            require ext_code.size(address(stor22.field_8))
                            call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2));
                        else:
                            mem[(2 * ceil32(return_data.size)) + 96] = 2
                            mem[(2 * ceil32(return_data.size)) + 128] = tokenAddress
                            mem[(2 * ceil32(return_data.size)) + 160] = sub_c4c6c237Address
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] * stor9 / 100
                            mem[(2 * ceil32(return_data.size)) + 260] = 160
                            mem[(2 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 388
                            t = (2 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 292] = teamPoolAddress
                            mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                            require ext_code.size(address(stor22.field_8))
                            call address(stor22.field_8).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * stor9 / 100, 0, 160, teamPoolAddress, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] and stor11 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * stor11 / 100 and stor12 > -1 / ext_call.return_data[0] * stor11 / 100:
                                revert with 0, 17
                            mem[(2 * ceil32(return_data.size)) + 196] = address(stor22.field_8)
                            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            require ext_code.size(stor23)
                            call stor23.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor22.field_0), ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Approve failed'
                            if not ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 196] = rewardsPoolAddress
                                mem[(4 * ceil32(return_data.size)) + 228] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[(6 * ceil32(return_data.size)) + 196] = address(stor22.field_8)
                                mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor22.field_0), ext_call.return_data[0] * stor10 / 100 / 2
                                mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 192] = 2
                                    mem[(7 * ceil32(return_data.size)) + 224] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (8 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(7 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[(8 * ceil32(return_data.size)) + 324] = 0
                                    mem[(8 * ceil32(return_data.size)) + 356] = 160
                                    mem[(8 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 484
                                    t = (7 * ceil32(return_data.size)) + 224
                                    while idx < mem[(7 * ceil32(return_data.size)) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(8 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(8 * ceil32(return_data.size)) + 420] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + 192]) + -mem[64] + 480]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor22.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _495 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_495] == bool(mem[_495])
                                    if not mem[_495]:
                                        revert with 0, 'Approve failed'
                                require ext_code.size(address(stor22.field_8))
                                call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2));
                            else:
                                mem[(4 * ceil32(return_data.size)) + 192] = 2
                                mem[(4 * ceil32(return_data.size)) + 224] = tokenAddress
                                require ext_code.size(address(stor22.field_8))
                                staticcall address(stor22.field_8).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 288
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                                mem[(6 * ceil32(return_data.size)) + 324] = 0
                                mem[(6 * ceil32(return_data.size)) + 356] = 160
                                mem[(6 * ceil32(return_data.size)) + 452] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 484
                                t = (4 * ceil32(return_data.size)) + 224
                                while idx < mem[(4 * ceil32(return_data.size)) + 192]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 388] = this.address
                                mem[(6 * ceil32(return_data.size)) + 420] = block.timestamp
                                require ext_code.size(address(stor22.field_8))
                                call address(stor22.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * stor11 / 100 * stor12 / 100, 0, 160, address(this.address), block.timestamp, mem[(6 * ceil32(return_data.size)) + 452 len (32 * mem[(4 * ceil32(return_data.size)) + 192]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[(6 * ceil32(return_data.size)) + 292] = rewardsPoolAddress
                                mem[(6 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100), mem[(6 * ceil32(return_data.size)) + 356 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[(8 * ceil32(return_data.size)) + 292] = address(stor22.field_8)
                                mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 292 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 292] = 32
                                    mem[(8 * ceil32(return_data.size)) + 324] = 14
                                    mem[(8 * ceil32(return_data.size)) + 356] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 288
                                       len (15 * ceil32(return_data.size)) + 100
                                if not Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[(8 * ceil32(return_data.size)) + 292] = address(stor22.field_8)
                                    mem[(8 * ceil32(return_data.size)) + 324] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 292 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed', mem[(11 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                                    mem[(11 * ceil32(return_data.size)) + 356] = 0
                                    mem[(11 * ceil32(return_data.size)) + 388] = 0
                                    mem[(11 * ceil32(return_data.size)) + 420] = rewardsPoolAddress
                                    mem[(11 * ceil32(return_data.size)) + 452] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[(11 * ceil32(return_data.size)) + 484 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        Mask(255, 1, ext_call.return_data[0] * stor10 / 100),
                                                        0,
                                                        (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2),
                                                        mem[(12 * ceil32(return_data.size)) + 384 len 9 * ceil32(return_data.size)],
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 288] = 2
                                    mem[(8 * ceil32(return_data.size)) + 320] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 384] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (10 * ceil32(return_data.size)) + 384
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 352] = ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 384] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 388] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[(10 * ceil32(return_data.size)) + 420] = 0
                                    mem[(10 * ceil32(return_data.size)) + 452] = 160
                                    mem[(10 * ceil32(return_data.size)) + 548] = 2
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + 580
                                    t = (8 * ceil32(return_data.size)) + 320
                                    while idx < mem[(8 * ceil32(return_data.size)) + 288]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 484] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 516] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, 160, address(this.address), block.timestamp, mem[(10 * ceil32(return_data.size)) + 548 len (32 * mem[(8 * ceil32(return_data.size)) + 288]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), mem[(10 * ceil32(return_data.size)) + 452 len 17 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed', mem[(12 * ceil32(return_data.size)) + 484 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 452] = 0
                                    mem[(12 * ceil32(return_data.size)) + 484] = 0
                                    mem[(12 * ceil32(return_data.size)) + 516] = rewardsPoolAddress
                                    mem[(12 * ceil32(return_data.size)) + 548] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[(12 * ceil32(return_data.size)) + 580 len 20 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        Mask(255, 1, ext_call.return_data[0] * stor10 / 100),
                                                        0,
                                                        (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2),
                                                        mem[(14 * ceil32(return_data.size)) + 480 len 24 * ceil32(return_data.size)],
                        stor26 = 0
    return 1
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x5f1c3182(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x6eacab12(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return swapTokensAmount
                if unknown_0x6653a340(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    rewardsPoolAddress = address(arg1)
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x6770474b(?????):
                        require unknown_0x6bca89cb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return joePairAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    swapTokensAmount = arg1
            else:
                if unknown_0x6eacab12(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    teamPoolAddress = address(arg1)
                else:
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    else:
                        if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return deadWalletAddress
                        if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if arg1 >= payee.length:
                                revert with 0, 50
                            return payee[arg1]
                        require unknown_0x8bc9c7b0(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor25 = arg1
        else:
            if unknown_0x3a98ef39(?????) > uint32(call.func_hash) >> 224:
                if rewardsPool() == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return rewardsPoolAddress
                if unknown_0x1351cf51(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if not stor8[msg.sender]:
                        revert with 0, 'Not authorized'
                    stor8[address(arg1)] = uint8(bool(arg2))
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x19165587(?????):
                        require unknown_0x39636504(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return teamPoolAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if not shares[address(arg1)]:
                        revert with 0, 'PaymentSplitter: account has no shares'
                    if eth.balance(this.address) > !totalReleased:
                        revert with 0, 17
                    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
                        revert with 0, 17
                    if not totalShares:
                        revert with 0, 18
                    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
                        revert with 0, 17
                    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
                        revert with 0, 'PaymentSplitter: account is not due payment'
                    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                        revert with 0, 17
                    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
                    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                        revert with 0, 17
                    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
                    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
                        revert with 0, 'Address: insufficient balance'
                    call address(arg1) with:
                       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Address: unable to send value, recipient may have reverted'
                    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
            else:
                if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalShares
                if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    return released[address(arg1)][address(arg2)]
                if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                    require unknown_0x527509f3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_527509f3Address
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not shares[address(arg2)]:
                    revert with 0, 'PaymentSplitter: account has no shares'
                mem[132] = this.address
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > !totalReleased[address(arg1)]:
                    revert with 0, 17
                if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
                    revert with 0, 17
                if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
                    revert with 0, 'PaymentSplitter: account is not due payment'
                if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
                    revert with 0, 17
                released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
                if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
                    revert with 0, 17
                totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
                mem[ceil32(return_data.size) + 164] = address(arg2)
                mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
                mem[ceil32(return_data.size) + 128] = 68
                mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 228] = 32
                mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(address(arg1)):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
                mem[ceil32(return_data.size) + 360] = 0
                call address(arg1) with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], address(arg1));
    if unknown_0xd79779b2(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
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
                if unknown_0xf4e27dc8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == bool(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_fabc4035 = uint8(bool(arg1))
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xf7c96e85(?????):
                        if unknown_0xfabc4035(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return bool(sub_fabc4035)
                        require unknown_0xfe9fbb80(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor8[address(arg1)])
                    require not msg.value
                    require calldata.size - 4 >= 160
                    stor9 = arg1
                    stor10 = arg2
                    stor11 = arg3
                    stor12 = arg4
                    stor13 = arg5
        else:
            if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return totalReleased[address(arg1)]
            if unknown_0xdb8d55f1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return stor9, stor10, stor11, stor12, stor13
            if uint32(call.func_hash) >> 224 != unknown_0xe159b3ae(?????):
                require unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return totalReleased
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            if address(stor22.field_8) == address(arg1):
                revert with 0, 'TKN:1'
            emit 0xb172ff8d: address(arg1), address(stor22.field_8)
            require ext_code.size(address(stor22.field_8))
            staticcall address(stor22.field_8).factory() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x73b295c2 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                 gas gas_remaining wei
                args tokenAddress, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            joePairAddress = ext_call.return_data[12 len 20]
            sub_527509f3Address = address(arg1)
    if unknown_0x9d76ea58(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return owner
        if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            return released[address(arg1)]
        if uint32(call.func_hash) >> 224 != unknown_0x9a7a23d6(?????):
            require unknown_0x9af1d35a(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return stor9, stor10, stor11, stor12, stor13
        require not msg.value
        require calldata.size - 4 >= 64
        require arg1 == address(arg1)
        require arg2 == bool(arg2)
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if joePairAddress == address(arg1):
            revert with 0, 'TKN:2'
        if bool(arg2) == bool(stor27[address(arg1)]):
            revert with 0, 'TKN:3'
        stor27[address(arg1)] = uint8(bool(arg2))
        emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
    if unknown_0x9d76ea58(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return tokenAddress
    if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        return bool(stor27[arg1])
    if uint32(call.func_hash) >> 224 != unknown_0xc33fb877(?????):
        if unknown_0xc4c6c237(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_c4c6c237Address
        require unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        require calldata.size - 4 >= 32
        require arg1 == address(arg1)
        return shares[address(arg1)]
    require not msg.value
    if not stor8[msg.sender]:
        revert with 0, 'Not authorized'
    mem[132] = this.address
    require ext_code.size(stor23)
    staticcall stor23.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= swapTokensAmount:
        if sub_fabc4035:
            if not stor26:
                if owner != msg.sender:
                    mem[0] = msg.sender
                    mem[32] = 27
                    if not stor27[address(msg.sender)]:
                        stor26 = 1
                        if ext_call.return_data[0] and stor9 > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[ceil32(return_data.size) + 132] = address(stor22.field_8)
                        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0] * stor9 / 100
                        require ext_code.size(stor23)
                        call stor23.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor22.field_0), ext_call.return_data[0] * stor9 / 100
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'Approve failed'
                        if not ext_call.return_data[0] * stor9 / 100:
                            if ext_call.return_data[0] and stor11 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * stor11 / 100 and stor12 > -1 / ext_call.return_data[0] * stor11 / 100:
                                revert with 0, 17
                            mem[(2 * ceil32(return_data.size)) + 132] = address(stor22.field_8)
                            mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            require ext_code.size(stor23)
                            call stor23.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor22.field_0), ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Approve failed'
                            if not ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 132] = rewardsPoolAddress
                                mem[(4 * ceil32(return_data.size)) + 164] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[(6 * ceil32(return_data.size)) + 132] = address(stor22.field_8)
                                mem[(6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor22.field_0), ext_call.return_data[0] * stor10 / 100 / 2
                                mem[(6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 128] = 2
                                    mem[(7 * ceil32(return_data.size)) + 160] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (8 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[(8 * ceil32(return_data.size)) + 260] = 0
                                    mem[(8 * ceil32(return_data.size)) + 292] = 160
                                    mem[(8 * ceil32(return_data.size)) + 388] = 2
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 420
                                    t = (7 * ceil32(return_data.size)) + 160
                                    while idx < mem[(7 * ceil32(return_data.size)) + 128]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(8 * ceil32(return_data.size)) + 324] = this.address
                                    mem[(8 * ceil32(return_data.size)) + 356] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (8 * ceil32(return_data.size)) + -mem[64] + 480]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor22.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _545 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_545] == bool(mem[_545])
                                    if not mem[_545]:
                                        revert with 0, 'Approve failed'
                            else:
                                mem[(4 * ceil32(return_data.size)) + 128] = 2
                                mem[(4 * ceil32(return_data.size)) + 160] = tokenAddress
                                require ext_code.size(address(stor22.field_8))
                                staticcall address(stor22.field_8).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 224] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                                mem[(6 * ceil32(return_data.size)) + 260] = 0
                                mem[(6 * ceil32(return_data.size)) + 292] = 160
                                mem[(6 * ceil32(return_data.size)) + 388] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 420
                                t = (4 * ceil32(return_data.size)) + 160
                                while idx < mem[(4 * ceil32(return_data.size)) + 128]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 324] = this.address
                                mem[(6 * ceil32(return_data.size)) + 356] = block.timestamp
                                require ext_code.size(address(stor22.field_8))
                                call address(stor22.field_8).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + -mem[64] + 480]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = rewardsPoolAddress
                                mem[mem[64] + 36] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _573 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_573] == bool(mem[_573])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[mem[64] + 4] = address(stor22.field_8)
                                mem[mem[64] + 36] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor22.field_0), ext_call.return_data[0] * stor10 / 100 / 2
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _619 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_619] == bool(mem[_619])
                                if not mem[_619]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor22.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _640 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_640] == bool(mem[_640])
                                    if not mem[_640]:
                                        revert with 0, 'Approve failed'
                                else:
                                    _630 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    mem[_630 + 32 len 64] = call.data[calldata.size len 64]
                                    if not mem[_630]:
                                        revert with 0, 50
                                    mem[_630 + 32] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[_630 + 96] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _630 + ceil32(return_data.size) + 96
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_630]:
                                        revert with 0, 50
                                    mem[_630 + 64] = ext_call.return_data[12 len 20]
                                    mem[_630 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_630 + ceil32(return_data.size) + 100] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[_630 + ceil32(return_data.size) + 132] = 0
                                    mem[_630 + ceil32(return_data.size) + 164] = 160
                                    mem[_630 + ceil32(return_data.size) + 260] = mem[_630]
                                    idx = 0
                                    s = _630 + ceil32(return_data.size) + 292
                                    t = _630 + 32
                                    while idx < mem[_630]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_630 + ceil32(return_data.size) + 196] = this.address
                                    mem[_630 + ceil32(return_data.size) + 228] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _630 + ceil32(return_data.size) + (32 * mem[_630]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor22.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _800 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_800] == bool(mem[_800])
                                    if not mem[_800]:
                                        revert with 0, 'Approve failed'
                            require ext_code.size(address(stor22.field_8))
                            call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                 gas gas_remaining wei
                                args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2));
                        else:
                            mem[(2 * ceil32(return_data.size)) + 128] = 2
                            mem[(2 * ceil32(return_data.size)) + 160] = tokenAddress
                            mem[(2 * ceil32(return_data.size)) + 192] = sub_c4c6c237Address
                            mem[(2 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * stor9 / 100
                            mem[(2 * ceil32(return_data.size)) + 292] = 160
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 420
                            t = (2 * ceil32(return_data.size)) + 160
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = teamPoolAddress
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp
                            require ext_code.size(address(stor22.field_8))
                            call address(stor22.field_8).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * stor9 / 100, 0, 160, teamPoolAddress, block.timestamp, 2, mem[(2 * ceil32(return_data.size)) + 420 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if ext_call.return_data[0] and stor11 > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            if ext_call.return_data[0] * stor11 / 100 and stor12 > -1 / ext_call.return_data[0] * stor11 / 100:
                                revert with 0, 17
                            mem[(2 * ceil32(return_data.size)) + 228] = address(stor22.field_8)
                            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            require ext_code.size(stor23)
                            call stor23.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor22.field_0), ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Approve failed'
                            if not ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 228] = rewardsPoolAddress
                                mem[(4 * ceil32(return_data.size)) + 260] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                mem[(4 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[(6 * ceil32(return_data.size)) + 228] = address(stor22.field_8)
                                mem[(6 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor22.field_0), ext_call.return_data[0] * stor10 / 100 / 2
                                mem[(6 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                else:
                                    mem[(7 * ceil32(return_data.size)) + 224] = 2
                                    mem[(7 * ceil32(return_data.size)) + 256] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(7 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (8 * ceil32(return_data.size)) + 320
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[(8 * ceil32(return_data.size)) + 356] = 0
                                    mem[(8 * ceil32(return_data.size)) + 388] = 160
                                    mem[(8 * ceil32(return_data.size)) + 484] = 2
                                    idx = 0
                                    s = (8 * ceil32(return_data.size)) + 516
                                    t = (7 * ceil32(return_data.size)) + 256
                                    while idx < mem[(7 * ceil32(return_data.size)) + 224]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(8 * ceil32(return_data.size)) + 420] = this.address
                                    mem[(8 * ceil32(return_data.size)) + 452] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (8 * ceil32(return_data.size)) + (32 * mem[(7 * ceil32(return_data.size)) + 224]) + -mem[64] + 512]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor22.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _801 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_801] == bool(mem[_801])
                                    if not mem[_801]:
                                        revert with 0, 'Approve failed'
                                require ext_code.size(address(stor22.field_8))
                                call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2));
                            else:
                                mem[(4 * ceil32(return_data.size)) + 224] = 2
                                mem[(4 * ceil32(return_data.size)) + 256] = tokenAddress
                                require ext_code.size(address(stor22.field_8))
                                staticcall address(stor22.field_8).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[(4 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 320
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[12 len 20]
                                mem[(6 * ceil32(return_data.size)) + 320] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(6 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * stor11 / 100 * stor12 / 100
                                mem[(6 * ceil32(return_data.size)) + 356] = 0
                                mem[(6 * ceil32(return_data.size)) + 388] = 160
                                mem[(6 * ceil32(return_data.size)) + 484] = 2
                                idx = 0
                                s = (6 * ceil32(return_data.size)) + 516
                                t = (4 * ceil32(return_data.size)) + 256
                                while idx < mem[(4 * ceil32(return_data.size)) + 224]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(6 * ceil32(return_data.size)) + 420] = this.address
                                mem[(6 * ceil32(return_data.size)) + 452] = block.timestamp
                                require ext_code.size(address(stor22.field_8))
                                call address(stor22.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * stor11 / 100 * stor12 / 100, 0, 160, address(this.address), block.timestamp, mem[(6 * ceil32(return_data.size)) + 484 len (32 * mem[(4 * ceil32(return_data.size)) + 224]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor11 / 100 < ext_call.return_data[0] * stor11 / 100 * stor12 / 100:
                                    revert with 0, 17
                                mem[(6 * ceil32(return_data.size)) + 324] = rewardsPoolAddress
                                mem[(6 * ceil32(return_data.size)) + 356] = (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100)
                                require ext_code.size(stor23)
                                call stor23.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor11 / 100) - (ext_call.return_data[0] * stor11 / 100 * stor12 / 100), mem[(6 * ceil32(return_data.size)) + 388 len 9 * ceil32(return_data.size)]
                                mem[(6 * ceil32(return_data.size)) + 320] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and stor10 > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor10 / 100 < ext_call.return_data[0] * stor10 / 100 / 2:
                                    revert with 0, 17
                                mem[(8 * ceil32(return_data.size)) + 324] = address(stor22.field_8)
                                mem[(8 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] * stor10 / 100 / 2
                                require ext_code.size(stor23)
                                call stor23.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[(8 * ceil32(return_data.size)) + 324 len (13 * ceil32(return_data.size)) + 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(8 * ceil32(return_data.size)) + 320] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(8 * ceil32(return_data.size)) + 324] = 32
                                    mem[(8 * ceil32(return_data.size)) + 356] = 14
                                    mem[(8 * ceil32(return_data.size)) + 388] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                    revert with memory
                                      from (8 * ceil32(return_data.size)) + 320
                                       len (15 * ceil32(return_data.size)) + 100
                                if not Mask(255, 1, ext_call.return_data[0] * stor10 / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[(8 * ceil32(return_data.size)) + 324] = address(stor22.field_8)
                                    mem[(8 * ceil32(return_data.size)) + 356] = (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2)
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(8 * ceil32(return_data.size)) + 324 len (15 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed', mem[(11 * ceil32(return_data.size)) + 420 len 9 * ceil32(return_data.size)]
                                    mem[(11 * ceil32(return_data.size)) + 388] = 0
                                    mem[(11 * ceil32(return_data.size)) + 420] = 0
                                    mem[(11 * ceil32(return_data.size)) + 452] = rewardsPoolAddress
                                    mem[(11 * ceil32(return_data.size)) + 484] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[(11 * ceil32(return_data.size)) + 516 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        Mask(255, 1, ext_call.return_data[0] * stor10 / 100),
                                                        0,
                                                        (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2),
                                                        mem[(12 * ceil32(return_data.size)) + 416 len 9 * ceil32(return_data.size)],
                                else:
                                    mem[(8 * ceil32(return_data.size)) + 320] = 2
                                    mem[(8 * ceil32(return_data.size)) + 352] = tokenAddress
                                    require ext_code.size(address(stor22.field_8))
                                    staticcall address(stor22.field_8).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(8 * ceil32(return_data.size)) + 416] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (10 * ceil32(return_data.size)) + 416
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(8 * ceil32(return_data.size)) + 384] = ext_call.return_data[12 len 20]
                                    mem[(10 * ceil32(return_data.size)) + 416] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(10 * ceil32(return_data.size)) + 420] = ext_call.return_data[0] * stor10 / 100 / 2
                                    mem[(10 * ceil32(return_data.size)) + 452] = 0
                                    mem[(10 * ceil32(return_data.size)) + 484] = 160
                                    mem[(10 * ceil32(return_data.size)) + 580] = 2
                                    idx = 0
                                    s = (10 * ceil32(return_data.size)) + 612
                                    t = (8 * ceil32(return_data.size)) + 352
                                    while idx < mem[(8 * ceil32(return_data.size)) + 320]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(10 * ceil32(return_data.size)) + 516] = this.address
                                    mem[(10 * ceil32(return_data.size)) + 548] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * stor10 / 100), 0, 160, address(this.address), block.timestamp, mem[(10 * ceil32(return_data.size)) + 580 len (32 * mem[(8 * ceil32(return_data.size)) + 320]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor23)
                                    call stor23.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor22.field_0), (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), mem[(10 * ceil32(return_data.size)) + 484 len 17 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed', mem[(12 * ceil32(return_data.size)) + 516 len 20 * ceil32(return_data.size)]
                                    mem[(12 * ceil32(return_data.size)) + 484] = 0
                                    mem[(12 * ceil32(return_data.size)) + 516] = 0
                                    mem[(12 * ceil32(return_data.size)) + 548] = rewardsPoolAddress
                                    mem[(12 * ceil32(return_data.size)) + 580] = block.timestamp
                                    require ext_code.size(address(stor22.field_8))
                                    call address(stor22.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[(12 * ceil32(return_data.size)) + 612 len 20 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        Mask(255, 1, ext_call.return_data[0] * stor10 / 100),
                                                        0,
                                                        (ext_call.return_data[0] * stor10 / 100) - (ext_call.return_data[0] * stor10 / 100 / 2),
                                                        mem[(14 * ceil32(return_data.size)) + 512 len 24 * ceil32(return_data.size)],
                        stor26 = 0
    return 1
}



}
