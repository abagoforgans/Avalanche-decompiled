contract main {




// =====================  Runtime code  =====================


#
#  - sub_492c5001(?)
#  - withdrawAVAX(uint256 arg1)
#  - sub_c0ccdf1e(?)
#  - getAVAXquoteForLPamount(uint256 arg1)
#
const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
uint8 paused; offset 160
address owner;
address factoryAddress;
address routerAddress;
address sub_91dcd7a7Address;
uint32 stor11;
address sub_5d44569dAddress;
uint256 stor11;
address lPtokenAddress;
address sub_f0fe082aAddress;
address sub_96a8797eAddress;
array of struct sub_ec499c72;
array of struct sub_906682ec;
array of address sub_0fb1340f;
array of address sub_6ec44b8f;
uint8 sub_7ee383be;
uint8 sub_cfa8586d; offset 8

function name() {
    return name[0 len name.length]
}

function sub_0fb1340f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_0fb1340f.length
    return sub_0fb1340f[arg1]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(paused)
}

function sub_5d44569d(?) {
    return address(sub_5d44569dAddress)
}

function sub_6ec44b8f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_6ec44b8f.length
    return sub_6ec44b8f[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7ee383be(?) {
    return bool(sub_7ee383be)
}

function owner() {
    return owner
}

function sub_906682ec(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_906682ec.length
    return sub_906682ec[arg1].field_0
}

function sub_91dcd7a7(?) {
    return sub_91dcd7a7Address
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_96a8797e(?) {
    return sub_96a8797eAddress
}

function LPtoken() {
    return lPtokenAddress
}

function Factory() {
    return factoryAddress
}

function sub_cfa8586d(?) {
    return bool(sub_cfa8586d)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ec499c72(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ec499c72.length
    return sub_ec499c72[arg1].field_0
}

function sub_f0fe082a(?) {
    return sub_f0fe082aAddress
}

function Router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_cc85d60b(?) {
    require ext_code.size(address(sub_5d44569dAddress))
    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_10b456cc(?) {
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a88f7133(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_91dcd7a7Address)
    staticcall sub_91dcd7a7Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d7d1aaf8(?) {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(address(sub_5d44569dAddress))
    call address(sub_5d44569dAddress).0xe907e52 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2f19b80d: block.timestamp
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8acdc34b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if sub_cfa8586d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x734379636c655661756c7456333a205265776172647320616464726573732068617320616c7265616479206265656e207365,
                    mem[214 len 14]
    sub_91dcd7a7Address = arg1
    sub_cfa8586d = 1
}

function setStrategy(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if sub_7ee383be:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x654379636c655661756c7456333a20537472617465677920616464726573732068617320616c7265616479206265656e207365,
                    mem[215 len 13]
    address(sub_5d44569dAddress) = arg1
    sub_7ee383be = 1
}

function balanceLPinSystem() {
    require ext_code.size(address(sub_5d44569dAddress))
    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x5945524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x5845524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x72ddf252: arg2, msg.sender, arg1
    return 1
}

function sub_de5d36e2(?) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 10^18
    require ext_code.size(address(sub_5d44569dAddress))
    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 2)))
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x5845524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0x72ddf252: arg3, arg1, arg2
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_636e0f7b(?) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    require ext_code.size(sub_91dcd7a7Address)
    staticcall sub_91dcd7a7Address.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_5d44569dAddress))
    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not 2 * ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if (ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 2 * ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / totalSupply)
    ('iszero', ('stor', ('name', 'totalSupply', 2)))
    revert
}

