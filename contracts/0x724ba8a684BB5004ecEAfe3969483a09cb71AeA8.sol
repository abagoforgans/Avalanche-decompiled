contract main {




// =====================  Runtime code  =====================


#
#  - sub_492c5001(?)
#  - sub_a0d065c3(?)
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
uint32 stor13;
address sub_f0fe082aAddress;
address sub_96a8797eAddress;
array of address sub_ec499c72;
array of address sub_906682ec;
array of struct sub_0fb1340f;
array of struct sub_6ec44b8f;
uint8 sub_7ee383be;
uint8 sub_cfa8586d; offset 8

function name() {
    return name[0 len name.length]
}

function sub_0fb1340f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_0fb1340f.length
    return sub_0fb1340f[arg1].field_0
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
    return sub_6ec44b8f[arg1].field_0
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
    return sub_906682ec[arg1]
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
    return sub_ec499c72[arg1]
}

function sub_f0fe082a(?) {
    return address(sub_f0fe082aAddress)
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
        call sub_91dcd7a7Address.withdrawToVault(uint256 arg1, address arg2) with:
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
            call address(sub_5d44569dAddress).withdraw(uint256 arg1) with:
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
                mem[420 len 0] = 0
                call lPtokenAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(480, -256, unknown_0xa9059cbb(?????), msg.sender, 232830643) << 256, mem[420 len 4]
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
            call sub_91dcd7a7Address.withdrawToVault(uint256 arg1, address arg2) with:
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
                call address(sub_5d44569dAddress).withdraw(uint256 arg1) with:
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
            call sub_91dcd7a7Address.withdrawToVault(uint256 arg1, address arg2) with:
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
                call address(sub_5d44569dAddress).withdraw(uint256 arg1) with:
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
        call address(sub_5d44569dAddress).deposit() with:
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
        if not return_data.size:
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
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if not ext_code.size(lPtokenAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor11), uint32(stor11), Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + 521 len 0] = 0
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
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(address(sub_5d44569dAddress))
                call address(sub_5d44569dAddress).deposit() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit 0x842ccd99: arg1
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
                    call address(sub_5d44569dAddress).deposit() with:
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
                    call address(sub_5d44569dAddress).deposit() with:
                         gas gas_remaining wei
                        args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x842ccd99: arg1, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        else:
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
                    call address(sub_5d44569dAddress).deposit() with:
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
                    call address(sub_5d44569dAddress).deposit() with:
                         gas gas_remaining wei
                        args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x842ccd99: arg1, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                        call address(sub_5d44569dAddress).deposit() with:
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
                        call address(sub_5d44569dAddress).deposit() with:
                             gas gas_remaining wei
                            args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0xd0e30db000000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit 0x842ccd99: arg1, mem[(2 * ceil32(return_data.size)) + 490 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
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
                    mem[ceil32(return_data.size) + 521 len 0] = 0
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
                    else:
                        mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    require ext_code.size(address(sub_5d44569dAddress))
                    call address(sub_5d44569dAddress).deposit() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit 0x842ccd99: arg1
    stor6 = 1
}

