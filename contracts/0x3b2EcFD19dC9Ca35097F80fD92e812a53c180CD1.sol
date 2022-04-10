contract main {




// =====================  Runtime code  =====================


const sub_2f390dc3(?) = ext_call.return_data[0]

const sub_3bf65663(?) = 0x6140d3ed2426cbb24f07d884106d9018d49d9101

const sub_458fd396(?) = eth.balance(this.address)

const sub_635da251(?) = ext_call.return_data[0]

const sub_c73feeaf(?) = ext_call.return_data[0]

const Router = 0xe54ca86531e17ef3616d22ca28b0d458b6c89106

const sub_f756c10a(?) = 10000

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x81440c939f2c1e34fc7048e518a637205a632a74


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 stor6;
uint256 sub_5ab89fa4;
array of struct sub_24cc0766;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_24cc0766(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_24cc0766.length
    return sub_24cc0766[arg1].field_0
}

function decimals() {
    return decimals
}

function sub_5ab89fa4(?) {
    return sub_5ab89fa4
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

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_f4042ca7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5ab89fa4 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_99234e9a(?) {
    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
    staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.earned(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_call.return_data[0]
    if ext_call.return_data[0] * sub_5ab89fa4 / ext_call.return_data[0] != sub_5ab89fa4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * sub_5ab89fa4 / 10000)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_72481dcd(?) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
    staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (ext_call.return_data[0] * arg1 / totalSupply)
    revert
}

function sub_93af7c61(?) {
    require calldata.size - 4 >= 32
    if not totalSupply:
        return 0
    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
    staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            return (0 / totalSupply)
    else:
        if ext_call.return_data[0]:
            if ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] != balanceOf[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                return (ext_call.return_data[0] * balanceOf[address(arg1)] / totalSupply)
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
                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x73784379636c653a20496e73756666696369656e7420784359434c452062616c616e63,
                    mem[199 len 29]
    if not totalSupply:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                        mem[197 len 31]
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
        call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x2e1a7d4d with:
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
        if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, 0
        call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args 0, mem[420 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
        else:
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
        emit Withdraw(arg1, 0, msg.sender);
    else:
        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
            call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (0 / totalSupply)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
            call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, 0 / totalSupply) << 224, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit Withdraw(arg1, 0 / totalSupply, msg.sender);
        else:
            require ext_call.return_data[0]
            if ext_call.return_data[0] * arg1 / ext_call.return_data[0] != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                            mem[197 len 31]
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
            call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * arg1 / totalSupply)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[356 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * arg1 / totalSupply) >> 32
            mem[420 len 0] = 0
            call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] * arg1 / totalSupply) << 224, mem[420 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            else:
                mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 467 len 22]
            emit Withdraw(arg1, ext_call.return_data[0] * arg1 / totalSupply, msg.sender);
    stor6 = 1
}

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if arg1 <= 0:
        revert with 0, 'xCycle: 0 CYCLE deposit'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call 0x81440c939f2c1e34fc7048e518a637205a632a74 with:
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
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
            require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
            staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
            if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
            call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                 gas gas_remaining wei
                args ext_call.return_data[0] + arg1, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
            call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Deposit(arg1, arg1, msg.sender);
        else:
            require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
            staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg1, mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Deposit(arg1, 0 / ext_call.return_data[0], msg.sender);
            else:
                require arg1
                if arg1 * totalSupply / arg1 != totalSupply:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + (arg1 * totalSupply / ext_call.return_data[0]) < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1 * totalSupply / ext_call.return_data[0]
                if balanceOf[address(msg.sender)] + (arg1 * totalSupply / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1 * totalSupply / ext_call.return_data[0]
                emit Transfer((arg1 * totalSupply / ext_call.return_data[0]), 0, msg.sender);
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[562 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[456 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg1, mem[392 len 24], 0, mem[520 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                else:
                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[488]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 567 len 22]
                require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Deposit(arg1, arg1 * totalSupply / ext_call.return_data[0], msg.sender);
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size <= 0:
            if not totalSupply:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                emit Transfer(arg1, 0, msg.sender);
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
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
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Deposit(arg1, arg1, msg.sender);
            else:
                require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                    emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
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
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Deposit(arg1, 0 / ext_call.return_data[0], msg.sender);
                else:
                    require arg1
                    if arg1 * totalSupply / arg1 != totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (arg1 * totalSupply / ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1 * totalSupply / ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] + (arg1 * totalSupply / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1 * totalSupply / ext_call.return_data[0]
                    emit Transfer((arg1 * totalSupply / ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
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
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Deposit(arg1, arg1 * totalSupply / ext_call.return_data[0], msg.sender);
        else:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
            if not totalSupply:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if totalSupply + arg1 < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += arg1
                if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += arg1
                emit Transfer(arg1, 0, msg.sender);
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(return_data.size) + 563 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
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
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Deposit(arg1, arg1, msg.sender);
            else:
                require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg1:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (0 / ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] + (0 / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                    emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
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
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Deposit(arg1, 0 / ext_call.return_data[0], msg.sender);
                else:
                    require arg1
                    if arg1 * totalSupply / arg1 != totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if totalSupply + (arg1 * totalSupply / ext_call.return_data[0]) < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += arg1 * totalSupply / ext_call.return_data[0]
                    if balanceOf[address(msg.sender)] + (arg1 * totalSupply / ext_call.return_data[0]) < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += arg1 * totalSupply / ext_call.return_data[0]
                    emit Transfer((arg1 * totalSupply / ext_call.return_data[0]), 0, msg.sender);
                    require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                    staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                            gas gas_remaining wei
                           args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + arg1 < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(return_data.size) + 563 len 26]
                    if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 457 len 64] = 0, 0x6140d3ed2426cbb24f07d884106d9018d49d9101, Mask(224, 32, ext_call.return_data[0] + arg1) >> 32
                    call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] + arg1, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
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
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 489]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 568 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Deposit(arg1, arg1 * totalSupply / ext_call.return_data[0], msg.sender);
    stor6 = 1
}

function reinvest() {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if ext_code.size(msg.sender) > 0:
        revert with 0, 'xCycle: Caller is not an EOA'
    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.getReward() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not eth.balance(this.address):
        call msg.sender with:
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'xCycle: Unable to transfer AVAX'
            mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = this.address
            mem[196] = block.timestamp
            mem[132] = 128
            mem[228] = sub_24cc0766.length
            if not sub_24cc0766.length:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 0, 128, address(this.address), block.timestamp, sub_24cc0766.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _37 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _49 = mem[_37 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_37 + 96])] = mem[_37 + 128 len floor32(mem[_37 + 96])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _49) + ceil32(return_data.size) + 164] = 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                mem[(32 * _49) + ceil32(return_data.size) + 196] = 2 * ext_call.return_data[0]
                mem[(32 * _49) + ceil32(return_data.size) + 128] = 68
                mem[(32 * _49) + ceil32(return_data.size) + 164 len 28] = 0x6140d3ed2426cbb24f07d884106d9018
                mem[(32 * _49) + ceil32(return_data.size) + 160 len 4] = approve(address rg1, uint256 rg2)
                mem[(32 * _49) + ceil32(return_data.size) + 228] = 32
                mem[(32 * _49) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _49) + ceil32(return_data.size) + 398 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _49) + ceil32(return_data.size) + 292 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _49) + ceil32(return_data.size) + 384 len 4] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _49) + ceil32(return_data.size) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], 0 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], 0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], 0 > 0:
                        require mem[96 len 4], 0 >= 32
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _49) + ceil32(return_data.size) + 402 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _49) + ceil32(return_data.size) + 393 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _49) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _49) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _49) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _49) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
            else:
                mem[0] = 8
                mem[260] = address(sub_24cc0766.field_0)
                idx = 260
                s = 0
                while (32 * sub_24cc0766.length) + 260 > idx + 32:
                    mem[idx + 32] = sub_24cc0766[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 0, 128, address(this.address), block.timestamp, sub_24cc0766.length, mem[260 len 32 * sub_24cc0766.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1095 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _1137 = mem[_1095 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_1095 + 96])] = mem[_1095 + 128 len floor32(mem[_1095 + 96])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1137) + ceil32(return_data.size) + 164] = 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                mem[(32 * _1137) + ceil32(return_data.size) + 196] = 2 * ext_call.return_data[0]
                mem[(32 * _1137) + ceil32(return_data.size) + 128] = 68
                mem[(32 * _1137) + ceil32(return_data.size) + 164 len 28] = 0x6140d3ed2426cbb24f07d884106d9018
                mem[(32 * _1137) + ceil32(return_data.size) + 160 len 4] = approve(address rg1, uint256 rg2)
                mem[(32 * _1137) + ceil32(return_data.size) + 228] = 32
                mem[(32 * _1137) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1137) + ceil32(return_data.size) + 398 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1137) + ceil32(return_data.size) + 292 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _1137) + ceil32(return_data.size) + 384 len 4] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _1137) + ceil32(return_data.size) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], 0 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], 0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], 0 > 0:
                        require mem[96 len 4], 0 >= 32
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1137) + ceil32(return_data.size) + 402 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1137) + ceil32(return_data.size) + 393 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _1137) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1137) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1137) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1137) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
        else:
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'xCycle: Unable to transfer AVAX'
            mem[ceil32(return_data.size) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 101] = 0
            mem[ceil32(return_data.size) + 165] = this.address
            mem[ceil32(return_data.size) + 197] = block.timestamp
            mem[ceil32(return_data.size) + 133] = 128
            mem[ceil32(return_data.size) + 229] = sub_24cc0766.length
            if not sub_24cc0766.length:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_24cc0766.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                require return_data.size >= 32
                _39 = mem[ceil32(return_data.size) + 97 len 4], 0
                require mem[ceil32(return_data.size) + 97 len 4], 0 <= 4294967296
                require mem[ceil32(return_data.size) + 97 len 4], 0 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97] <= 4294967296 and mem[ceil32(return_data.size) + 97 len 4], 0 + (32 * mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]
                _50 = mem[_39 + ceil32(return_data.size) + 97]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len floor32(mem[_39 + ceil32(return_data.size) + 97])] = mem[_39 + ceil32(return_data.size) + 129 len floor32(mem[_39 + ceil32(return_data.size) + 97])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 129] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 399 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 385 len 4] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = return_data.size
                    mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _50) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
                            mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298] = 32
                            mem[(32 * _50) + (4 * ceil32(return_data.size)) + 330] = 42
                            mem[(32 * _50) + (4 * ceil32(return_data.size)) + 362 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _50) + (4 * ceil32(return_data.size)) + 294
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298] = ext_call.return_data[0]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294] = 0
                    else:
                        mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298] = this.address
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 330] = 26
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 362] = 'SafeMath: division by zero'
                                revert with memory
                                  from (32 * _50) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            require totalSupply
                            mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294] = 0 / totalSupply
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 330] = 33
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 362 len 33] = 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (32 * _50) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            if totalSupply <= 0:
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 330] = 26
                                mem[(32 * _50) + (4 * ceil32(return_data.size)) + 362] = 'SafeMath: division by zero'
                                revert with memory
                                  from (32 * _50) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            require totalSupply
                            mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294] = 10^18 * ext_call.return_data[0] / totalSupply
                    mem[(32 * _50) + (4 * ceil32(return_data.size)) + 326] = block.timestamp
                    emit Reinvest(uint256 rg1, uint256 rg2):
                                  mem[(32 * _50) + (4 * ceil32(return_data.size)) + 294 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64],
            else:
                mem[0] = 8
                mem[ceil32(return_data.size) + 261] = address(sub_24cc0766.field_0)
                idx = ceil32(return_data.size) + 261
                s = 0
                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 261 > idx + 32:
                    mem[idx + 32] = sub_24cc0766[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_24cc0766.length, mem[ceil32(return_data.size) + 261 len 32 * sub_24cc0766.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                require return_data.size >= 32
                _1097 = mem[ceil32(return_data.size) + 97 len 4], 0
                require mem[ceil32(return_data.size) + 97 len 4], 0 <= 4294967296
                require mem[ceil32(return_data.size) + 97 len 4], 0 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97] <= 4294967296 and mem[ceil32(return_data.size) + 97 len 4], 0 + (32 * mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]
                _1146 = mem[_1097 + ceil32(return_data.size) + 97]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len floor32(mem[_1097 + ceil32(return_data.size) + 97])] = mem[_1097 + ceil32(return_data.size) + 129 len floor32(mem[_1097 + ceil32(return_data.size) + 97])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 129] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 399 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 385 len 4] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = return_data.size
                    mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1146) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
                            mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298] = 32
                            mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 330] = 42
                            mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 362 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _1146) + (4 * ceil32(return_data.size)) + 294
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298] = ext_call.return_data[0]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294] = 0
                    else:
                        mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298] = this.address
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 330] = 26
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 362] = 'SafeMath: division by zero'
                                revert with memory
                                  from (32 * _1146) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            require totalSupply
                            mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294] = 0 / totalSupply
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 330] = 33
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 362 len 33] = 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (32 * _1146) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            if totalSupply <= 0:
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 330] = 26
                                mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 362] = 'SafeMath: division by zero'
                                revert with memory
                                  from (32 * _1146) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            require totalSupply
                            mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294] = 10^18 * ext_call.return_data[0] / totalSupply
                    mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 326] = block.timestamp
                    emit Reinvest(uint256 rg1, uint256 rg2):
                                  mem[(32 * _1146) + (4 * ceil32(return_data.size)) + 294 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64],
    else:
        require eth.balance(this.address)
        if eth.balance(this.address) * sub_5ab89fa4 / eth.balance(this.address) != sub_5ab89fa4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        call msg.sender with:
           value eth.balance(this.address) * sub_5ab89fa4 / 10000 wei
             gas gas_remaining wei
        if return_data.size:
            mem[96] = return_data.size
            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'xCycle: Unable to transfer AVAX'
            mem[ceil32(return_data.size) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 101] = 0
            mem[ceil32(return_data.size) + 165] = this.address
            mem[ceil32(return_data.size) + 197] = block.timestamp
            mem[ceil32(return_data.size) + 133] = 128
            mem[ceil32(return_data.size) + 229] = sub_24cc0766.length
            if sub_24cc0766.length:
                mem[0] = 8
                mem[ceil32(return_data.size) + 261] = address(sub_24cc0766.field_0)
                idx = ceil32(return_data.size) + 261
                s = 0
                while ceil32(return_data.size) + (32 * sub_24cc0766.length) + 261 > idx + 32:
                    mem[idx + 32] = sub_24cc0766[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_24cc0766.length, mem[ceil32(return_data.size) + 261 len 32 * sub_24cc0766.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                require return_data.size >= 32
                _1093 = mem[ceil32(return_data.size) + 97 len 4], 0
                require mem[ceil32(return_data.size) + 97 len 4], 0 <= 4294967296
                require mem[ceil32(return_data.size) + 97 len 4], 0 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97] <= 4294967296 and mem[ceil32(return_data.size) + 97 len 4], 0 + (32 * mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]
                _1128 = mem[_1093 + ceil32(return_data.size) + 97]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len floor32(mem[_1093 + ceil32(return_data.size) + 97])] = mem[_1093 + ceil32(return_data.size) + 129 len floor32(mem[_1093 + ceil32(return_data.size) + 97])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 129] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 399 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 0] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1128) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1128) + (4 * ceil32(return_data.size)) + 404 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1128) + (4 * ceil32(return_data.size)) + 395 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
            else:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 128, address(this.address), block.timestamp, sub_24cc0766.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 97
                require return_data.size >= 32
                _45 = mem[ceil32(return_data.size) + 97 len 4], 0
                require mem[ceil32(return_data.size) + 97 len 4], 0 <= 4294967296
                require mem[ceil32(return_data.size) + 97 len 4], 0 + 32 <= return_data.size
                require mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97] <= 4294967296 and mem[ceil32(return_data.size) + 97 len 4], 0 + (32 * mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 97] = mem[mem[ceil32(return_data.size) + 97 len 4], 0 + ceil32(return_data.size) + 97]
                _54 = mem[_45 + ceil32(return_data.size) + 97]
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len floor32(mem[_45 + ceil32(return_data.size) + 97])] = mem[_45 + ceil32(return_data.size) + 129 len floor32(mem[_45 + ceil32(return_data.size) + 97])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 129] = 68
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 399 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 293 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 385 len 4] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 357 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 293] = return_data.size
                    mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _54) + ceil32(return_data.size) + ceil32(return_data.size) + 325]:
                            mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298] = 32
                            mem[(32 * _54) + (4 * ceil32(return_data.size)) + 330] = 42
                            mem[(32 * _54) + (4 * ceil32(return_data.size)) + 362 len 42] = 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565
                            revert with memory
                              from (32 * _54) + (4 * ceil32(return_data.size)) + 294
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                    mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298] = ext_call.return_data[0]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294] = 0
                    else:
                        mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298] = this.address
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 330] = 26
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 362] = 'SafeMath: division by zero'
                                revert with memory
                                  from (32 * _54) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            require totalSupply
                            mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294] = 0 / totalSupply
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 330] = 33
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 362 len 33] = 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f
                                revert with memory
                                  from (32 * _54) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                            if totalSupply <= 0:
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 298] = 32
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 330] = 26
                                mem[(32 * _54) + (4 * ceil32(return_data.size)) + 362] = 'SafeMath: division by zero'
                                revert with memory
                                  from (32 * _54) + (4 * ceil32(return_data.size)) + 294
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                            require totalSupply
                            mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294] = 10^18 * ext_call.return_data[0] / totalSupply
                    mem[(32 * _54) + (4 * ceil32(return_data.size)) + 326] = block.timestamp
                    emit Reinvest(uint256 rg1, uint256 rg2):
                                  mem[(32 * _54) + (4 * ceil32(return_data.size)) + 294 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64],
        else:
            if not ext_call.success:
                revert with 0, 'xCycle: Unable to transfer AVAX'
            mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[164] = this.address
            mem[196] = block.timestamp
            mem[132] = 128
            mem[228] = sub_24cc0766.length
            if not sub_24cc0766.length:
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 0, 128, address(this.address), block.timestamp, sub_24cc0766.length
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _43 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _53 = mem[_43 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_43 + 96])] = mem[_43 + 128 len floor32(mem[_43 + 96])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _53) + ceil32(return_data.size) + 164] = 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                mem[(32 * _53) + ceil32(return_data.size) + 196] = 2 * ext_call.return_data[0]
                mem[(32 * _53) + ceil32(return_data.size) + 128] = 68
                mem[(32 * _53) + ceil32(return_data.size) + 164 len 28] = 0x6140d3ed2426cbb24f07d884106d9018
                mem[(32 * _53) + ceil32(return_data.size) + 160 len 4] = approve(address rg1, uint256 rg2)
                mem[(32 * _53) + ceil32(return_data.size) + 228] = 32
                mem[(32 * _53) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _53) + ceil32(return_data.size) + 398 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _53) + ceil32(return_data.size) + 292 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _53) + ceil32(return_data.size) + 384 len 4] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _53) + ceil32(return_data.size) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], 0 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], 0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], 0 > 0:
                        require mem[96 len 4], 0 >= 32
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _53) + ceil32(return_data.size) + 402 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _53) + ceil32(return_data.size) + 393 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _53) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _53) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _53) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
            else:
                mem[0] = 8
                mem[260] = address(sub_24cc0766.field_0)
                idx = 260
                s = 0
                while (32 * sub_24cc0766.length) + 260 > idx + 32:
                    mem[idx + 32] = sub_24cc0766[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
                call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args 0, 0, 128, address(this.address), block.timestamp, sub_24cc0766.length, mem[260 len 32 * sub_24cc0766.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 96
                require return_data.size >= 32
                _1091 = mem[96 len 4], 0
                require mem[96 len 4], 0 <= 4294967296
                require mem[96 len 4], 0 + 32 <= return_data.size
                require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
                mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
                _1119 = mem[_1091 + 96]
                mem[ceil32(return_data.size) + 128 len floor32(mem[_1091 + 96])] = mem[_1091 + 128 len floor32(mem[_1091 + 96])]
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74)
                staticcall 0x81440c939f2c1e34fc7048e518a637205a632a74.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[(32 * _1119) + ceil32(return_data.size) + 164] = 0x6140d3ed2426cbb24f07d884106d9018d49d9101
                mem[(32 * _1119) + ceil32(return_data.size) + 196] = 2 * ext_call.return_data[0]
                mem[(32 * _1119) + ceil32(return_data.size) + 128] = 68
                mem[(32 * _1119) + ceil32(return_data.size) + 164 len 28] = 0x6140d3ed2426cbb24f07d884106d9018
                mem[(32 * _1119) + ceil32(return_data.size) + 160 len 4] = approve(address rg1, uint256 rg2)
                mem[(32 * _1119) + ceil32(return_data.size) + 228] = 32
                mem[(32 * _1119) + ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x65416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[(32 * _1119) + ceil32(return_data.size) + 398 len 26]
                if ext_code.size(0x81440c939f2c1e34fc7048e518a637205a632a74) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(32 * _1119) + ceil32(return_data.size) + 292 len 64] = approve(address rg1, uint256 rg2), 0x6140d3ed2426cbb24f07d884, 0, Mask(224, 31, ext_call.return_data[0]) >> 31
                mem[(32 * _1119) + ceil32(return_data.size) + 384 len 4] = 0
                mem[(32 * _1119) + ceil32(return_data.size) + 356 len 0] = 0
                call 0x81440c939f2c1e34fc7048e518a637205a632a74.0xd49d9101 with:
                     gas gas_remaining wei
                    args Mask(224, 31, ext_call.return_data[0]) << 225, mem[(32 * _1119) + ceil32(return_data.size) + 356 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96 len 4], 0 > 0:
                            revert with memory
                              from 128
                               len mem[96 len 4], 0
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96 len 4], 0 > 0:
                        require mem[96 len 4], 0 >= 32
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * _1119) + ceil32(return_data.size) + 402 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1119) + ceil32(return_data.size) + 393 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
                else:
                    mem[(32 * _1119) + ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[(32 * _1119) + ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(32 * _1119) + ceil32(return_data.size) + ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                    call 0x6140d3ed2426cbb24f07d884106d9018d49d9101.stake(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not totalSupply:
                        emit Reinvest(0, block.timestamp);
                    else:
                        require ext_code.size(0x6140d3ed2426cbb24f07d884106d9018d49d9101)
                        staticcall 0x6140d3ed2426cbb24f07d884106d9018d49d9101.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(0 / totalSupply, block.timestamp);
                        else:
                            require ext_call.return_data[0]
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * _1119) + ceil32(return_data.size) + ceil32(return_data.size) + 394 len 31]
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalSupply
                            emit Reinvest(10^18 * ext_call.return_data[0] / totalSupply, block.timestamp);
    stor6 = 1
}



}
