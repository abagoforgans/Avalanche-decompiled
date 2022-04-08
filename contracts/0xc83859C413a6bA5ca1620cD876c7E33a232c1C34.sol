contract main {




// =====================  Runtime code  =====================


const empireTeam = 0x5abbd94bb0561938130d83fda22e672110e12528

const sub_777ed97d(?) = 0xa581289f88a2cc9d40ad990f5773c9e6973bc756

const REWARD_TREASURY = 0x3f9b7da1d832199b2dd23670f2623193636f2e88

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint32 stor5;
address owner; offset 8
uint256 stor5;
address factoryAddress;
uint256 totalRaised;
mapping of uint256 contributions;
uint32 stor9;
address sub_e9227cf1Address;
uint256 stor9;
uint256 stor9;
uint256 end;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function contributions(address arg1) {
    require calldata.size - 4 >= 32
    return contributions[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function factory() {
    return factoryAddress
}

function totalRaised() {
    return totalRaised
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e9227cf1(?) {
    return address(sub_e9227cf1Address)
}

function end() {
    return end
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function changePair(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Cannot add burn address'
    address(sub_e9227cf1Address) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x214f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sweep(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(address(sub_e9227cf1Address))
    call address(sub_e9227cf1Address).0xd2ae9a0d with:
         gas gas_remaining wei
        args arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit() payable {
    if not end:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x73456d706972653a3a73616c654163746976653a2053616c65206861736e2774207374617274656420796574,
                    mem[208 len 20]
    if block.timestamp > end:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6c456d706972653a3a73616c654163746976653a2053616c652068617320656e646564,
                    mem[199 len 29]
    contributions[msg.sender] += msg.value
    emit Contribution(msg.value, msg.sender);
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

function unsweep(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(sub_e9227cf1Address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sub_e9227cf1Address))
    call address(sub_e9227cf1Address).0xae84637f with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function beginLGE(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    factoryAddress = arg1
    end = block.timestamp + (336 * 24 * 3600)
    require ext_code.size(arg1)
    if this.address < 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        call arg1.createPair(address rg1, address rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, 2247976647, this.address, 3, 0
    else:
        call arg1.createPair(address rg1, address rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args 0, 2247976647, this.address, 2, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
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

function extractFutureRewards(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[0x3f9b7da1d832199b2dd23670f2623193636f2e88]:
        revert with 0, 
                    32,
                    38,
                    0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[0x3f9b7da1d832199b2dd23670f2623193636f2e88] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, 0x3f9b7da1d832199b2dd23670f2623193636f2e88, arg1);
}

function empireSweepCall(uint256 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if address(sub_e9227cf1Address) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73456d706972653a3a6f6e6c79506169723a20496e73756666696369656e742050726976696c656765,
                    mem[205 len 23]
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
       funct uint32(stor5.field_0)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor5.field_0):
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
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender == address(sub_e9227cf1Address):
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if address(sub_e9227cf1Address) == arg1:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                            0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if 10^15 * arg2 / 10^15 != arg2:
                revert with 0, 'ds-math-mul-overflow'
            if (10^15 * arg2) + 5 * 10^17 < 10^15 * arg2:
                revert with 0, 'ds-math-add-overflow'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if (10^15 * arg2) + 5 * 10^17 / 10^18 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= (10^15 * arg2) + 5 * 10^17 / 10^18
            if (10^15 * arg2) + 5 * 10^17 / 10^18 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= (10^15 * arg2) + 5 * 10^17 / 10^18
            emit Transfer(((10^15 * arg2) + 5 * 10^17 / 10^18), msg.sender, 0);
            if not msg.sender:
                revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
            if arg2 - ((10^15 * arg2) + 5 * 10^17 / 10^18) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[262 len 26],
                            mem[314 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + ((10^15 * arg2) + 5 * 10^17 / 10^18)
            if arg2 - ((10^15 * arg2) + 5 * 10^17 / 10^18) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - ((10^15 * arg2) + 5 * 10^17 / 10^18) + balanceOf[arg1]
            emit Transfer((arg2 - ((10^15 * arg2) + 5 * 10^17 / 10^18)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if address(sub_e9227cf1Address) == arg1:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                        0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC20: transfer amount exceeds'
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
    else:
        if address(sub_e9227cf1Address) == arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            37,
                            0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
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
                            0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'ERC20: transfer amount exceeds'
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
        else:
            if 10^15 * arg3 / 10^15 != arg3:
                revert with 0, 'ds-math-mul-overflow'
            if (10^15 * arg3) + 5 * 10^17 < 10^15 * arg3:
                revert with 0, 'ds-math-add-overflow'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if (10^15 * arg3) + 5 * 10^17 / 10^18 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(arg1)] -= (10^15 * arg3) + 5 * 10^17 / 10^18
            if (10^15 * arg3) + 5 * 10^17 / 10^18 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= (10^15 * arg3) + 5 * 10^17 / 10^18
            emit Transfer(((10^15 * arg3) + 5 * 10^17 / 10^18), arg1, 0);
            if not arg1:
                revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[297 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[295 len 29]
            if arg3 - ((10^15 * arg3) + 5 * 10^17 / 10^18) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[262 len 26],
                            mem[314 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + ((10^15 * arg3) + 5 * 10^17 / 10^18)
            if arg3 - ((10^15 * arg3) + 5 * 10^17 / 10^18) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - ((10^15 * arg3) + 5 * 10^17 / 10^18) + balanceOf[arg2]
            emit Transfer((arg3 - ((10^15 * arg3) + 5 * 10^17 / 10^18)), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'ERC20: transfer amount exceeds'
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[456 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[454 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function claim() {
    if not contributions[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x65456d706972653a3a636c61696d3a204e6f20636f6e747269627574696f6e206465746563746564,
                    mem[204 len 24]
    if contributions[msg.sender] > totalRaised:
        revert with 0, 'SafeMath: subtraction overflow'
    totalRaised -= contributions[msg.sender]
    contributions[msg.sender] = 0
    require ext_code.size(address(sub_e9227cf1Address))
    staticcall address(sub_e9227cf1Address).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalRaised <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalRaised
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(address(sub_e9227cf1Address)):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalRaised) >> 32
        mem[352 len 4] = 0
        mem[324 len 0] = 0
        call address(sub_e9227cf1Address) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / totalRaised) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, 0 / totalRaised
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not balanceOf[address(this.address)]:
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[365 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[363 len 29]
                if 0 / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[330 len 22],
                                0,
                                Mask(48, -256, 0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[330 len 22], 0) << 256
                balanceOf[address(this.address)] -= 0 / totalRaised
                if (0 / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (0 / totalRaised) + balanceOf[msg.sender]
                emit Transfer((0 / totalRaised), this.address, msg.sender);
            else:
                if contributions[msg.sender] * balanceOf[address(this.address)] / balanceOf[address(this.address)] != contributions[msg.sender]:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[365 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[363 len 29]
                if contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[330 len 22],
                                0,
                                Mask(48, -256, 0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[330 len 22], 0) << 256
                balanceOf[address(this.address)] -= contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised
                if (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender]
                emit Transfer((contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised), this.address, msg.sender);
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
            if not balanceOf[address(this.address)]:
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 
                                32,
                                37,
                                0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 366 len 27]
                if not msg.sender:
                    revert with 0, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 364 len 29]
                if 0 / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(return_data.size) + 331 len 26],
                                mem[ceil32(return_data.size) + 383 len 6]
                balanceOf[address(this.address)] -= 0 / totalRaised
                if (0 / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (0 / totalRaised) + balanceOf[msg.sender]
                emit Transfer((0 / totalRaised), this.address, msg.sender);
            else:
                if contributions[msg.sender] * balanceOf[address(this.address)] / balanceOf[address(this.address)] != contributions[msg.sender]:
                    revert with 0, 
                                32,
                                33,
                                0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 
                                32,
                                37,
                                0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 366 len 27]
                if not msg.sender:
                    revert with 0, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 364 len 29]
                if contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(return_data.size) + 331 len 26],
                                mem[ceil32(return_data.size) + 383 len 6]
                balanceOf[address(this.address)] -= contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised
                if (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender]
                emit Transfer((contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised), this.address, msg.sender);
    else:
        if contributions[msg.sender] * ext_call.return_data[0] / ext_call.return_data[0] != contributions[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalRaised <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalRaised
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(address(sub_e9227cf1Address)):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, contributions[msg.sender] * ext_call.return_data[0] / totalRaised) >> 32
        mem[352 len 4] = 0
        mem[324 len 0] = 0
        call address(sub_e9227cf1Address) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, contributions[msg.sender] * ext_call.return_data[0] / totalRaised) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, contributions[msg.sender] * ext_call.return_data[0] / totalRaised
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            if not balanceOf[address(this.address)]:
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[365 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[363 len 29]
                if 0 / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[330 len 22],
                                0,
                                Mask(48, -256, 0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[330 len 22], 0) << 256
                balanceOf[address(this.address)] -= 0 / totalRaised
                if (0 / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (0 / totalRaised) + balanceOf[msg.sender]
                emit Transfer((0 / totalRaised), this.address, msg.sender);
            else:
                if contributions[msg.sender] * balanceOf[address(this.address)] / balanceOf[address(this.address)] != contributions[msg.sender]:
                    revert with 0, 32, 33, 0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[361 len 31]
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 32, 37, 0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[365 len 27]
                if not msg.sender:
                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[363 len 29]
                if contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[330 len 22],
                                0,
                                Mask(48, -256, 0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[330 len 22], 0) << 256
                balanceOf[address(this.address)] -= contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised
                if (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender]
                emit Transfer((contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised), this.address, msg.sender);
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
            if not balanceOf[address(this.address)]:
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 
                                32,
                                37,
                                0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 366 len 27]
                if not msg.sender:
                    revert with 0, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 364 len 29]
                if 0 / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(return_data.size) + 331 len 26],
                                mem[ceil32(return_data.size) + 383 len 6]
                balanceOf[address(this.address)] -= 0 / totalRaised
                if (0 / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (0 / totalRaised) + balanceOf[msg.sender]
                emit Transfer((0 / totalRaised), this.address, msg.sender);
            else:
                if contributions[msg.sender] * balanceOf[address(this.address)] / balanceOf[address(this.address)] != contributions[msg.sender]:
                    revert with 0, 
                                32,
                                33,
                                0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 362 len 31]
                if totalRaised <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalRaised
                if not this.address:
                    revert with 0, 
                                32,
                                37,
                                0x2145524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 366 len 27]
                if not msg.sender:
                    revert with 0, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[ceil32(return_data.size) + 364 len 29]
                if contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised > balanceOf[address(this.address)]:
                    revert with 0, 
                                32,
                                38,
                                0x2145524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[ceil32(return_data.size) + 331 len 26],
                                mem[ceil32(return_data.size) + 383 len 6]
                balanceOf[address(this.address)] -= contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised
                if (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = (contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised) + balanceOf[msg.sender]
                emit Transfer((contributions[msg.sender] * balanceOf[address(this.address)] / totalRaised), this.address, msg.sender);
}

function complete() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if block.timestamp <= end:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73456d706972653a3a636f6d706c6574653a2053616c65206e6f7420636f6d706c65746520796574,
                    mem[204 len 24]
    if not end:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73456d706972653a3a636f6d706c6574653a2053616c65206e6f7420636f6d706c65746520796574,
                    mem[204 len 24]
    totalRaised = eth.balance(this.address)
    if 5 * 10^16 * eth.balance(this.address) / 5 * 10^16 != eth.balance(this.address):
        revert with 0, 'ds-math-mul-overflow'
    if (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 < 5 * 10^16 * eth.balance(this.address):
        revert with 0, 'ds-math-add-overflow'
    if 5 * 10^16 * eth.balance(this.address) / 5 * 10^16 != eth.balance(this.address):
        revert with 0, 'ds-math-mul-overflow'
    if (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 < 5 * 10^16 * eth.balance(this.address):
        revert with 0, 'ds-math-add-overflow'
    if eth.balance(this.address) < (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 / 10^18:
        revert with 0, 'Address: insufficient balance'
    call 0x5abbd94bb0561938130d83fda22e672110e12528 with:
       value (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 / 10^18 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
        if eth.balance(this.address) < (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 / 10^18:
            revert with 0, 'Address: insufficient balance'
        call 0xa581289f88a2cc9d40ad990f5773c9e6973bc756 with:
           value (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 / 10^18 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[222 len 6]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(sub_e9227cf1Address):
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + 5000 * 10^18 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 5000 * 10^18
            if balanceOf[address(stor9)] + 5000 * 10^18 < balanceOf[address(stor9)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(stor9)] += 5000 * 10^18
            emit Transfer(5000 * 10^18, 0, address(sub_e9227cf1Address));
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, eth.balance(this.address)) >> 32
            mem[324 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(224, 32, eth.balance(this.address)) << 224, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), eth.balance(this.address)
                if not unknown_0xa9059cbb(?????), Mask(224, 0, stor9):
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
        else:
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[ceil32(return_data.size) + 223 len 6]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(sub_e9227cf1Address):
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + 5000 * 10^18 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 5000 * 10^18
            if balanceOf[address(stor9)] + 5000 * 10^18 < balanceOf[address(stor9)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(stor9)] += 5000 * 10^18
            emit Transfer(5000 * 10^18, 0, address(sub_e9227cf1Address));
            mem[ceil32(return_data.size) + 97] = 68
            mem[ceil32(return_data.size) + 133 len 28] = Mask(224, 0, stor9)
            mem[ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 367 len 26]
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 261 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, eth.balance(this.address)) >> 32
            mem[ceil32(return_data.size) + 325 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(224, 32, eth.balance(this.address)) << 224, mem[ceil32(return_data.size) + 325 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            else:
                mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 293]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 372 len 22]
    else:
        mem[96] = return_data.size
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
        if eth.balance(this.address) < (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 / 10^18:
            revert with 0, 'Address: insufficient balance'
        call 0xa581289f88a2cc9d40ad990f5773c9e6973bc756 with:
           value (5 * 10^16 * eth.balance(this.address)) + 5 * 10^17 / 10^18 wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[ceil32(return_data.size) + 223 len 6]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(sub_e9227cf1Address):
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + 5000 * 10^18 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 5000 * 10^18
            if balanceOf[address(stor9)] + 5000 * 10^18 < balanceOf[address(stor9)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(stor9)] += 5000 * 10^18
            emit Transfer(5000 * 10^18, 0, address(sub_e9227cf1Address));
            mem[ceil32(return_data.size) + 97] = 68
            mem[ceil32(return_data.size) + 133 len 28] = Mask(224, 0, stor9)
            mem[ceil32(return_data.size) + 129 len 4] = unknown_0xa9059cbb(?????)
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 367 len 26]
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 261 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, eth.balance(this.address)) >> 32
            mem[ceil32(return_data.size) + 325 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(224, 32, eth.balance(this.address)) << 224, mem[ceil32(return_data.size) + 325 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            else:
                mem[ceil32(return_data.size) + 293 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 293]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 372 len 22]
        else:
            mem[ceil32(return_data.size) + 97] = return_data.size
            mem[ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[(2 * ceil32(return_data.size)) + 224 len 6]
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0xd0e30db0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not address(sub_e9227cf1Address):
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + 5000 * 10^18 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 5000 * 10^18
            if balanceOf[address(stor9)] + 5000 * 10^18 < balanceOf[address(stor9)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(stor9)] += 5000 * 10^18
            emit Transfer(5000 * 10^18, 0, address(sub_e9227cf1Address));
            mem[(2 * ceil32(return_data.size)) + 98] = 68
            mem[(2 * ceil32(return_data.size)) + 134 len 28] = Mask(224, 0, stor9)
            mem[(2 * ceil32(return_data.size)) + 130 len 4] = unknown_0xa9059cbb(?????)
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(2 * ceil32(return_data.size)) + 368 len 26]
            if not ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 262 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor9), uint32(stor9), Mask(224, 32, eth.balance(this.address)) >> 32
            mem[(2 * ceil32(return_data.size)) + 326 len 0] = 0
            call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7 with:
               funct uint32(stor9)
                 gas gas_remaining wei
                args Mask(224, 32, eth.balance(this.address)) << 224, mem[(2 * ceil32(return_data.size)) + 326 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 372 len 22]
            else:
                mem[(2 * ceil32(return_data.size)) + 294 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(2 * ceil32(return_data.size)) + 294]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 373 len 22]
    require ext_code.size(address(sub_e9227cf1Address))
    call address(sub_e9227cf1Address).mint(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not this.address:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + 250 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 250 * 10^18
    if balanceOf[address(this.address)] + 250 * 10^18 < balanceOf[address(this.address)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(this.address)] += 250 * 10^18
    emit Transfer(250 * 10^18, 0, this.address);
    if totalSupply + 2000 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 2000 * 10^18
    if balanceOf[0x5abbd94bb0561938130d83fda22e672110e12528] + 2000 * 10^18 < balanceOf[0x5abbd94bb0561938130d83fda22e672110e12528]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[0x5abbd94bb0561938130d83fda22e672110e12528] += 2000 * 10^18
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  2000 * 10^18,
    emit 0x0: 2000 * 10^18
    emit 0x5abbd94b: 2000 * 10^18
    if totalSupply + 2750 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 2750 * 10^18
    if balanceOf[0x3f9b7da1d832199b2dd23670f2623193636f2e88] + 2750 * 10^18 < balanceOf[0x3f9b7da1d832199b2dd23670f2623193636f2e88]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[0x3f9b7da1d832199b2dd23670f2623193636f2e88] += 2750 * 10^18
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  2750 * 10^18,
    emit 0x0: 2750 * 10^18
    emit 0x3f9b7da1: 2750 * 10^18
}



}
