contract main {




// =====================  Runtime code  =====================


const name = 'TrueUSD'

const rounding = 2

const decimals = 18

const symbol = 'TUSD'


address owner;
uint256 stor0;
uint8 stor1; offset 160
address pendingOwner;
uint256 totalSupply;
uint256 burnMin;
uint256 burnMax;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor22;
mapping of uint8 stor23;

function burnMin() payable {
    return burnMin
}

function totalSupply() payable {
    return totalSupply
}

function canBurn(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor23[arg1])
}

function burnMax() payable {
    return burnMax
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() payable {
    return address(owner)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function initialize() payable {
    require not stor1
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'only Owner'
    pendingOwner = arg1
}

function setCanBurn(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'only Owner'
    stor23[address(arg1)] = uint8(arg2)
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'only pending owner'
    emit OwnershipTransferred(address(owner), pendingOwner);
    address(owner) = pendingOwner
    pendingOwner = 0
}

function reclaimEther(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'only Owner'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setBurnBounds(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'only Owner'
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x644275726e61626c65546f6b656e57697468426f756e64733a206d696e203e206d61,
                    mem[198 len 30]
    burnMin = arg1
    burnMax = arg2
    emit SetBurnBounds(arg1, arg2);
}

function setBlacklisted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'only Owner'
    if arg1 < 1048576:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x735472756543757272656e63793a20626c61636b6c697374696e67206f6620726564656d7074696f6e2061646472657373206973206e6f7420616c6c6f7765,
                    mem[227 len 1]
    stor22[address(arg1)] = uint8(arg2)
    emit Blacklisted(arg2, arg1);
}

function reclaimToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'only Owner'
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
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if stor22[address(msg.sender)]:
        revert with 0, 32, 41, 0x655472756543757272656e63793a20746f6b656e73206f776e657220697320626c61636b6c69737465, mem[301 len 23]
    if stor22[address(arg1)]:
        if allowance[address(msg.sender)][address(arg1)] - arg2:
            revert with 0, 32, 43, 0x735472756543757272656e63793a20746f6b656e73207370656e64657220697320626c61636b6c69737465, mem[303 len 21]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'only Owner'
    if stor22[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x735472756543757272656e63793a206163636f756e7420697320626c61636b6c69737465,
                    mem[200 len 28]
    if arg1 < 1048576:
        if arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        45,
                        0x655472756543757272656e63793a206163636f756e74206973206120726564656d7074696f6e20616464726573,
                        mem[209 len 19]
        revert with 0, 'ERC20: mint to the zero address'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    emit Mint(arg2, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor22[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655472756543757272656e63793a20746f6b656e73206f776e657220697320626c61636b6c69737465,
                    mem[205 len 23]
    if stor22[address(arg1)]:
        if arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x735472756543757272656e63793a20746f6b656e73207370656e64657220697320626c61636b6c69737465,
                        mem[207 len 21]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor23[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x645472756543757272656e63793a2063616e6e6f74206275726e2066726f6d207468697320616464726573,
                    mem[207 len 21]
    if arg1 < burnMin:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x644275726e61626c65546f6b656e57697468426f756e64733a2062656c6f77206d696e206275726e20626f756e,
                    mem[209 len 19]
    if arg1 > burnMax:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x6f4275726e61626c65546f6b656e57697468426f756e64733a2065786365656473206d6178206275726e20626f756e,
                    mem[211 len 17]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit Burn(arg1, msg.sender);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if stor22[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x655472756543757272656e63793a20746f6b656e73206f776e657220697320626c61636b6c69737465,
                    mem[205 len 23]
    if stor22[address(arg1)]:
        if arg2 + allowance[address(msg.sender)][address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0x735472756543757272656e63793a20746f6b656e73207370656e64657220697320626c61636b6c69737465,
                        mem[207 len 21]
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
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor22[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x735472756543757272656e63793a2073656e64657220697320626c61636b6c69737465,
                    mem[199 len 29]
    if stor22[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x645472756543757272656e63793a20726563697069656e7420697320626c61636b6c69737465,
                    mem[202 len 26]
    if arg1 >= 1048576:
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
                        0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not arg1:
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
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if arg2 % 10^16 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not msg.sender:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg1:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg2 - (arg2 % 10^16) > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 % 10^16)
            if arg2 - (arg2 % 10^16) + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 - (arg2 % 10^16) + balanceOf[arg1]
            emit Transfer((arg2 - (arg2 % 10^16)), msg.sender, arg1);
            if arg2 % 10^16 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor23[address(arg1)]:
                revert with 0, 32, 43, 0x645472756543757272656e63793a2063616e6e6f74206275726e2066726f6d207468697320616464726573, mem[559 len 21]
            if arg2 - (arg2 % 10^16) < burnMin:
                revert with 0, 
                            32,
                            45,
                            0x644275726e61626c65546f6b656e57697468426f756e64733a2062656c6f77206d696e206275726e20626f756e,
                            mem[561 len 19]
            if arg2 - (arg2 % 10^16) > burnMax:
                revert with 0, 
                            32,
                            47,
                            0x6f4275726e61626c65546f6b656e57697468426f756e64733a2065786365656473206d6178206275726e20626f756e,
                            mem[563 len 17]
            if not arg1:
                revert with 0, 32, 33, 0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[549 len 31]
            if arg2 - (arg2 % 10^16) > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[514 len 30], mem[574 len 2]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg2 + (arg2 % 10^16)
            if arg2 - (arg2 % 10^16) > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply = totalSupply - arg2 + (arg2 % 10^16)
            emit Transfer((arg2 - (arg2 % 10^16)), arg1, 0);
            emit Burn((arg2 - (arg2 % 10^16)), arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor22[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x735472756543757272656e63793a2073656e64657220697320626c61636b6c69737465,
                    mem[199 len 29]
    if stor22[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x645472756543757272656e63793a20726563697069656e7420697320626c61636b6c69737465,
                    mem[202 len 26]
    if arg2 >= 1048576:
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
                        0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 
                        32,
                        40,
                        0x7845524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                        mem[264 len 24],
                        mem[312 len 8]
        if stor22[address(arg1)]:
            revert with 0, 32, 41, 0x655472756543757272656e63793a20746f6b656e73206f776e657220697320626c61636b6c69737465, mem[397 len 23]
        if stor22[address(msg.sender)]:
            if allowance[address(arg1)][address(msg.sender)] - arg3:
                revert with 0, 32, 43, 0x735472756543757272656e63793a20746f6b656e73207370656e64657220697320626c61636b6c69737465, mem[399 len 21]
        if not arg1:
            revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
        if not msg.sender:
            revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    else:
        if not arg2:
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
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7845524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if stor22[address(arg1)]:
                revert with 0, 32, 41, 0x655472756543757272656e63793a20746f6b656e73206f776e657220697320626c61636b6c69737465, mem[397 len 23]
            if stor22[address(msg.sender)]:
                if allowance[address(arg1)][address(msg.sender)] - arg3:
                    revert with 0, 32, 43, 0x735472756543757272656e63793a20746f6b656e73207370656e64657220697320626c61636b6c69737465, mem[399 len 21]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if arg3 % 10^16 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg1:
                revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
            if not arg2:
                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
            if arg3 - (arg3 % 10^16) > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x6445524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[294 len 26],
                            mem[346 len 6]
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 % 10^16)
            if arg3 - (arg3 % 10^16) + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 - (arg3 % 10^16) + balanceOf[arg2]
            emit Transfer((arg3 - (arg3 % 10^16)), arg1, arg2);
            if arg3 % 10^16 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor23[address(arg2)]:
                revert with 0, 32, 43, 0x645472756543757272656e63793a2063616e6e6f74206275726e2066726f6d207468697320616464726573, mem[559 len 21]
            if arg3 - (arg3 % 10^16) < burnMin:
                revert with 0, 
                            32,
                            45,
                            0x644275726e61626c65546f6b656e57697468426f756e64733a2062656c6f77206d696e206275726e20626f756e,
                            mem[561 len 19]
            if arg3 - (arg3 % 10^16) > burnMax:
                revert with 0, 
                            32,
                            47,
                            0x6f4275726e61626c65546f6b656e57697468426f756e64733a2065786365656473206d6178206275726e20626f756e,
                            mem[563 len 17]
            if not arg2:
                revert with 0, 32, 33, 0x6445524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[549 len 31]
            if arg3 - (arg3 % 10^16) > balanceOf[address(arg2)]:
                revert with 0, 32, 34, 0x6445524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[514 len 30], mem[574 len 2]
            balanceOf[address(arg2)] = balanceOf[address(arg2)] - arg3 + (arg3 % 10^16)
            if arg3 - (arg3 % 10^16) > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply = totalSupply - arg3 + (arg3 % 10^16)
            emit Transfer((arg3 - (arg3 % 10^16)), arg2, 0);
            emit Burn((arg3 - (arg3 % 10^16)), arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7845524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[680 len 24],
                            mem[728 len 8]
            if stor22[address(arg1)]:
                revert with 0, 32, 41, 0x655472756543757272656e63793a20746f6b656e73206f776e657220697320626c61636b6c69737465, mem[813 len 23]
            if stor22[address(msg.sender)]:
                if allowance[address(arg1)][address(msg.sender)] - arg3:
                    revert with 0, 32, 43, 0x735472756543757272656e63793a20746f6b656e73207370656e64657220697320626c61636b6c69737465, mem[815 len 21]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[808 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[806 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