function depositLP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor6 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if arg1 <= 0:
        revert with 0, 'CycleVaultV3: 0 LP deposit'
    emit 0xabb29981: arg1
    require ext_code.size(address(sub_5d44569dAddress))
    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lPtokenAddress)
    staticcall lPtokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(lPtokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call lPtokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        if not totalSupply:
            if not this.address:
                revert with 0, 'ERC20: mint to the zero address'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg1
            emit 0x72ddf252: arg1, 0, this.address
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[396 len 20],
                            0,
                            mem[420 len 4]
            if not sub_91dcd7a7Address:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
            allowance[address(this.address)][stor10] = arg1
            emit Approval(arg1, this.address, sub_91dcd7a7Address);
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x5beeee0d with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x1a2b6f9e: arg1, msg.sender
        else:
            if not arg1:
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[396 len 20],
                                0,
                                mem[420 len 4]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
                allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args 0 / 2 * ext_call.return_data[0], msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                emit 0x72ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, this.address
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[396 len 20],
                                0,
                                mem[420 len 4]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[394 len 22], 0, mem[420 len 4]
                allowance[address(this.address)][stor10] = totalSupply * arg1 / 2 * ext_call.return_data[0]
                emit Approval((totalSupply * arg1 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args totalSupply * arg1 / 2 * ext_call.return_data[0], msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x1a2b6f9e: (totalSupply * arg1 / 2 * ext_call.return_data[0]), msg.sender
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
        if not ext_code.size(lPtokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, arg1) >> 32
        call lPtokenAddress with:
           funct uint32(stor11)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[520 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
        else:
            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[488]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 567 len 22]
        require ext_code.size(address(sub_5d44569dAddress))
        call address(sub_5d44569dAddress).0xd0e30db0 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x842ccd99: arg1
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        if not totalSupply:
            if not this.address:
                revert with 0, 'ERC20: mint to the zero address'
            if arg1 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if arg1 + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] += arg1
            emit 0x72ddf252: arg1, 0, this.address
            if not this.address:
                revert with 0, 
                            32,
                            36,
                            0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                            mem[ceil32(return_data.size) + 397 len 28]
            if not sub_91dcd7a7Address:
                revert with 0, 
                            32,
                            34,
                            0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                            mem[ceil32(return_data.size) + 395 len 30]
            allowance[address(this.address)][stor10] = arg1
            emit Approval(arg1, this.address, sub_91dcd7a7Address);
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x5beeee0d with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x1a2b6f9e: arg1, msg.sender
        else:
            if not arg1:
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * ext_call.return_data[0]
                if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 397 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 395 len 30]
                allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args 0 / 2 * ext_call.return_data[0], msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if 2 * ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require 2 * ext_call.return_data[0]
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += totalSupply * arg1 / 2 * ext_call.return_data[0]
                if (totalSupply * arg1 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += totalSupply * arg1 / 2 * ext_call.return_data[0]
                emit 0x72ddf252: (totalSupply * arg1 / 2 * ext_call.return_data[0]), 0, this.address
                if not this.address:
                    revert with 0, 
                                32,
                                36,
                                0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 397 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 
                                32,
                                34,
                                0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 395 len 30]
                allowance[address(this.address)][stor10] = totalSupply * arg1 / 2 * ext_call.return_data[0]
                emit Approval((totalSupply * arg1 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args totalSupply * arg1 / 2 * ext_call.return_data[0], msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x1a2b6f9e: (totalSupply * arg1 / 2 * ext_call.return_data[0]), msg.sender
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(return_data.size) + 563 len 26]
        if not ext_code.size(lPtokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, arg1) >> 32
        mem[ceil32(return_data.size) + 549 len 4] = 0
        call lPtokenAddress with:
           funct uint32(stor11)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 521 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(address(sub_5d44569dAddress))
            call address(sub_5d44569dAddress).0xd0e30db0 with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x842ccd99: arg1
        else:
            mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 489]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            require ext_code.size(address(sub_5d44569dAddress))
            call address(sub_5d44569dAddress).0xd0e30db0 with:
                 gas gas_remaining wei
                args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x842ccd99: arg1, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
    stor6 = 1
}

