contract main {




// =====================  Runtime code  =====================


const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
address owner;
address vaultAddress;
array of struct stor10;
mapping of uint256 stor11;
address twapOracleAddress;
uint16 stor13;
uint256 twapEpochPeriod;
uint256 index;

function sub_01861080(?) {
    return index
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function index() {
    return index
}

function decimals() {
    return decimals
}

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function owner() {
    return owner
}

function twapOracle() {
    return twapOracleAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function twapEpochPeriod() {
    return uint256(twapEpochPeriod)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function vault() {
    return vaultAddress
}

function setIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    index = arg1
    return arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    vaultAddress = arg1
    return 1
}

function changeTWAPOracle(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit TWAPOracleChanged(twapOracleAddress, arg1);
    twapOracleAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeTWAPEpochPeriod(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    60,
                    0x73545741504f7261636c65557064617465723a20545741502045706f636820706572696f64206d7573742062652067726561746572207468616e2030,
                    mem[224 len 4]
    emit TWAPEpochChanged(uint256(twapEpochPeriod), arg1);
    uint256(twapEpochPeriod) = arg1
}

function addTWAPSource(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor11[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x734f6c796d7075734552433230544f6b656e3a205457415020536f7572636520616c72656164792073746f726564,
                    mem[210 len 18]
    stor10.length++
    stor10[stor10.length].field_0 = arg1
    stor10[stor10.length].field_160 = 0
    stor11[address(arg1)] = stor10.length
    emit TWAPSourceAdded(arg1);
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
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function removeTWAPSource(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor11[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x2e4f6c796d7075734552433230544f6b656e3a205457415020736f75726365206e6f742070726573656e74,
                    mem[207 len 21]
    require stor10.length - 1 < stor10.length
    require stor11[address(arg1)] - 1 < stor10.length
    stor10[stor11[address(arg1)]].field_0 = stor10[stor10.length].field_0
    stor11[stor10[stor10.length].field_0] = stor11[address(arg1)]
    require stor10.length
    stor10[stor10.length].field_0 = 0
    stor10.length--
    stor11[address(arg1)] = 0
    emit TWAPSourceRemoved(arg1);
}

function increaseAllowance(address arg1, uint256 arg2) {
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

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'Permit: expired deadline'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 32, 33, 0x655a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x655a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if stor11[address(this.address)]:
        if stor11[address(this.address)]:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if stor11[address(arg1)]:
            if stor11[address(arg1)]:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function deposit() payable {
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if stor11[address(this.address)]:
        if stor11[address(this.address)]:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if stor11[address(msg.sender)]:
            if stor11[address(msg.sender)]:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    if msg.value + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += msg.value
    if msg.value + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += msg.value
    emit Transfer(msg.value, this.address, msg.sender);
}

function _fallback() payable {
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if stor11[address(this.address)]:
        if stor11[address(this.address)]:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if stor11[address(msg.sender)]:
            if stor11[address(msg.sender)]:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    if msg.value + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += msg.value
    if msg.value + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += msg.value
    emit Transfer(msg.value, this.address, msg.sender);
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
    if stor11[address(msg.sender)]:
        if stor11[address(msg.sender)]:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if stor11[address(arg1)]:
            if stor11[address(arg1)]:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x2e45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
    if stor11[address(arg1)]:
        if stor11[address(arg1)]:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if stor11[address(arg2)]:
            if stor11[address(arg2)]:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x2e45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if stor11[address(msg.sender)]:
        if not stor11[address(msg.sender)]:
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        else:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            34,
                            0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            uint16(stor13),
                            mem[164 len 28],
                            mem[222 len 2]
    else:
        if not stor11[0]:
            if arg1 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
        else:
            if not stor11[0]:
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
            else:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                34,
                                0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                uint16(stor13),
                                mem[164 len 28],
                                mem[222 len 2]
    ('le', ('param', 'arg1'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 0))))
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7245524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if stor11[address(arg1)]:
        if not stor11[address(arg1)]:
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
        else:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            uint16(stor13),
                            mem[260 len 28],
                            mem[318 len 2]
    else:
        if not stor11[0]:
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
        else:
            if not stor11[0]:
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
            else:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                34,
                                0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                uint16(stor13),
                                mem[260 len 28],
                                mem[318 len 2]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function _burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7245524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if stor11[address(arg1)]:
        if not stor11[address(arg1)]:
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
        else:
            require ext_code.size(twapOracleAddress)
            call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), uint256(twapEpochPeriod)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            34,
                            0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                            uint16(stor13),
                            mem[260 len 28],
                            mem[318 len 2]
    else:
        if not stor11[0]:
            if arg2 > balanceOf[address(arg1)]:
                revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
        else:
            if not stor11[0]:
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 32, 34, 0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
            else:
                require ext_code.size(twapOracleAddress)
                call twapOracleAddress.updateTWAP(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0, uint256(twapEpochPeriod)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                34,
                                0x2e45524332303a206275726e20616d6f756e7420657863656564732062616c616e63,
                                uint16(stor13),
                                mem[260 len 28],
                                mem[318 len 2]
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'balanceOf', 0))))
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}



}