function withdrawAVAX(uint256 arg1) {
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
        mem[132] = msg.sender
        require ext_code.size(sub_91dcd7a7Address)
        call sub_91dcd7a7Address.withdrawToVault(uint256 arg1, address arg2) with:
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
        mem[96] = 34
        mem[128 len 34] = 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        if arg1 > balanceOf[address(this.address)]:
            revert with 0, 'ERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
        mem[32] = 0
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
            if block.timestamp + 120 < block.timestamp:
                revert with 0, 'SafeMath: addition overflow'
            mem[388] = block.timestamp + 120
            require ext_code.size(routerAddress)
            call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                 gas gas_remaining wei
                args 0, uint32(stor13), sub_96a8797eAddress, 10^18, 0, 0, address(this.address), block.timestamp + 120
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(sub_f0fe082aAddress))
            staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
            if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp + 120
                mem[260] = 160
                mem[356] = sub_6ec44b8f.length
                if not sub_6ec44b8f.length:
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _148 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _171 = mem[_148 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_148 + 192])] = mem[_148 + 224 len floor32(mem[_148 + 192])]
                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        37,
                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _171) + ceil32(return_data.size) + 329 len 27]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        37,
                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _171) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                else:
                    mem[0] = 18
                    mem[388] = address(sub_6ec44b8f.field_0)
                    idx = 388
                    s = 0
                    while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(return_data.size) + 192
                    require return_data.size >= 32
                    _2017 = mem[192 len 4], ext_call.return_data[0 len 28]
                    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                    _2150 = mem[_2017 + 192]
                    mem[ceil32(return_data.size) + 224 len floor32(mem[_2017 + 192])] = mem[_2017 + 224 len floor32(mem[_2017 + 192])]
                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call msg.sender with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        37,
                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _2150) + ceil32(return_data.size) + 329 len 27]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        37,
                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                        mem[(32 * _2150) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
            else:
                mem[0] = this.address
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp + 120
                mem[260] = 160
                mem[356] = sub_0fb1340f.length
                if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                    if not sub_0fb1340f.length:
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _157 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _176 = mem[_157 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_157 + 192])] = mem[_157 + 224 len floor32(mem[_157 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _176) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _176) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = 17
                        mem[388] = address(sub_0fb1340f.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_0fb1340f[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _2015 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _2149 = mem[_2015 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_2015 + 192])] = mem[_2015 + 224 len floor32(mem[_2015 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2149) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2149) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                else:
                    if not sub_0fb1340f.length:
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _155 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _175 = mem[_155 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_155 + 192])] = mem[_155 + 224 len floor32(mem[_155 + 192])]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _175) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _175) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                        mem[(32 * _175) + ceil32(return_data.size) + 260] = 0
                        mem[(32 * _175) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _175) + ceil32(return_data.size) + 356] = block.timestamp + 120
                        mem[(32 * _175) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _175) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                        if not sub_6ec44b8f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _175) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _175) + (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _1527 = mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _175) + ceil32(return_data.size) + mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _175) + ceil32(return_data.size) + mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                            mem[(32 * _175) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _175) + ceil32(return_data.size) + mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            _1716 = mem[(32 * _175) + ceil32(return_data.size) + _1527 + 224]
                            mem[(32 * _175) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _175) + ceil32(return_data.size) + _1527 + 224])] = mem[(32 * _175) + ceil32(return_data.size) + _1527 + 256 len floor32(mem[(32 * _175) + ceil32(return_data.size) + _1527 + 224])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _1716) + (32 * _175) + (2 * ceil32(return_data.size)) + 361 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _1716) + (32 * _175) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                        else:
                            mem[0] = 18
                            mem[(32 * _175) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                            idx = (32 * _175) + ceil32(return_data.size) + 420
                            s = 0
                            while (32 * _175) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                mem[idx + 32] = sub_6ec44b8f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _175) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _175) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _175) + (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3048 = mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _175) + ceil32(return_data.size) + mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _175) + ceil32(return_data.size) + mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                            mem[(32 * _175) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _175) + ceil32(return_data.size) + mem[(32 * _175) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            _3228 = mem[(32 * _175) + ceil32(return_data.size) + _3048 + 224]
                            mem[(32 * _175) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _175) + ceil32(return_data.size) + _3048 + 224])] = mem[(32 * _175) + ceil32(return_data.size) + _3048 + 256 len floor32(mem[(32 * _175) + ceil32(return_data.size) + _3048 + 224])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _3228) + (32 * _175) + (2 * ceil32(return_data.size)) + 361 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _3228) + (32 * _175) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                    else:
                        mem[0] = 17
                        mem[388] = address(sub_0fb1340f.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_0fb1340f[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _2013 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _2148 = mem[_2013 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_2013 + 192])] = mem[_2013 + 224 len floor32(mem[_2013 + 192])]
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[(32 * _2148) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(32 * _2148) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                        mem[(32 * _2148) + ceil32(return_data.size) + 260] = 0
                        mem[(32 * _2148) + ceil32(return_data.size) + 324] = this.address
                        mem[(32 * _2148) + ceil32(return_data.size) + 356] = block.timestamp + 120
                        mem[(32 * _2148) + ceil32(return_data.size) + 292] = 160
                        mem[(32 * _2148) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                        if not sub_6ec44b8f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2148) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2148) + (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _3265 = mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _2148) + ceil32(return_data.size) + mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2148) + ceil32(return_data.size) + mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                            mem[(32 * _2148) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2148) + ceil32(return_data.size) + mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            _3499 = mem[(32 * _2148) + ceil32(return_data.size) + _3265 + 224]
                            mem[(32 * _2148) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2148) + ceil32(return_data.size) + _3265 + 224])] = mem[(32 * _2148) + ceil32(return_data.size) + _3265 + 256 len floor32(mem[(32 * _2148) + ceil32(return_data.size) + _3265 + 224])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _3499) + (32 * _2148) + (2 * ceil32(return_data.size)) + 361 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _3499) + (32 * _2148) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                        else:
                            mem[0] = 18
                            mem[(32 * _2148) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                            idx = (32 * _2148) + ceil32(return_data.size) + 420
                            s = 0
                            while (32 * _2148) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                mem[idx + 32] = sub_6ec44b8f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2148) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(32 * _2148) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (32 * _2148) + (2 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            _4236 = mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                            require mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[(32 * _2148) + ceil32(return_data.size) + mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2148) + ceil32(return_data.size) + mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                            mem[(32 * _2148) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2148) + ceil32(return_data.size) + mem[(32 * _2148) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                            _4263 = mem[(32 * _2148) + ceil32(return_data.size) + _4236 + 224]
                            mem[(32 * _2148) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2148) + ceil32(return_data.size) + _4236 + 224])] = mem[(32 * _2148) + ceil32(return_data.size) + _4236 + 256 len floor32(mem[(32 * _2148) + ceil32(return_data.size) + _4236 + 224])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _4263) + (32 * _2148) + (2 * ceil32(return_data.size)) + 361 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _4263) + (32 * _2148) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
        else:
            if ext_call.return_data[0] > 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(sub_5d44569dAddress))
            call address(sub_5d44569dAddress).withdraw(uint256 arg1) with:
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
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[388] = block.timestamp + 120
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args 0, uint32(stor13), sub_96a8797eAddress, 10^18, 0, 0, address(this.address), block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_f0fe082aAddress))
                staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp + 120
                    mem[260] = 160
                    mem[356] = sub_6ec44b8f.length
                    if not sub_6ec44b8f.length:
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _306 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _341 = mem[_306 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_306 + 192])] = mem[_306 + 224 len floor32(mem[_306 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _341) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _341) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = 18
                        mem[388] = address(sub_6ec44b8f.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_6ec44b8f[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _2023 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _2153 = mem[_2023 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_2023 + 192])] = mem[_2023 + 224 len floor32(mem[_2023 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2153) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2153) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                else:
                    mem[0] = this.address
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp + 120
                    mem[260] = 160
                    mem[356] = sub_0fb1340f.length
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _321 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _354 = mem[_321 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_321 + 192])] = mem[_321 + 224 len floor32(mem[_321 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _354) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _354) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2021 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2152 = mem[_2021 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2021 + 192])] = mem[_2021 + 224 len floor32(mem[_2021 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2152) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2152) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _319 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _353 = mem[_319 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_319 + 192])] = mem[_319 + 224 len floor32(mem[_319 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _353) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _353) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _353) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _353) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _353) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _353) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _353) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _353) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _353) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1531 = mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _353) + ceil32(return_data.size) + mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _353) + ceil32(return_data.size) + mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _353) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _353) + ceil32(return_data.size) + mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _1717 = mem[(32 * _353) + ceil32(return_data.size) + _1531 + 224]
                                mem[(32 * _353) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _353) + ceil32(return_data.size) + _1531 + 224])] = mem[(32 * _353) + ceil32(return_data.size) + _1531 + 256 len floor32(mem[(32 * _353) + ceil32(return_data.size) + _1531 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1717) + (32 * _353) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1717) + (32 * _353) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _353) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _353) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _353) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _353) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _353) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _353) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3052 = mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _353) + ceil32(return_data.size) + mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _353) + ceil32(return_data.size) + mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _353) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _353) + ceil32(return_data.size) + mem[(32 * _353) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3229 = mem[(32 * _353) + ceil32(return_data.size) + _3052 + 224]
                                mem[(32 * _353) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _353) + ceil32(return_data.size) + _3052 + 224])] = mem[(32 * _353) + ceil32(return_data.size) + _3052 + 256 len floor32(mem[(32 * _353) + ceil32(return_data.size) + _3052 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3229) + (32 * _353) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3229) + (32 * _353) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2019 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2151 = mem[_2019 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2019 + 192])] = mem[_2019 + 224 len floor32(mem[_2019 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _2151) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2151) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _2151) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _2151) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _2151) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _2151) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _2151) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2151) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2151) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3270 = mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2151) + ceil32(return_data.size) + mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2151) + ceil32(return_data.size) + mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2151) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2151) + ceil32(return_data.size) + mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3501 = mem[(32 * _2151) + ceil32(return_data.size) + _3270 + 224]
                                mem[(32 * _2151) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2151) + ceil32(return_data.size) + _3270 + 224])] = mem[(32 * _2151) + ceil32(return_data.size) + _3270 + 256 len floor32(mem[(32 * _2151) + ceil32(return_data.size) + _3270 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3501) + (32 * _2151) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3501) + (32 * _2151) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _2151) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _2151) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _2151) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2151) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2151) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2151) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4238 = mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2151) + ceil32(return_data.size) + mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2151) + ceil32(return_data.size) + mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2151) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2151) + ceil32(return_data.size) + mem[(32 * _2151) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _4264 = mem[(32 * _2151) + ceil32(return_data.size) + _4238 + 224]
                                mem[(32 * _2151) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2151) + ceil32(return_data.size) + _4238 + 224])] = mem[(32 * _2151) + ceil32(return_data.size) + _4238 + 256 len floor32(mem[(32 * _2151) + ceil32(return_data.size) + _4238 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4264) + (32 * _2151) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4264) + (32 * _2151) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[388] = block.timestamp + 120
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args 0, uint32(stor13), sub_96a8797eAddress, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_f0fe082aAddress))
                staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp + 120
                mem[260] = 160
                if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                    mem[356] = sub_6ec44b8f.length
                    if not sub_6ec44b8f.length:
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _357 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _394 = mem[_357 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_357 + 192])] = mem[_357 + 224 len floor32(mem[_357 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _394) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _394) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = 18
                        mem[388] = address(sub_6ec44b8f.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_6ec44b8f[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _2029 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _2156 = mem[_2029 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_2029 + 192])] = mem[_2029 + 224 len floor32(mem[_2029 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2156) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2156) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                else:
                    mem[356] = sub_0fb1340f.length
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _367 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _408 = mem[_367 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_367 + 192])] = mem[_367 + 224 len floor32(mem[_367 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _408) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _408) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2027 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2155 = mem[_2027 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2027 + 192])] = mem[_2027 + 224 len floor32(mem[_2027 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2155) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2155) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _365 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _407 = mem[_365 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_365 + 192])] = mem[_365 + 224 len floor32(mem[_365 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _407) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _407) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _407) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _407) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _407) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _407) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _407) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _407) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _407) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1535 = mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _407) + ceil32(return_data.size) + mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _407) + ceil32(return_data.size) + mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _407) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _407) + ceil32(return_data.size) + mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _1718 = mem[(32 * _407) + ceil32(return_data.size) + _1535 + 224]
                                mem[(32 * _407) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _407) + ceil32(return_data.size) + _1535 + 224])] = mem[(32 * _407) + ceil32(return_data.size) + _1535 + 256 len floor32(mem[(32 * _407) + ceil32(return_data.size) + _1535 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1718) + (32 * _407) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1718) + (32 * _407) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _407) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _407) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _407) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _407) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _407) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _407) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3056 = mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _407) + ceil32(return_data.size) + mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _407) + ceil32(return_data.size) + mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _407) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _407) + ceil32(return_data.size) + mem[(32 * _407) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3230 = mem[(32 * _407) + ceil32(return_data.size) + _3056 + 224]
                                mem[(32 * _407) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _407) + ceil32(return_data.size) + _3056 + 224])] = mem[(32 * _407) + ceil32(return_data.size) + _3056 + 256 len floor32(mem[(32 * _407) + ceil32(return_data.size) + _3056 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3230) + (32 * _407) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3230) + (32 * _407) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2025 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2154 = mem[_2025 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2025 + 192])] = mem[_2025 + 224 len floor32(mem[_2025 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _2154) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2154) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _2154) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _2154) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _2154) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _2154) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _2154) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2154) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2154) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3275 = mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2154) + ceil32(return_data.size) + mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2154) + ceil32(return_data.size) + mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2154) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2154) + ceil32(return_data.size) + mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3503 = mem[(32 * _2154) + ceil32(return_data.size) + _3275 + 224]
                                mem[(32 * _2154) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2154) + ceil32(return_data.size) + _3275 + 224])] = mem[(32 * _2154) + ceil32(return_data.size) + _3275 + 256 len floor32(mem[(32 * _2154) + ceil32(return_data.size) + _3275 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3503) + (32 * _2154) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3503) + (32 * _2154) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _2154) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _2154) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _2154) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2154) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2154) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2154) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4240 = mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2154) + ceil32(return_data.size) + mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2154) + ceil32(return_data.size) + mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2154) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2154) + ceil32(return_data.size) + mem[(32 * _2154) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _4265 = mem[(32 * _2154) + ceil32(return_data.size) + _4240 + 224]
                                mem[(32 * _2154) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2154) + ceil32(return_data.size) + _4240 + 224])] = mem[(32 * _2154) + ceil32(return_data.size) + _4240 + 256 len floor32(mem[(32 * _2154) + ceil32(return_data.size) + _4240 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4265) + (32 * _2154) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4265) + (32 * _2154) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
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
            mem[132] = msg.sender
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 arg1, address arg2) with:
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
            mem[96] = 34
            mem[128 len 34] = 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'ERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            mem[32] = 0
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
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[388] = block.timestamp + 120
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args 0, uint32(stor13), sub_96a8797eAddress, 0 / totalSupply, 0, 0, address(this.address), block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_f0fe082aAddress))
                staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp + 120
                    mem[260] = 160
                    mem[356] = sub_6ec44b8f.length
                    if not sub_6ec44b8f.length:
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _470 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _541 = mem[_470 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_470 + 192])] = mem[_470 + 224 len floor32(mem[_470 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _541) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _541) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = 18
                        mem[388] = address(sub_6ec44b8f.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_6ec44b8f[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _2053 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _2168 = mem[_2053 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_2053 + 192])] = mem[_2053 + 224 len floor32(mem[_2053 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2168) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2168) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                else:
                    mem[0] = this.address
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[196] = ext_call.return_data[0]
                    mem[228] = 0
                    mem[292] = this.address
                    mem[324] = block.timestamp + 120
                    mem[260] = 160
                    mem[356] = sub_0fb1340f.length
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _494 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _558 = mem[_494 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_494 + 192])] = mem[_494 + 224 len floor32(mem[_494 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _558) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _558) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2051 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2167 = mem[_2051 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2051 + 192])] = mem[_2051 + 224 len floor32(mem[_2051 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2167) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2167) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _492 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _557 = mem[_492 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_492 + 192])] = mem[_492 + 224 len floor32(mem[_492 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _557) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _557) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _557) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _557) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _557) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _557) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _557) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _557) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _557) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1551 = mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _557) + ceil32(return_data.size) + mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _557) + ceil32(return_data.size) + mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _557) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _557) + ceil32(return_data.size) + mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _1722 = mem[(32 * _557) + ceil32(return_data.size) + _1551 + 224]
                                mem[(32 * _557) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _557) + ceil32(return_data.size) + _1551 + 224])] = mem[(32 * _557) + ceil32(return_data.size) + _1551 + 256 len floor32(mem[(32 * _557) + ceil32(return_data.size) + _1551 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1722) + (32 * _557) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1722) + (32 * _557) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _557) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _557) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _557) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _557) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _557) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _557) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3072 = mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _557) + ceil32(return_data.size) + mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _557) + ceil32(return_data.size) + mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _557) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _557) + ceil32(return_data.size) + mem[(32 * _557) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3234 = mem[(32 * _557) + ceil32(return_data.size) + _3072 + 224]
                                mem[(32 * _557) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _557) + ceil32(return_data.size) + _3072 + 224])] = mem[(32 * _557) + ceil32(return_data.size) + _3072 + 256 len floor32(mem[(32 * _557) + ceil32(return_data.size) + _3072 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3234) + (32 * _557) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3234) + (32 * _557) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2049 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2166 = mem[_2049 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2049 + 192])] = mem[_2049 + 224 len floor32(mem[_2049 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _2166) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2166) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _2166) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _2166) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _2166) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _2166) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _2166) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2166) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2166) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3295 = mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2166) + ceil32(return_data.size) + mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2166) + ceil32(return_data.size) + mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2166) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2166) + ceil32(return_data.size) + mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3511 = mem[(32 * _2166) + ceil32(return_data.size) + _3295 + 224]
                                mem[(32 * _2166) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2166) + ceil32(return_data.size) + _3295 + 224])] = mem[(32 * _2166) + ceil32(return_data.size) + _3295 + 256 len floor32(mem[(32 * _2166) + ceil32(return_data.size) + _3295 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3511) + (32 * _2166) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3511) + (32 * _2166) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _2166) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _2166) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _2166) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2166) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2166) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2166) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4248 = mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2166) + ceil32(return_data.size) + mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2166) + ceil32(return_data.size) + mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2166) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2166) + ceil32(return_data.size) + mem[(32 * _2166) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _4269 = mem[(32 * _2166) + ceil32(return_data.size) + _4248 + 224]
                                mem[(32 * _2166) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2166) + ceil32(return_data.size) + _4248 + 224])] = mem[(32 * _2166) + ceil32(return_data.size) + _4248 + 256 len floor32(mem[(32 * _2166) + ceil32(return_data.size) + _4248 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4269) + (32 * _2166) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4269) + (32 * _2166) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
            else:
                if ext_call.return_data[0] > 0 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_5d44569dAddress))
                call address(sub_5d44569dAddress).withdraw(uint256 arg1) with:
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
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, uint32(stor13), sub_96a8797eAddress, 0 / totalSupply, 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(sub_f0fe082aAddress))
                    staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_6ec44b8f.length
                        if not sub_6ec44b8f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _787 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _853 = mem[_787 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_787 + 192])] = mem[_787 + 224 len floor32(mem[_787 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _853) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _853) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 18
                            mem[388] = address(sub_6ec44b8f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_6ec44b8f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2059 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2171 = mem[_2059 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2059 + 192])] = mem[_2059 + 224 len floor32(mem[_2059 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2171) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2171) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = this.address
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_0fb1340f.length
                        if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _823 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _865 = mem[_823 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_823 + 192])] = mem[_823 + 224 len floor32(mem[_823 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _865) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _865) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2057 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2170 = mem[_2057 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2057 + 192])] = mem[_2057 + 224 len floor32(mem[_2057 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2170) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2170) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _821 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _864 = mem[_821 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_821 + 192])] = mem[_821 + 224 len floor32(mem[_821 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _864) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _864) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _864) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _864) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _864) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _864) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _864) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _864) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1555 = mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _1723 = mem[(32 * _864) + ceil32(return_data.size) + _1555 + 224]
                                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1555 + 224])] = mem[(32 * _864) + ceil32(return_data.size) + _1555 + 256 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _1555 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1723) + (32 * _864) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1723) + (32 * _864) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _864) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _864) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _864) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _864) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _864) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _864) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3076 = mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _864) + ceil32(return_data.size) + mem[(32 * _864) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3235 = mem[(32 * _864) + ceil32(return_data.size) + _3076 + 224]
                                    mem[(32 * _864) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _3076 + 224])] = mem[(32 * _864) + ceil32(return_data.size) + _3076 + 256 len floor32(mem[(32 * _864) + ceil32(return_data.size) + _3076 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3235) + (32 * _864) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3235) + (32 * _864) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2055 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2169 = mem[_2055 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2055 + 192])] = mem[_2055 + 224 len floor32(mem[_2055 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _2169) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2169) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _2169) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _2169) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _2169) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _2169) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _2169) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2169) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2169) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3300 = mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2169) + ceil32(return_data.size) + mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2169) + ceil32(return_data.size) + mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2169) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2169) + ceil32(return_data.size) + mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3513 = mem[(32 * _2169) + ceil32(return_data.size) + _3300 + 224]
                                    mem[(32 * _2169) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2169) + ceil32(return_data.size) + _3300 + 224])] = mem[(32 * _2169) + ceil32(return_data.size) + _3300 + 256 len floor32(mem[(32 * _2169) + ceil32(return_data.size) + _3300 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3513) + (32 * _2169) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3513) + (32 * _2169) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _2169) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _2169) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _2169) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2169) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2169) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2169) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4250 = mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2169) + ceil32(return_data.size) + mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2169) + ceil32(return_data.size) + mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2169) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2169) + ceil32(return_data.size) + mem[(32 * _2169) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _4270 = mem[(32 * _2169) + ceil32(return_data.size) + _4250 + 224]
                                    mem[(32 * _2169) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2169) + ceil32(return_data.size) + _4250 + 224])] = mem[(32 * _2169) + ceil32(return_data.size) + _4250 + 256 len floor32(mem[(32 * _2169) + ceil32(return_data.size) + _4250 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4270) + (32 * _2169) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4270) + (32 * _2169) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, uint32(stor13), sub_96a8797eAddress, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(sub_f0fe082aAddress))
                    staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_6ec44b8f.length
                        if not sub_6ec44b8f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _868 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _925 = mem[_868 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_868 + 192])] = mem[_868 + 224 len floor32(mem[_868 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _925) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _925) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 18
                            mem[388] = address(sub_6ec44b8f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_6ec44b8f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2065 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2174 = mem[_2065 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2065 + 192])] = mem[_2065 + 224 len floor32(mem[_2065 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2174) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2174) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = this.address
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_0fb1340f.length
                        if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _891 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _942 = mem[_891 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_891 + 192])] = mem[_891 + 224 len floor32(mem[_891 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _942) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _942) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2063 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2173 = mem[_2063 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2063 + 192])] = mem[_2063 + 224 len floor32(mem[_2063 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2173) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2173) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _889 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _941 = mem[_889 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_889 + 192])] = mem[_889 + 224 len floor32(mem[_889 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _941) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _941) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _941) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _941) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _941) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _941) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _941) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _941) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _941) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1559 = mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _941) + ceil32(return_data.size) + mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _941) + ceil32(return_data.size) + mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _941) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _941) + ceil32(return_data.size) + mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _1724 = mem[(32 * _941) + ceil32(return_data.size) + _1559 + 224]
                                    mem[(32 * _941) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _941) + ceil32(return_data.size) + _1559 + 224])] = mem[(32 * _941) + ceil32(return_data.size) + _1559 + 256 len floor32(mem[(32 * _941) + ceil32(return_data.size) + _1559 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1724) + (32 * _941) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1724) + (32 * _941) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _941) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _941) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _941) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _941) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _941) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _941) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3080 = mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _941) + ceil32(return_data.size) + mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _941) + ceil32(return_data.size) + mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _941) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _941) + ceil32(return_data.size) + mem[(32 * _941) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3236 = mem[(32 * _941) + ceil32(return_data.size) + _3080 + 224]
                                    mem[(32 * _941) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _941) + ceil32(return_data.size) + _3080 + 224])] = mem[(32 * _941) + ceil32(return_data.size) + _3080 + 256 len floor32(mem[(32 * _941) + ceil32(return_data.size) + _3080 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3236) + (32 * _941) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3236) + (32 * _941) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2061 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2172 = mem[_2061 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2061 + 192])] = mem[_2061 + 224 len floor32(mem[_2061 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _2172) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2172) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _2172) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _2172) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _2172) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _2172) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _2172) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2172) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2172) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3305 = mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2172) + ceil32(return_data.size) + mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2172) + ceil32(return_data.size) + mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2172) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2172) + ceil32(return_data.size) + mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3515 = mem[(32 * _2172) + ceil32(return_data.size) + _3305 + 224]
                                    mem[(32 * _2172) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2172) + ceil32(return_data.size) + _3305 + 224])] = mem[(32 * _2172) + ceil32(return_data.size) + _3305 + 256 len floor32(mem[(32 * _2172) + ceil32(return_data.size) + _3305 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3515) + (32 * _2172) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3515) + (32 * _2172) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _2172) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _2172) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _2172) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2172) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2172) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2172) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4252 = mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2172) + ceil32(return_data.size) + mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2172) + ceil32(return_data.size) + mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2172) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2172) + ceil32(return_data.size) + mem[(32 * _2172) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _4271 = mem[(32 * _2172) + ceil32(return_data.size) + _4252 + 224]
                                    mem[(32 * _2172) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2172) + ceil32(return_data.size) + _4252 + 224])] = mem[(32 * _2172) + ceil32(return_data.size) + _4252 + 256 len floor32(mem[(32 * _2172) + ceil32(return_data.size) + _4252 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4271) + (32 * _2172) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4271) + (32 * _2172) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
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
            mem[132] = msg.sender
            require ext_code.size(sub_91dcd7a7Address)
            call sub_91dcd7a7Address.withdrawToVault(uint256 arg1, address arg2) with:
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
            mem[96] = 34
            mem[128 len 34] = 0x45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(this.address)]:
                revert with 0, 'ERC20: burn amount exceeds balancsg.sende', mem[164 len 28], mem[222 len 2]
            mem[32] = 0
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
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[388] = block.timestamp + 120
                require ext_code.size(routerAddress)
                call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                     gas gas_remaining wei
                    args 0, uint32(stor13), sub_96a8797eAddress, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 0, address(this.address), block.timestamp + 120
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(address(sub_f0fe082aAddress))
                staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                if block.timestamp + 120 < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[196] = ext_call.return_data[0]
                mem[228] = 0
                mem[292] = this.address
                mem[324] = block.timestamp + 120
                mem[260] = 160
                if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                    mem[356] = sub_6ec44b8f.length
                    if not sub_6ec44b8f.length:
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _489 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _555 = mem[_489 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_489 + 192])] = mem[_489 + 224 len floor32(mem[_489 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _555) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _555) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = 18
                        mem[388] = address(sub_6ec44b8f.field_0)
                        idx = 388
                        s = 0
                        while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                            mem[idx + 32] = sub_6ec44b8f[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        _2035 = mem[192 len 4], ext_call.return_data[0 len 28]
                        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                        _2159 = mem[_2035 + 192]
                        mem[ceil32(return_data.size) + 224 len floor32(mem[_2035 + 192])] = mem[_2035 + 224 len floor32(mem[_2035 + 192])]
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                        call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2159) + ceil32(return_data.size) + 329 len 27]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            37,
                                            0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                            mem[(32 * _2159) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                else:
                    mem[356] = sub_0fb1340f.length
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _512 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _568 = mem[_512 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_512 + 192])] = mem[_512 + 224 len floor32(mem[_512 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _568) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _568) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2033 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2158 = mem[_2033 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2033 + 192])] = mem[_2033 + 224 len floor32(mem[_2033 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2158) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2158) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        if not sub_0fb1340f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _510 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _567 = mem[_510 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_510 + 192])] = mem[_510 + 224 len floor32(mem[_510 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _567) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _567) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _567) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _567) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _567) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _567) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _567) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _567) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _567) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _1539 = mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _567) + ceil32(return_data.size) + mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _567) + ceil32(return_data.size) + mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _567) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _567) + ceil32(return_data.size) + mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _1719 = mem[(32 * _567) + ceil32(return_data.size) + _1539 + 224]
                                mem[(32 * _567) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _567) + ceil32(return_data.size) + _1539 + 224])] = mem[(32 * _567) + ceil32(return_data.size) + _1539 + 256 len floor32(mem[(32 * _567) + ceil32(return_data.size) + _1539 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1719) + (32 * _567) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _1719) + (32 * _567) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _567) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _567) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _567) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _567) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _567) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _567) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3060 = mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _567) + ceil32(return_data.size) + mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _567) + ceil32(return_data.size) + mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _567) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _567) + ceil32(return_data.size) + mem[(32 * _567) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3231 = mem[(32 * _567) + ceil32(return_data.size) + _3060 + 224]
                                mem[(32 * _567) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _567) + ceil32(return_data.size) + _3060 + 224])] = mem[(32 * _567) + ceil32(return_data.size) + _3060 + 256 len floor32(mem[(32 * _567) + ceil32(return_data.size) + _3060 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3231) + (32 * _567) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3231) + (32 * _567) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                        else:
                            mem[0] = 17
                            mem[388] = address(sub_0fb1340f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_0fb1340f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2031 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2157 = mem[_2031 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2031 + 192])] = mem[_2031 + 224 len floor32(mem[_2031 + 192])]
                            if block.timestamp + 120 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[(32 * _2157) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(32 * _2157) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                            mem[(32 * _2157) + ceil32(return_data.size) + 260] = 0
                            mem[(32 * _2157) + ceil32(return_data.size) + 324] = this.address
                            mem[(32 * _2157) + ceil32(return_data.size) + 356] = block.timestamp + 120
                            mem[(32 * _2157) + ceil32(return_data.size) + 292] = 160
                            mem[(32 * _2157) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                            if not sub_6ec44b8f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2157) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2157) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _3280 = mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2157) + ceil32(return_data.size) + mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2157) + ceil32(return_data.size) + mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2157) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2157) + ceil32(return_data.size) + mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _3505 = mem[(32 * _2157) + ceil32(return_data.size) + _3280 + 224]
                                mem[(32 * _2157) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2157) + ceil32(return_data.size) + _3280 + 224])] = mem[(32 * _2157) + ceil32(return_data.size) + _3280 + 256 len floor32(mem[(32 * _2157) + ceil32(return_data.size) + _3280 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3505) + (32 * _2157) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _3505) + (32 * _2157) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 18
                                mem[(32 * _2157) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                idx = (32 * _2157) + ceil32(return_data.size) + 420
                                s = 0
                                while (32 * _2157) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                    mem[idx + 32] = sub_6ec44b8f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2157) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(32 * _2157) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (32 * _2157) + (2 * ceil32(return_data.size)) + 224
                                require return_data.size >= 32
                                _4242 = mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                require mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[(32 * _2157) + ceil32(return_data.size) + mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2157) + ceil32(return_data.size) + mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                mem[(32 * _2157) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2157) + ceil32(return_data.size) + mem[(32 * _2157) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                _4266 = mem[(32 * _2157) + ceil32(return_data.size) + _4242 + 224]
                                mem[(32 * _2157) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2157) + ceil32(return_data.size) + _4242 + 224])] = mem[(32 * _2157) + ceil32(return_data.size) + _4242 + 256 len floor32(mem[(32 * _2157) + ceil32(return_data.size) + _4242 + 224])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4266) + (32 * _2157) + (2 * ceil32(return_data.size)) + 361 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _4266) + (32 * _2157) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
            else:
                if ext_call.return_data[0] > (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(address(sub_5d44569dAddress))
                call address(sub_5d44569dAddress).withdraw(uint256 arg1) with:
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
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, uint32(stor13), sub_96a8797eAddress, (ext_call.return_data[0] * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(sub_f0fe082aAddress))
                    staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_6ec44b8f.length
                        if not sub_6ec44b8f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _813 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _858 = mem[_813 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_813 + 192])] = mem[_813 + 224 len floor32(mem[_813 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _858) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _858) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 18
                            mem[388] = address(sub_6ec44b8f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_6ec44b8f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2041 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2162 = mem[_2041 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2041 + 192])] = mem[_2041 + 224 len floor32(mem[_2041 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2162) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2162) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = this.address
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_0fb1340f.length
                        if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _833 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _883 = mem[_833 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_833 + 192])] = mem[_833 + 224 len floor32(mem[_833 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _883) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _883) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2039 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2161 = mem[_2039 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2039 + 192])] = mem[_2039 + 224 len floor32(mem[_2039 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2161) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2161) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _831 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _882 = mem[_831 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_831 + 192])] = mem[_831 + 224 len floor32(mem[_831 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _882) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _882) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _882) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _882) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _882) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _882) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _882) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _882) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _882) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1543 = mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _882) + ceil32(return_data.size) + mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _882) + ceil32(return_data.size) + mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _882) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _882) + ceil32(return_data.size) + mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _1720 = mem[(32 * _882) + ceil32(return_data.size) + _1543 + 224]
                                    mem[(32 * _882) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _882) + ceil32(return_data.size) + _1543 + 224])] = mem[(32 * _882) + ceil32(return_data.size) + _1543 + 256 len floor32(mem[(32 * _882) + ceil32(return_data.size) + _1543 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1720) + (32 * _882) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1720) + (32 * _882) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _882) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _882) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _882) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _882) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _882) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _882) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3064 = mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _882) + ceil32(return_data.size) + mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _882) + ceil32(return_data.size) + mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _882) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _882) + ceil32(return_data.size) + mem[(32 * _882) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3232 = mem[(32 * _882) + ceil32(return_data.size) + _3064 + 224]
                                    mem[(32 * _882) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _882) + ceil32(return_data.size) + _3064 + 224])] = mem[(32 * _882) + ceil32(return_data.size) + _3064 + 256 len floor32(mem[(32 * _882) + ceil32(return_data.size) + _3064 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3232) + (32 * _882) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3232) + (32 * _882) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2037 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2160 = mem[_2037 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2037 + 192])] = mem[_2037 + 224 len floor32(mem[_2037 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _2160) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2160) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _2160) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _2160) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _2160) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _2160) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _2160) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2160) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2160) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3285 = mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2160) + ceil32(return_data.size) + mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2160) + ceil32(return_data.size) + mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2160) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2160) + ceil32(return_data.size) + mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3507 = mem[(32 * _2160) + ceil32(return_data.size) + _3285 + 224]
                                    mem[(32 * _2160) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2160) + ceil32(return_data.size) + _3285 + 224])] = mem[(32 * _2160) + ceil32(return_data.size) + _3285 + 256 len floor32(mem[(32 * _2160) + ceil32(return_data.size) + _3285 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3507) + (32 * _2160) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3507) + (32 * _2160) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _2160) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _2160) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _2160) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2160) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2160) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2160) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4244 = mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2160) + ceil32(return_data.size) + mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2160) + ceil32(return_data.size) + mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2160) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2160) + ceil32(return_data.size) + mem[(32 * _2160) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _4267 = mem[(32 * _2160) + ceil32(return_data.size) + _4244 + 224]
                                    mem[(32 * _2160) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2160) + ceil32(return_data.size) + _4244 + 224])] = mem[(32 * _2160) + ceil32(return_data.size) + _4244 + 256 len floor32(mem[(32 * _2160) + ceil32(return_data.size) + _4244 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4267) + (32 * _2160) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4267) + (32 * _2160) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                else:
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.timestamp + 120 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[388] = block.timestamp + 120
                    require ext_code.size(routerAddress)
                    call routerAddress.removeLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, uint256 arg7) with:
                         gas gas_remaining wei
                        args 0, uint32(stor13), sub_96a8797eAddress, ext_call.return_data[0], 0, 0, address(this.address), block.timestamp + 120
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_code.size(address(sub_f0fe082aAddress))
                    staticcall address(sub_f0fe082aAddress).0x70a08231 with:
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
                    if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == address(sub_f0fe082aAddress):
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_6ec44b8f.length
                        if not sub_6ec44b8f.length:
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _886 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _937 = mem[_886 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_886 + 192])] = mem[_886 + 224 len floor32(mem[_886 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _937) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _937) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            mem[0] = 18
                            mem[388] = address(sub_6ec44b8f.field_0)
                            idx = 388
                            s = 0
                            while (32 * sub_6ec44b8f.length) + 388 > idx + 32:
                                mem[idx + 32] = sub_6ec44b8f[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[388 len 32 * sub_6ec44b8f.length]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(return_data.size) + 192
                            require return_data.size >= 32
                            _2047 = mem[192 len 4], ext_call.return_data[0 len 28]
                            require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                            require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                            require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                            _2165 = mem[_2047 + 192]
                            mem[ceil32(return_data.size) + 224 len floor32(mem[_2047 + 192])] = mem[_2047 + 224 len floor32(mem[_2047 + 192])]
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                            call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2165) + ceil32(return_data.size) + 329 len 27]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                37,
                                                0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                mem[(32 * _2165) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                    else:
                        mem[0] = this.address
                        if block.timestamp + 120 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[196] = ext_call.return_data[0]
                        mem[228] = 0
                        mem[292] = this.address
                        mem[324] = block.timestamp + 120
                        mem[260] = 160
                        mem[356] = sub_0fb1340f.length
                        if 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66 == sub_96a8797eAddress:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _896 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _947 = mem[_896 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_896 + 192])] = mem[_896 + 224 len floor32(mem[_896 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _947) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _947) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2045 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2164 = mem[_2045 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2045 + 192])] = mem[_2045 + 224 len floor32(mem[_2045 + 192])]
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call msg.sender with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2164) + ceil32(return_data.size) + 329 len 27]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                    mem[(32 * _2164) + ceil32(return_data.size) + ceil32(return_data.size) + 330 len 27]
                        else:
                            if not sub_0fb1340f.length:
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _894 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _946 = mem[_894 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_894 + 192])] = mem[_894 + 224 len floor32(mem[_894 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _946) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _946) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _946) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _946) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _946) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _946) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _946) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _946) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _946) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _1547 = mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _946) + ceil32(return_data.size) + mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _946) + ceil32(return_data.size) + mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _946) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _946) + ceil32(return_data.size) + mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _1721 = mem[(32 * _946) + ceil32(return_data.size) + _1547 + 224]
                                    mem[(32 * _946) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _946) + ceil32(return_data.size) + _1547 + 224])] = mem[(32 * _946) + ceil32(return_data.size) + _1547 + 256 len floor32(mem[(32 * _946) + ceil32(return_data.size) + _1547 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1721) + (32 * _946) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _1721) + (32 * _946) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _946) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _946) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _946) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _946) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _946) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _946) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3068 = mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _946) + ceil32(return_data.size) + mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _946) + ceil32(return_data.size) + mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _946) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _946) + ceil32(return_data.size) + mem[(32 * _946) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3233 = mem[(32 * _946) + ceil32(return_data.size) + _3068 + 224]
                                    mem[(32 * _946) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _946) + ceil32(return_data.size) + _3068 + 224])] = mem[(32 * _946) + ceil32(return_data.size) + _3068 + 256 len floor32(mem[(32 * _946) + ceil32(return_data.size) + _3068 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3233) + (32 * _946) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3233) + (32 * _946) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                            else:
                                mem[0] = 17
                                mem[388] = address(sub_0fb1340f.field_0)
                                idx = 388
                                s = 0
                                while (32 * sub_0fb1340f.length) + 388 > idx + 32:
                                    mem[idx + 32] = sub_0fb1340f[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_0fb1340f.length, mem[388 len 32 * sub_0fb1340f.length]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = ceil32(return_data.size) + 192
                                require return_data.size >= 32
                                _2043 = mem[192 len 4], ext_call.return_data[0 len 28]
                                require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
                                mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
                                _2163 = mem[_2043 + 192]
                                mem[ceil32(return_data.size) + 224 len floor32(mem[_2043 + 192])] = mem[_2043 + 224 len floor32(mem[_2043 + 192])]
                                if block.timestamp + 120 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[(32 * _2163) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(32 * _2163) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
                                mem[(32 * _2163) + ceil32(return_data.size) + 260] = 0
                                mem[(32 * _2163) + ceil32(return_data.size) + 324] = this.address
                                mem[(32 * _2163) + ceil32(return_data.size) + 356] = block.timestamp + 120
                                mem[(32 * _2163) + ceil32(return_data.size) + 292] = 160
                                mem[(32 * _2163) + ceil32(return_data.size) + 388] = sub_6ec44b8f.length
                                if not sub_6ec44b8f.length:
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2163) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2163) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _3290 = mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2163) + ceil32(return_data.size) + mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2163) + ceil32(return_data.size) + mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2163) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2163) + ceil32(return_data.size) + mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _3509 = mem[(32 * _2163) + ceil32(return_data.size) + _3290 + 224]
                                    mem[(32 * _2163) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2163) + ceil32(return_data.size) + _3290 + 224])] = mem[(32 * _2163) + ceil32(return_data.size) + _3290 + 256 len floor32(mem[(32 * _2163) + ceil32(return_data.size) + _3290 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3509) + (32 * _2163) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _3509) + (32 * _2163) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
                                else:
                                    mem[0] = 18
                                    mem[(32 * _2163) + ceil32(return_data.size) + 420] = address(sub_6ec44b8f.field_0)
                                    idx = (32 * _2163) + ceil32(return_data.size) + 420
                                    s = 0
                                    while (32 * _2163) + ceil32(return_data.size) + (32 * sub_6ec44b8f.length) + 420 > idx + 32:
                                        mem[idx + 32] = sub_6ec44b8f[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, sub_6ec44b8f.length, mem[(32 * _2163) + ceil32(return_data.size) + 420 len 32 * sub_6ec44b8f.length]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(32 * _2163) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (32 * _2163) + (2 * ceil32(return_data.size)) + 224
                                    require return_data.size >= 32
                                    _4246 = mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28]
                                    require mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                                    require mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                                    require mem[(32 * _2163) + ceil32(return_data.size) + mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224] <= 4294967296 and mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[(32 * _2163) + ceil32(return_data.size) + mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]) + 32 <= return_data.size
                                    mem[(32 * _2163) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * _2163) + ceil32(return_data.size) + mem[(32 * _2163) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 224]
                                    _4268 = mem[(32 * _2163) + ceil32(return_data.size) + _4246 + 224]
                                    mem[(32 * _2163) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _2163) + ceil32(return_data.size) + _4246 + 224])] = mem[(32 * _2163) + ceil32(return_data.size) + _4246 + 256 len floor32(mem[(32 * _2163) + ceil32(return_data.size) + _4246 + 224])]
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    staticcall 0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(0xef000000000000000000000000b31f66aa3c1e785363f0875a1b74e27b85fd66)
                                    call ????????????????????????????????????????.withdraw(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call msg.sender with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4268) + (32 * _2163) + (2 * ceil32(return_data.size)) + 361 len 27]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x744379636c655661756c7456333a20556e61626c6520746f207472616e7366657220415641,
                                                        mem[(32 * _4268) + (32 * _2163) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 362 len 27]
    ('bool', 'ext_call.success')
    emit 0xf39ba7f5: ext_call.return_data[0]
    stor6 = 1
}



}
