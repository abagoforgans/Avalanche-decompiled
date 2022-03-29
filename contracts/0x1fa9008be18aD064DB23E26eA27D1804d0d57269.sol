contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address pauserAddress;
address blacklisterAddress;
mapping of uint8 stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 currency;
uint8 stor8; offset 160
uint128 stor8; offset 160
address masterMinterAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor12;
mapping of uint256 minterAllowance;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function masterMinter() payable {
    return masterMinterAddress
}

function paused() payable {
    return bool(uint8(stor1.field_160))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function minterAllowance(address arg1) payable {
    require calldata.size - 4 >= 32
    return minterAllowance[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function pauser() payable {
    return pauserAddress
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[address(arg1)])
}

function blacklister() payable {
    return blacklisterAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function currency() payable {
    return currency[0 len currency.length]
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function _fallback() payable {
    revert
}

function pause() payable {
    if pauserAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x655061757361626c653a2063616c6c6572206973206e6f7420746865207061757365,
                    mem[198 len 30]
    Mask(96, 0, stor1.field_160) = 1
    emit Pause()
}

function unpause() payable {
    if pauserAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x655061757361626c653a2063616c6c6572206973206e6f7420746865207061757365,
                    mem[198 len 30]
    Mask(96, 0, stor1.field_160) = 0
    emit Unpause()
}

function blacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if blacklisterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x72426c61636b6c69737461626c653a2063616c6c6572206973206e6f742074686520626c61636b6c69737465,
                    mem[208 len 20]
    stor3[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function unBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    if blacklisterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x72426c61636b6c69737461626c653a2063616c6c6572206973206e6f742074686520626c61636b6c69737465,
                    mem[208 len 20]
    stor3[address(arg1)] = 0
    emit UnBlacklisted(arg1);
}

function removeMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if masterMinterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6546696174546f6b656e3a2063616c6c6572206973206e6f7420746865206d61737465724d696e7465,
                    mem[205 len 23]
    stor12[address(arg1)] = 0
    minterAllowance[address(arg1)] = 0
    emit MinterRemoved(arg1);
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updatePauser(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x735061757361626c653a206e65772070617573657220697320746865207a65726f20616464726573,
                    mem[204 len 24]
    pauserAddress = arg1
    emit PauserChanged(pauserAddress);
}

function updateMasterMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x7246696174546f6b656e3a206e6577206d61737465724d696e74657220697320746865207a65726f20616464726573,
                    mem[211 len 17]
    masterMinterAddress = arg1
    emit MasterMinterChanged(masterMinterAddress);
}

function updateBlacklister(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73426c61636b6c69737461626c653a206e657720626c61636b6c697374657220697320746865207a65726f20616464726573,
                    mem[214 len 14]
    blacklisterAddress = arg1
    emit BlacklisterChanged(blacklisterAddress);
}

function configureMinter(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    if masterMinterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x6546696174546f6b656e3a2063616c6c6572206973206e6f7420746865206d61737465724d696e7465,
                    mem[205 len 23]
    stor12[address(arg1)] = 1
    minterAllowance[address(arg1)] = arg2
    emit MinterConfigured(arg2, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    if stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
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

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6546696174546f6b656e3a2063616c6c6572206973206e6f742061206d696e7465,
                    mem[197 len 31]
    if stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7346696174546f6b656e3a206275726e20616d6f756e74206e6f742067726561746572207468616e20,
                    mem[205 len 23]
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7246696174546f6b656e3a206275726e20616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    if stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x3045524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function initialize(string arg1, string arg2, string arg3, uint8 arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if uint8(stor8.field_160):
        revert with 0, 
                    32,
                    42,
                    0x7346696174546f6b656e3a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 302 len 22]
    if not arg5:
        revert with 0, 
                    32,
                    47,
                    0x7246696174546f6b656e3a206e6577206d61737465724d696e74657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 307 len 17]
    if not arg6:
        revert with 0, 
                    32,
                    41,
                    0x7346696174546f6b656e3a206e65772070617573657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 301 len 23]
    if not arg7:
        revert with 0, 
                    32,
                    46,
                    0x6546696174546f6b656e3a206e657720626c61636b6c697374657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 306 len 18]
    if not arg8:
        revert with 0, 
                    32,
                    40,
                    0x7246696174546f6b656e3a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 300 len 24]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    currency[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg4
    masterMinterAddress = arg5
    pauserAddress = arg6
    blacklisterAddress = arg7
    owner = arg8
    Mask(96, 0, stor8.field_160) = 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    if not stor12[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6546696174546f6b656e3a2063616c6c6572206973206e6f742061206d696e7465,
                    mem[197 len 31]
    if stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x3046696174546f6b656e3a206d696e7420746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7346696174546f6b656e3a206d696e7420616d6f756e74206e6f742067726561746572207468616e20,
                    mem[205 len 23]
    if arg2 > minterAllowance[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7346696174546f6b656e3a206d696e7420616d6f756e742065786365656473206d696e746572416c6c6f77616e63,
                    mem[210 len 18]
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    if arg2 > minterAllowance[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    minterAllowance[address(msg.sender)] -= arg2
    emit Mint(arg2, msg.sender, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor1.field_160):
        revert with 0, 'Pausable: paused'
    if stor3[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73426c61636b6c69737461626c653a206163636f756e7420697320626c61636b6c69737465,
                    mem[201 len 27]
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7345524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6445524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x3045524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