function withdrawLP(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_91dcd7a7Address)
    staticcall sub_91dcd7a7Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x6c4379636c655661756c7456333a20496e73756666696369656e742073686172652062616c616e636520666f722077697468647261,
                    mem[217 len 11]
    if not totalSupply:
        require ext_code.size(sub_91dcd7a7Address)
        call sub_91dcd7a7Address.0x3c95832f with:
             gas gas_remaining wei
            args arg1, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(this.address)]:
            revert with 0, 'ERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
        balanceOf[address(this.address)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit 0x72ddf252: arg1, this.address, 0
        emit 0x8bf178dc: arg1, msg.sender
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10^18:
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
            call lPtokenAddress with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args 0xde0b6b30000000000000000000000000000000000000000000000000000000000000000, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit 0xef371a61: 10^18
        else:
            if ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(sub_5d44569dAddress))
            call address(sub_5d44569dAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args (-ext_call.return_data[0] + 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0x509a2c9f: (-ext_call.return_data[0] + 10^18)
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= 10^18:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 232830643
                call lPtokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0xde0b6b30000000000000000000000000000000000000000000000000000000000000000, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0xef371a61: 10^18
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                call lPtokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0xef371a61: ext_call.return_data[0]
    else:
        require ext_code.size(address(sub_5d44569dAddress))
        staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(lPtokenAddress)
        staticcall lPtokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x3c95832f with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'ERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit 0x72ddf252: arg1, this.address, 0
            emit 0x8bf178dc: arg1, msg.sender
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= 0 / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                call lPtokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0xef371a61: (0 / totalSupply)
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_5d44569dAddress))
                call address(sub_5d44569dAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args ((0 / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x509a2c9f: ((0 / totalSupply) - ext_call.return_data[0])
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= 0 / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    call lPtokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit 0xef371a61: (0 / totalSupply)
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call lPtokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit 0xef371a61: ext_call.return_data[0]
        else:
            if (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / 2 * ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.0x3c95832f with:
                 gas gas_remaining wei
                args arg1, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x5445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'ERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            balanceOf[address(this.address)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit 0x72ddf252: arg1, this.address, 0
            emit 0x8bf178dc: arg1, msg.sender
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                call lPtokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                else:
                    mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[388]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 467 len 22]
                emit 0xef371a61: ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply)
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_5d44569dAddress))
                call address(sub_5d44569dAddress).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x509a2c9f: (((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - ext_call.return_data[0])
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] >= (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) >> 32
                    call lPtokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) << 224, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit 0xef371a61: ((ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply)
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
                    call lPtokenAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[420 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
                    else:
                        mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[388]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 467 len 22]
                    emit 0xef371a61: ext_call.return_data[0]
    stor6 = 1
}

function sub_a0d065c3(?) payable {
    if stor6 == 2:
        revert with 0, 'sReentrancyGuard: reentrant call'
    stor6 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if not msg.value:
        revert with 0, 'CycleVaultV3: 0 AVAX deposit'
    emit 0xb43525f8: msg.value
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66)
    call 0x00b31f66aa3c1e785363f0875a1b74e27b85fd66.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp + 120 < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[100] = msg.value / 2
    mem[132] = 0
    mem[196] = this.address
    mem[228] = block.timestamp + 120
    mem[164] = 160
    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_f0fe082aAddress:
        mem[260] = sub_906682ec.length
        if not sub_906682ec.length:
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_906682ec.length
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _37 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
            _46 = mem[_37 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_37 + 96])] = mem[_37 + 128 len floor32(mem[_37 + 96])]
            require ext_code.size(sub_f0fe082aAddress)
            staticcall sub_f0fe082aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_96a8797eAddress)
            staticcall sub_96a8797eAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sub_5d44569dAddress))
            staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp + 120 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _46) + ceil32(return_data.size) + 356] = block.timestamp + 120
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not totalSupply:
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if ext_call.return_data[64] + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += ext_call.return_data[64]
                if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += ext_call.return_data[64]
                emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                if not this.address:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                allowance[address(this.address)][stor10] = ext_call.return_data[64]
                emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args ext_call.return_data[64], msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
            else:
                if not ext_call.return_data[64]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                    emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                    allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                    emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                else:
                    if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                    if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                    emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                    allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                    emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
            mem[(32 * _46) + ceil32(return_data.size) + 164] = address(sub_5d44569dAddress)
            mem[(32 * _46) + ceil32(return_data.size) + 196] = ext_call.return_data[64]
            mem[(32 * _46) + ceil32(return_data.size) + 128] = 68
            mem[(32 * _46) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor11)
            mem[(32 * _46) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _46) + ceil32(return_data.size) + 228] = 32
            mem[(32 * _46) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _46) + ceil32(return_data.size) + 398 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _46) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
            mem[(32 * _46) + ceil32(return_data.size) + 384 len 4] = 0
            call lPtokenAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
            if not return_data.size:
                if not ext_call.success:
                    if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                        revert with memory
                          from 128
                           len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                    if not Mask(31, 1, msg.value), 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _46) + ceil32(return_data.size) + 402 len 22]
            else:
                mem[(32 * _46) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _46) + ceil32(return_data.size) + 324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _46) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
        else:
            mem[0] = 16
            mem[292] = address(sub_906682ec.field_0)
            idx = 292
            s = 0
            while (32 * sub_906682ec.length) + 292 > idx + 32:
                mem[idx + 32] = sub_906682ec[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args 0, Mask(31, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_906682ec.length, mem[292 len 32 * sub_906682ec.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _1938 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
            _2009 = mem[_1938 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_1938 + 96])] = mem[_1938 + 128 len floor32(mem[_1938 + 96])]
            require ext_code.size(sub_f0fe082aAddress)
            staticcall sub_f0fe082aAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_96a8797eAddress)
            staticcall sub_96a8797eAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(sub_5d44569dAddress))
            staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(lPtokenAddress)
            staticcall lPtokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp + 120 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[(32 * _2009) + ceil32(return_data.size) + 356] = block.timestamp + 120
            require ext_code.size(routerAddress)
            call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                 gas gas_remaining wei
                args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not totalSupply:
                if not this.address:
                    revert with 0, 'ERC20: mint to the zero address'
                if ext_call.return_data[64] + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += ext_call.return_data[64]
                if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] += ext_call.return_data[64]
                emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                if not this.address:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                if not sub_91dcd7a7Address:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                allowance[address(this.address)][stor10] = ext_call.return_data[64]
                emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                require ext_code.size(sub_91dcd7a7Address)
                call sub_91dcd7a7Address.0x5beeee0d with:
                     gas gas_remaining wei
                    args ext_call.return_data[64], msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
            else:
                if not ext_call.return_data[64]:
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / 2 * ext_call.return_data[0]
                    if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                    emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                    allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                    emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args 0 / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                else:
                    if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                    if 2 * ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require 2 * ext_call.return_data[0]
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                    if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                    emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                    allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                    emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
            mem[(32 * _2009) + ceil32(return_data.size) + 164] = address(sub_5d44569dAddress)
            mem[(32 * _2009) + ceil32(return_data.size) + 196] = ext_call.return_data[64]
            mem[(32 * _2009) + ceil32(return_data.size) + 128] = 68
            mem[(32 * _2009) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor11)
            mem[(32 * _2009) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
            mem[(32 * _2009) + ceil32(return_data.size) + 228] = 32
            mem[(32 * _2009) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * _2009) + ceil32(return_data.size) + 398 len 26]
            if not ext_code.size(lPtokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * _2009) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
            mem[(32 * _2009) + ceil32(return_data.size) + 384 len 4] = 0
            call lPtokenAddress with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
            if not return_data.size:
                if not ext_call.success:
                    if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                        revert with memory
                          from 128
                           len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                    revert with 0, 'SafeERC20: low-level call failed'
                if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                    require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                    if not Mask(31, 1, msg.value), 0:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2009) + ceil32(return_data.size) + 402 len 22]
            else:
                mem[(32 * _2009) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * _2009) + ceil32(return_data.size) + 324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _2009) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
    else:
        mem[260] = sub_ec499c72.length
        if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
            if not sub_ec499c72.length:
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_ec499c72.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _41 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
                _48 = mem[_41 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_41 + 96])] = mem[_41 + 128 len floor32(mem[_41 + 96])]
                require ext_code.size(sub_f0fe082aAddress)
                staticcall sub_f0fe082aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_96a8797eAddress)
                staticcall sub_96a8797eAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_5d44569dAddress))
                staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _48) + ceil32(return_data.size) + 356] = block.timestamp + 120
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not totalSupply:
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if ext_call.return_data[64] + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += ext_call.return_data[64]
                    if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += ext_call.return_data[64]
                    emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                    allowance[address(this.address)][stor10] = ext_call.return_data[64]
                    emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args ext_call.return_data[64], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
                else:
                    if not ext_call.return_data[64]:
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / 2 * ext_call.return_data[0]
                        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                        emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                        emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args 0 / 2 * ext_call.return_data[0], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                    else:
                        if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                        if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                        emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                        emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
                mem[(32 * _48) + ceil32(return_data.size) + 164] = address(sub_5d44569dAddress)
                mem[(32 * _48) + ceil32(return_data.size) + 196] = ext_call.return_data[64]
                mem[(32 * _48) + ceil32(return_data.size) + 128] = 68
                mem[(32 * _48) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor11)
                mem[(32 * _48) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _48) + ceil32(return_data.size) + 228] = 32
                mem[(32 * _48) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _48) + ceil32(return_data.size) + 398 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _48) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
                mem[(32 * _48) + ceil32(return_data.size) + 384 len 4] = 0
                call lPtokenAddress with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                        if not Mask(31, 1, msg.value), 0:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _48) + ceil32(return_data.size) + 402 len 22]
                else:
                    mem[(32 * _48) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _48) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _48) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
            else:
                mem[0] = 15
                mem[292] = address(sub_ec499c72.field_0)
                idx = 292
                s = 0
                while (32 * sub_ec499c72.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_ec499c72[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_ec499c72.length, mem[292 len 32 * sub_ec499c72.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1936 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
                _1984 = mem[_1936 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_1936 + 96])] = mem[_1936 + 128 len floor32(mem[_1936 + 96])]
                require ext_code.size(sub_f0fe082aAddress)
                staticcall sub_f0fe082aAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_96a8797eAddress)
                staticcall sub_96a8797eAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(sub_5d44569dAddress))
                staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(lPtokenAddress)
                staticcall lPtokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1984) + ceil32(return_data.size) + 356] = block.timestamp + 120
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                     gas gas_remaining wei
                    args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if not totalSupply:
                    if not this.address:
                        revert with 0, 'ERC20: mint to the zero address'
                    if ext_call.return_data[64] + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += ext_call.return_data[64]
                    if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(this.address)] += ext_call.return_data[64]
                    emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                    if not this.address:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                    if not sub_91dcd7a7Address:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                    allowance[address(this.address)][stor10] = ext_call.return_data[64]
                    emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                    require ext_code.size(sub_91dcd7a7Address)
                    call sub_91dcd7a7Address.0x5beeee0d with:
                         gas gas_remaining wei
                        args ext_call.return_data[64], msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
                else:
                    if not ext_call.return_data[64]:
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / 2 * ext_call.return_data[0]
                        if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                        emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                        emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args 0 / 2 * ext_call.return_data[0], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                    else:
                        if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                            revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                        if 2 * ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require 2 * ext_call.return_data[0]
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                        if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                        emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                        emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
                mem[(32 * _1984) + ceil32(return_data.size) + 164] = address(sub_5d44569dAddress)
                mem[(32 * _1984) + ceil32(return_data.size) + 196] = ext_call.return_data[64]
                mem[(32 * _1984) + ceil32(return_data.size) + 128] = 68
                mem[(32 * _1984) + ceil32(return_data.size) + 164 len 28] = Mask(224, 0, stor11)
                mem[(32 * _1984) + ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                mem[(32 * _1984) + ceil32(return_data.size) + 228] = 32
                mem[(32 * _1984) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1984) + ceil32(return_data.size) + 398 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1984) + ceil32(return_data.size) + 292 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
                mem[(32 * _1984) + ceil32(return_data.size) + 384 len 4] = 0
                call lPtokenAddress with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            revert with memory
                              from 128
                               len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                        require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                        if not Mask(31, 1, msg.value), 0:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1984) + ceil32(return_data.size) + 402 len 22]
                else:
                    mem[(32 * _1984) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[(32 * _1984) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1984) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
        else:
            if not sub_ec499c72.length:
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_ec499c72.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _39 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
                _47 = mem[_39 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_39 + 96])] = mem[_39 + 128 len floor32(mem[_39 + 96])]
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _47) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _47) + ceil32(return_data.size) + 132] = msg.value / 2
                mem[(32 * _47) + ceil32(return_data.size) + 164] = 0
                mem[(32 * _47) + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _47) + ceil32(return_data.size) + 260] = block.timestamp + 120
                mem[(32 * _47) + ceil32(return_data.size) + 196] = 160
                mem[(32 * _47) + ceil32(return_data.size) + 292] = sub_906682ec.length
                if not sub_906682ec.length:
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_906682ec.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _47) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _47) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _995 = mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32
                    require mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                    require mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                    require mem[(32 * _47) + ceil32(return_data.size) + mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= 4294967296 and mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _47) + ceil32(return_data.size) + mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 <= return_data.size
                    mem[(32 * _47) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _47) + ceil32(return_data.size) + mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
                    _1004 = mem[(32 * _47) + ceil32(return_data.size) + _995 + 128]
                    mem[(32 * _47) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _47) + ceil32(return_data.size) + _995 + 128])] = mem[(32 * _47) + ceil32(return_data.size) + _995 + 160 len floor32(mem[(32 * _47) + ceil32(return_data.size) + _995 + 128])]
                    require ext_code.size(sub_f0fe082aAddress)
                    staticcall sub_f0fe082aAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96a8797eAddress)
                    staticcall sub_96a8797eAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_5d44569dAddress))
                    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lPtokenAddress)
                    staticcall lPtokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not totalSupply:
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if ext_call.return_data[64] + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += ext_call.return_data[64]
                        if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += ext_call.return_data[64]
                        emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = ext_call.return_data[64]
                        emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
                    else:
                        if not ext_call.return_data[64]:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 2 * ext_call.return_data[0]
                            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                            emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args 0 / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                        else:
                            if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 196] = address(sub_5d44569dAddress)
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[64]
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor11)
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
                    mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call lPtokenAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not Mask(31, 1, msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _1004) + (32 * _47) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                else:
                    mem[0] = 16
                    mem[(32 * _47) + ceil32(return_data.size) + 324] = address(sub_906682ec.field_0)
                    idx = (32 * _47) + ceil32(return_data.size) + 324
                    s = 0
                    while (32 * _47) + ceil32(return_data.size) + (32 * sub_906682ec.length) + 324 > idx + 32:
                        mem[idx + 32] = sub_906682ec[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_906682ec.length, mem[(32 * _47) + ceil32(return_data.size) + 324 len 32 * sub_906682ec.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _47) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _47) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _3542 = mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32
                    require mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                    require mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                    require mem[(32 * _47) + ceil32(return_data.size) + mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= 4294967296 and mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _47) + ceil32(return_data.size) + mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 <= return_data.size
                    mem[(32 * _47) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _47) + ceil32(return_data.size) + mem[(32 * _47) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
                    _3600 = mem[(32 * _47) + ceil32(return_data.size) + _3542 + 128]
                    mem[(32 * _47) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _47) + ceil32(return_data.size) + _3542 + 128])] = mem[(32 * _47) + ceil32(return_data.size) + _3542 + 160 len floor32(mem[(32 * _47) + ceil32(return_data.size) + _3542 + 128])]
                    require ext_code.size(sub_f0fe082aAddress)
                    staticcall sub_f0fe082aAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96a8797eAddress)
                    staticcall sub_96a8797eAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_5d44569dAddress))
                    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lPtokenAddress)
                    staticcall lPtokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not totalSupply:
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if ext_call.return_data[64] + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += ext_call.return_data[64]
                        if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += ext_call.return_data[64]
                        emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = ext_call.return_data[64]
                        emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
                    else:
                        if not ext_call.return_data[64]:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 2 * ext_call.return_data[0]
                            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                            emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args 0 / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                        else:
                            if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 196] = address(sub_5d44569dAddress)
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[64]
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor11)
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
                    mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call lPtokenAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not Mask(31, 1, msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _3600) + (32 * _47) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
            else:
                mem[0] = 15
                mem[292] = address(sub_ec499c72.field_0)
                idx = 292
                s = 0
                while (32 * sub_ec499c72.length) + 292 > idx + 32:
                    mem[idx + 32] = sub_ec499c72[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args 0, Mask(31, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_ec499c72.length, mem[292 len 32 * sub_ec499c72.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1934 = mem[96 len 4], Mask(224, 32, msg.value) >> 32
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                require mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                require mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, msg.value) >> 32 + 96]
                _1959 = mem[_1934 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_1934 + 96])] = mem[_1934 + 128 len floor32(mem[_1934 + 96])]
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1959) + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _1959) + ceil32(return_data.size) + 132] = msg.value / 2
                mem[(32 * _1959) + ceil32(return_data.size) + 164] = 0
                mem[(32 * _1959) + ceil32(return_data.size) + 228] = this.address
                mem[(32 * _1959) + ceil32(return_data.size) + 260] = block.timestamp + 120
                mem[(32 * _1959) + ceil32(return_data.size) + 196] = 160
                mem[(32 * _1959) + ceil32(return_data.size) + 292] = sub_906682ec.length
                if not sub_906682ec.length:
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_906682ec.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1959) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1959) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _3623 = mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32
                    require mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                    require mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1959) + ceil32(return_data.size) + mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= 4294967296 and mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1959) + ceil32(return_data.size) + mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 <= return_data.size
                    mem[(32 * _1959) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _1959) + ceil32(return_data.size) + mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
                    _3683 = mem[(32 * _1959) + ceil32(return_data.size) + _3623 + 128]
                    mem[(32 * _1959) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _1959) + ceil32(return_data.size) + _3623 + 128])] = mem[(32 * _1959) + ceil32(return_data.size) + _3623 + 160 len floor32(mem[(32 * _1959) + ceil32(return_data.size) + _3623 + 128])]
                    require ext_code.size(sub_f0fe082aAddress)
                    staticcall sub_f0fe082aAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96a8797eAddress)
                    staticcall sub_96a8797eAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_5d44569dAddress))
                    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lPtokenAddress)
                    staticcall lPtokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not totalSupply:
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if ext_call.return_data[64] + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += ext_call.return_data[64]
                        if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += ext_call.return_data[64]
                        emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = ext_call.return_data[64]
                        emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
                    else:
                        if not ext_call.return_data[64]:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 2 * ext_call.return_data[0]
                            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                            emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args 0 / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                        else:
                            if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 196] = address(sub_5d44569dAddress)
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[64]
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor11)
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
                    mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call lPtokenAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not Mask(31, 1, msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _3683) + (32 * _1959) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
                else:
                    mem[0] = 16
                    mem[(32 * _1959) + ceil32(return_data.size) + 324] = address(sub_906682ec.field_0)
                    idx = (32 * _1959) + ceil32(return_data.size) + 324
                    s = 0
                    while (32 * _1959) + ceil32(return_data.size) + (32 * sub_906682ec.length) + 324 > idx + 32:
                        mem[idx + 32] = sub_906682ec[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args Mask(255, 1, msg.value), 0, 160, address(this.address), block.timestamp + 120, sub_906682ec.length, mem[(32 * _1959) + ceil32(return_data.size) + 324 len 32 * sub_906682ec.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(32 * _1959) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (32 * _1959) + (2 * ceil32(return_data.size)) + 128
                    require return_data.size >= 32
                    _5976 = mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32
                    require mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 <= 4294967296
                    require mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 32 <= return_data.size
                    require mem[(32 * _1959) + ceil32(return_data.size) + mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128] <= 4294967296 and mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + (32 * mem[(32 * _1959) + ceil32(return_data.size) + mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]) + 32 <= return_data.size
                    mem[(32 * _1959) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _1959) + ceil32(return_data.size) + mem[(32 * _1959) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.value) >> 32 + 128]
                    _6051 = mem[(32 * _1959) + ceil32(return_data.size) + _5976 + 128]
                    mem[(32 * _1959) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _1959) + ceil32(return_data.size) + _5976 + 128])] = mem[(32 * _1959) + ceil32(return_data.size) + _5976 + 160 len floor32(mem[(32 * _1959) + ceil32(return_data.size) + _5976 + 128])]
                    require ext_code.size(sub_f0fe082aAddress)
                    staticcall sub_f0fe082aAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(sub_96a8797eAddress)
                    staticcall sub_96a8797eAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(sub_5d44569dAddress))
                    staticcall address(sub_5d44569dAddress).0xcc85d60b with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(lPtokenAddress)
                    staticcall lPtokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.addLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint256 rg8) with:
                         gas gas_remaining wei
                        args sub_f0fe082aAddress, sub_96a8797eAddress, ext_call.return_data[0], ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if not totalSupply:
                        if not this.address:
                            revert with 0, 'ERC20: mint to the zero address'
                        if ext_call.return_data[64] + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += ext_call.return_data[64]
                        if ext_call.return_data[64] + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(this.address)] += ext_call.return_data[64]
                        emit 0x72ddf252: ext_call.return_data[64], 0, this.address
                        if not this.address:
                            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                        if not sub_91dcd7a7Address:
                            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                        allowance[address(this.address)][stor10] = ext_call.return_data[64]
                        emit Approval(ext_call.return_data[64], this.address, sub_91dcd7a7Address);
                        require ext_code.size(sub_91dcd7a7Address)
                        call sub_91dcd7a7Address.0x5beeee0d with:
                             gas gas_remaining wei
                            args ext_call.return_data[64], msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x1a2b6f9e: ext_call.return_data[64], msg.sender
                    else:
                        if not ext_call.return_data[64]:
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (0 / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += 0 / 2 * ext_call.return_data[0]
                            if (0 / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += 0 / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (0 / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = 0 / 2 * ext_call.return_data[0]
                            emit Approval((0 / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args 0 / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (0 / 2 * ext_call.return_data[0]), msg.sender
                        else:
                            if totalSupply * ext_call.return_data[64] / ext_call.return_data[64] != totalSupply:
                                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[1 len 31]
                            if 2 * ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require 2 * ext_call.return_data[0]
                            if not this.address:
                                revert with 0, 'ERC20: mint to the zero address'
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            if (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]) + balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(this.address)] += totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit 0x72ddf252: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), 0, this.address
                            if not this.address:
                                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, ext_call.return_data[4 len 28]
                            if not sub_91dcd7a7Address:
                                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, ext_call.return_data[2 len 30]
                            allowance[address(this.address)][stor10] = totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]
                            emit Approval((totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), this.address, sub_91dcd7a7Address);
                            require ext_code.size(sub_91dcd7a7Address)
                            call sub_91dcd7a7Address.0x5beeee0d with:
                                 gas gas_remaining wei
                                args totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0], msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit 0x1a2b6f9e: (totalSupply * ext_call.return_data[64] / 2 * ext_call.return_data[0]), msg.sender
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 196] = address(sub_5d44569dAddress)
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 228] = ext_call.return_data[64]
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 160] = 68
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 196 len 28] = Mask(224, 0, stor11)
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 192 len 4] = unknown_0xa9059cbb(?????)
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 260] = 32
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 430 len 26]
                    if not ext_code.size(lPtokenAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 324 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), ext_call.return_data[64 len 28]
                    mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 416 len 4] = 0
                    call lPtokenAddress with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[64 len 28]) << 256, Mask(32, 224, block.timestamp + 120) >> 224
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                                revert with memory
                                  from 128
                                   len mem[96 len 4], Mask(224, 32, msg.value) >> 32
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96 len 4], Mask(224, 32, msg.value) >> 32:
                            require mem[96 len 4], Mask(224, 32, msg.value) >> 32 >= 32
                            if not Mask(31, 1, msg.value), 0:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 434 len 22]
                    else:
                        mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + 356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(32 * _6051) + (32 * _1959) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 435 len 22]
    require ext_code.size(address(sub_5d44569dAddress))
    call address(sub_5d44569dAddress).0xd0e30db0 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x842ccd99: ext_call.return_data[64]
    stor6 = 1
}



}
