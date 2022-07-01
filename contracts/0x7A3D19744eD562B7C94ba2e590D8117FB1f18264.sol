contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
address sub_4b87af47Address;
address sub_9885fdfaAddress;
address usdcAddress;
address stor154;
address stor155;
mapping of uint256 stor156;
uint256 participants;
uint8 isRunning;
uint256 totalDeposited;
uint256 startTime;
array of struct sub_3e620886;
uint256 sub_6090b30e;
uint256 sub_bd3b59f8;
uint256 sub_d57e4eae;
uint256 stor165;
uint256 sub_302150e5;
mapping of uint256 stor167;
uint8 whitelistStart;
array of uint256 stor77282275189709367734651031388976690332233555452666916122967375672545332467832;
array of uint256 stor77282275189709367734651031388976690332233555452666916122967375672545332467833;
array of uint256 stor77282275189709367734651031388976690332233555452666916122967375672545332467834;

function isRunning() payable {
    return bool(isRunning)
}

function sub_302150e5(?) payable {
    return sub_302150e5
}

function usdc() payable {
    return usdcAddress
}

function sub_3e620886(?) payable {
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    return sub_3e620886[stor162].field_0
}

function sub_4b87af47(?) payable {
    return sub_4b87af47Address
}

function sub_6090b30e(?) payable {
    return sub_6090b30e
}

function participants() payable {
    return participants
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function sub_9885fdfa(?) payable {
    return sub_9885fdfaAddress
}

function whitelistStart() payable {
    return bool(whitelistStart)
}

function getMinted() payable {
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    return sub_3e620886[stor162].field_256
}

function batches(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_3e620886.length
    return sub_3e620886[arg1].field_0, sub_3e620886[arg1].field_256, sub_3e620886[arg1].field_512
}

function sub_bd3b59f8(?) payable {
    return sub_bd3b59f8
}

function sub_d57e4eae(?) payable {
    return sub_d57e4eae
}

function getCurrentPrice() payable {
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    return sub_3e620886[stor162].field_512
}

function totalDeposited() payable {
    return totalDeposited
}

function _fallback() payable {
    revert
}

function sub_a99c1121(?) payable {
    if sub_3e620886.length < 1:
        revert with 0, 17
    return (sub_6090b30e < sub_3e620886.length - 1)
}

function startWhitelist() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    whitelistStart = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not isRunning:
        revert with 0, 'Sale isn't running'
    isRunning = 0
}

function setWhitelistLimit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_302150e5 = arg1
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    startTime = block.timestamp
    isRunning = 1
    emit 0x55728451: 1, block.timestamp
}

function sub_b51d99da(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_bd3b59f8 = arg1
    sub_d57e4eae = 0
    stor165 = 0
    sub_302150e5 = arg2
}

function sub_04ae0084(?) payable {
    require calldata.size - 4 >= 32
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    if sub_3e620886[stor162].field_256 > !arg1:
        revert with 0, 17
    return (sub_3e620886[stor162].field_256 + arg1 > sub_3e620886[stor162].field_0)
}

function sub_90009d2d(?) payable {
    if sub_3e620886.length < 1:
        revert with 0, 17
    if sub_6090b30e >= sub_3e620886.length - 1:
        return 0
    if 1 > !sub_6090b30e:
        revert with 0, 17
    if sub_6090b30e + 1 >= sub_3e620886.length:
        revert with 0, 50
    return sub_3e620886[stor162].field_768
}

function sub_464cbc52(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_3e620886.length++
    storAADC[stor161.length] = arg1
    storAADC[stor161.length] = 0
    storAADC[stor161.length] = arg2
}

function sub_c33685ee(?) payable {
    if sub_3e620886.length < 1:
        revert with 0, 17
    if sub_6090b30e >= sub_3e620886.length - 1:
        return 0
    if 1 > !sub_6090b30e:
        revert with 0, 17
    if sub_6090b30e + 1 >= sub_3e620886.length:
        revert with 0, 50
    return sub_3e620886[stor162].field_1280
}

function sub_0d1cc236(?) payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_6090b30e = 0
    sub_3e620886.length = 0
    idx = 0
    while 3 * sub_3e620886.length > idx:
        sub_3e620886[idx].field_0 = 0
        sub_3e620886[idx].field_256 = 0
        sub_3e620886[idx].field_512 = 0
        idx = idx + 3
        continue 
}

function sub_ef07b84c(?) payable {
    require calldata.size - 4 >= 32
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    if sub_3e620886[stor162].field_0 < sub_3e620886[stor162].field_256:
        revert with 0, 17
    if arg1 < sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256:
        revert with 0, 17
    return (arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor155 = arg1
    sub_4b87af47Address = arg2
    sub_9885fdfaAddress = arg3
    usdcAddress = arg4
    stor154 = arg5
}

function getPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    if sub_3e620886[stor162].field_512 and arg1 > -1 / sub_3e620886[stor162].field_512:
        revert with 0, 17
    if sub_3e620886.length < 1:
        revert with 0, 17
    if sub_6090b30e >= sub_3e620886.length - 1:
        return (sub_3e620886[stor162].field_512 * arg1)
    if sub_3e620886[stor162].field_256 > !arg1:
        revert with 0, 17
    if sub_3e620886[stor162].field_256 + arg1 <= sub_3e620886[stor162].field_0:
        return (sub_3e620886[stor162].field_512 * arg1)
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    if sub_3e620886[stor162].field_0 < sub_3e620886[stor162].field_256:
        revert with 0, 17
    if arg1 < sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256:
        revert with 0, 17
    if 1 > !sub_6090b30e:
        revert with 0, 17
    if sub_6090b30e + 1 >= sub_3e620886.length:
        revert with 0, 50
    if sub_3e620886[stor162].field_1280 and arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256 > -1 / sub_3e620886[stor162].field_1280:
        revert with 0, 17
    if arg1 < arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256:
        revert with 0, 17
    if sub_6090b30e >= sub_3e620886.length:
        revert with 0, 50
    if sub_3e620886[stor162].field_512 and sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256 > -1 / sub_3e620886[stor162].field_512:
        revert with 0, 17
    if (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) > !((arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280)):
        revert with 0, 17
    return ((sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) + (arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280))
}

function sub_892e13c6(?) payable {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(sub_4b87af47Address)
    staticcall sub_4b87af47Address.settings() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not whitelistStart:
        revert with 0, 'Presale not running'
    if arg1 <= 0:
        revert with 0, 'Amount must be above 0'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x6caae832 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Amount above tx limit'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).walletLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4b87af47Address)
    staticcall sub_4b87af47Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    if ext_call.return_data[0] + arg1 > ext_call.return_data[0]:
        revert with 0, 'Amount above wallet limit'
    require ext_code.size(stor154)
    staticcall stor154.isWhitelisted(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'User wasnt whitelisted'
    if stor167[msg.sender] > !arg1:
        revert with 0, 17
    if stor167[msg.sender] + arg1 > sub_302150e5:
        revert with 0, 'Whitelisted user cant go above limits'
    if sub_d57e4eae > !arg1:
        revert with 0, 17
    if sub_d57e4eae + arg1 > sub_bd3b59f8:
        revert with 0, 'Cant go over whitelist supply'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x278e5bba with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and arg1 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(sub_9885fdfaAddress)
    call sub_9885fdfaAddress.redeem(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_d57e4eae > !arg1:
        revert with 0, 17
    sub_d57e4eae += arg1
    if stor167[msg.sender] > !arg1:
        revert with 0, 17
    stor167[msg.sender] += arg1
    idx = 0
    while idx < arg1:
        mem[(8 * ceil32(return_data.size)) + 96] = 0xd0def52100000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 100] = msg.sender
        mem[(8 * ceil32(return_data.size)) + 132] = 64
        mem[(8 * ceil32(return_data.size)) + 164] = 0
        require ext_code.size(sub_4b87af47Address)
        call sub_4b87af47Address.mint(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, 64, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    emit Mint(msg.sender, arg1, ext_call.return_data[0] * arg1);
    stor101 = 1
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(sub_4b87af47Address)
    staticcall sub_4b87af47Address.settings() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not isRunning:
        revert with 0, 'Presale not running'
    if arg1 <= 0:
        revert with 0, 'Amount must be above 0'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x6caae832 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'Amount above tx limit'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).walletLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_4b87af47Address)
    staticcall sub_4b87af47Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !arg1:
        revert with 0, 17
    if ext_call.return_data[0] + arg1 > ext_call.return_data[0]:
        revert with 0, 'Amount above wallet limit'
    if sub_3e620886.length < 1:
        revert with 0, 17
    if sub_6090b30e >= sub_3e620886.length - 1:
        if sub_6090b30e >= sub_3e620886.length:
            revert with 0, 50
        if sub_3e620886[stor162].field_256 > !arg1:
            revert with 0, 17
        if sub_3e620886[stor162].field_256 + arg1 > sub_3e620886[stor162].field_0:
            revert with 0, 'Reached end of supply'
        if sub_6090b30e >= sub_3e620886.length:
            revert with 0, 50
    if sub_3e620886[stor162].field_512 and arg1 > -1 / sub_3e620886[stor162].field_512:
        revert with 0, 17
    if sub_3e620886.length < 1:
        revert with 0, 17
    if sub_6090b30e >= sub_3e620886.length - 1:
        require ext_code.size(usdcAddress)
        call usdcAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, stor155, sub_3e620886[stor162].field_512 * arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if sub_3e620886.length < 1:
            revert with 0, 17
        if sub_6090b30e >= sub_3e620886.length - 1:
            if sub_6090b30e >= sub_3e620886.length:
                revert with 0, 50
            if sub_3e620886[stor162].field_256 > !arg1:
                revert with 0, 17
            sub_3e620886[stor162].field_256 += arg1
        else:
            if sub_3e620886[stor162].field_256 > !arg1:
                revert with 0, 17
            if sub_6090b30e >= sub_3e620886.length:
                revert with 0, 50
            if sub_3e620886[stor162].field_256 + arg1 <= sub_3e620886[stor162].field_0:
                if sub_3e620886[stor162].field_256 > !arg1:
                    revert with 0, 17
                sub_3e620886[stor162].field_256 += arg1
            else:
                sub_3e620886[stor162].field_256 = sub_3e620886[stor162].field_0
                if sub_3e620886[stor162].field_0 < sub_3e620886[stor162].field_256:
                    revert with 0, 17
                if arg1 < sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256:
                    revert with 0, 17
                if 1 > !sub_6090b30e:
                    revert with 0, 17
                if sub_6090b30e + 1 >= sub_3e620886.length:
                    revert with 0, 50
                if sub_3e620886[stor162].field_1024 > !(arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256):
                    revert with 0, 17
                sub_3e620886[stor162].field_1024 = sub_3e620886[stor162].field_1024 + arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256
                if sub_6090b30e == -1:
                    revert with 0, 17
                sub_6090b30e++
        if not stor156[msg.sender]:
            if participants == -1:
                revert with 0, 17
            participants++
        if stor156[msg.sender] > !(sub_3e620886[stor162].field_512 * arg1):
            revert with 0, 17
        stor156[msg.sender] += sub_3e620886[stor162].field_512 * arg1
        if totalDeposited > !(sub_3e620886[stor162].field_512 * arg1):
            revert with 0, 17
        totalDeposited += sub_3e620886[stor162].field_512 * arg1
        idx = 0
        while idx < arg1:
            mem[(7 * ceil32(return_data.size)) + 96] = 0xd0def52100000000000000000000000000000000000000000000000000000000
            mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 132] = 64
            mem[(7 * ceil32(return_data.size)) + 164] = 0
            require ext_code.size(sub_4b87af47Address)
            call sub_4b87af47Address.mint(address arg1, string arg2) with:
                 gas gas_remaining wei
                args msg.sender, 64, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        emit Mint(msg.sender, arg1, sub_3e620886[stor162].field_512 * arg1);
    else:
        if sub_3e620886[stor162].field_256 > !arg1:
            revert with 0, 17
        if sub_3e620886[stor162].field_256 + arg1 <= sub_3e620886[stor162].field_0:
            require ext_code.size(usdcAddress)
            call usdcAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, stor155, sub_3e620886[stor162].field_512 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_3e620886.length < 1:
                revert with 0, 17
            if sub_6090b30e >= sub_3e620886.length - 1:
                if sub_6090b30e >= sub_3e620886.length:
                    revert with 0, 50
                if sub_3e620886[stor162].field_256 > !arg1:
                    revert with 0, 17
                sub_3e620886[stor162].field_256 += arg1
            else:
                if sub_3e620886[stor162].field_256 > !arg1:
                    revert with 0, 17
                if sub_6090b30e >= sub_3e620886.length:
                    revert with 0, 50
                if sub_3e620886[stor162].field_256 + arg1 <= sub_3e620886[stor162].field_0:
                    if sub_3e620886[stor162].field_256 > !arg1:
                        revert with 0, 17
                    sub_3e620886[stor162].field_256 += arg1
                else:
                    sub_3e620886[stor162].field_256 = sub_3e620886[stor162].field_0
                    if sub_3e620886[stor162].field_0 < sub_3e620886[stor162].field_256:
                        revert with 0, 17
                    if arg1 < sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256:
                        revert with 0, 17
                    if 1 > !sub_6090b30e:
                        revert with 0, 17
                    if sub_6090b30e + 1 >= sub_3e620886.length:
                        revert with 0, 50
                    if sub_3e620886[stor162].field_1024 > !(arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256):
                        revert with 0, 17
                    sub_3e620886[stor162].field_1024 = sub_3e620886[stor162].field_1024 + arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256
                    if sub_6090b30e == -1:
                        revert with 0, 17
                    sub_6090b30e++
            if not stor156[msg.sender]:
                if participants == -1:
                    revert with 0, 17
                participants++
            if stor156[msg.sender] > !(sub_3e620886[stor162].field_512 * arg1):
                revert with 0, 17
            stor156[msg.sender] += sub_3e620886[stor162].field_512 * arg1
            if totalDeposited > !(sub_3e620886[stor162].field_512 * arg1):
                revert with 0, 17
            totalDeposited += sub_3e620886[stor162].field_512 * arg1
            idx = 0
            while idx < arg1:
                mem[(7 * ceil32(return_data.size)) + 96] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 132] = 64
                mem[(7 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(sub_4b87af47Address)
                call sub_4b87af47Address.mint(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 64, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            emit Mint(msg.sender, arg1, sub_3e620886[stor162].field_512 * arg1);
        else:
            if sub_6090b30e >= sub_3e620886.length:
                revert with 0, 50
            if sub_3e620886[stor162].field_0 < sub_3e620886[stor162].field_256:
                revert with 0, 17
            if arg1 < sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256:
                revert with 0, 17
            if 1 > !sub_6090b30e:
                revert with 0, 17
            if sub_6090b30e + 1 >= sub_3e620886.length:
                revert with 0, 50
            if sub_3e620886[stor162].field_1280 and arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256 > -1 / sub_3e620886[stor162].field_1280:
                revert with 0, 17
            if arg1 < arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256:
                revert with 0, 17
            if sub_6090b30e >= sub_3e620886.length:
                revert with 0, 50
            if sub_3e620886[stor162].field_512 and sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256 > -1 / sub_3e620886[stor162].field_512:
                revert with 0, 17
            if (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) > !((arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280)):
                revert with 0, 17
            require ext_code.size(usdcAddress)
            call usdcAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, stor155, (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) + (arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if sub_3e620886.length < 1:
                revert with 0, 17
            if sub_6090b30e >= sub_3e620886.length - 1:
                if sub_6090b30e >= sub_3e620886.length:
                    revert with 0, 50
                if sub_3e620886[stor162].field_256 > !arg1:
                    revert with 0, 17
                sub_3e620886[stor162].field_256 += arg1
            else:
                if sub_3e620886[stor162].field_256 > !arg1:
                    revert with 0, 17
                if sub_6090b30e >= sub_3e620886.length:
                    revert with 0, 50
                if sub_3e620886[stor162].field_256 + arg1 <= sub_3e620886[stor162].field_0:
                    if sub_3e620886[stor162].field_256 > !arg1:
                        revert with 0, 17
                    sub_3e620886[stor162].field_256 += arg1
                else:
                    sub_3e620886[stor162].field_256 = sub_3e620886[stor162].field_0
                    if sub_3e620886[stor162].field_0 < sub_3e620886[stor162].field_256:
                        revert with 0, 17
                    if arg1 < sub_3e620886[stor162].field_0 - sub_3e620886[stor162].field_256:
                        revert with 0, 17
                    if 1 > !sub_6090b30e:
                        revert with 0, 17
                    if sub_6090b30e + 1 >= sub_3e620886.length:
                        revert with 0, 50
                    if sub_3e620886[stor162].field_1024 > !(arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256):
                        revert with 0, 17
                    sub_3e620886[stor162].field_1024 = sub_3e620886[stor162].field_1024 + arg1 - sub_3e620886[stor162].field_0 + sub_3e620886[stor162].field_256
                    if sub_6090b30e == -1:
                        revert with 0, 17
                    sub_6090b30e++
            if not stor156[msg.sender]:
                if participants == -1:
                    revert with 0, 17
                participants++
            if stor156[msg.sender] > !((sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) + (arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280)):
                revert with 0, 17
            stor156[msg.sender] = stor156[msg.sender] + (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) + (arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280)
            if totalDeposited > !((sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) + (arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280)):
                revert with 0, 17
            totalDeposited = totalDeposited + (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) + (arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280)
            idx = 0
            while idx < arg1:
                mem[(7 * ceil32(return_data.size)) + 96] = 0xd0def52100000000000000000000000000000000000000000000000000000000
                mem[(7 * ceil32(return_data.size)) + 100] = msg.sender
                mem[(7 * ceil32(return_data.size)) + 132] = 64
                mem[(7 * ceil32(return_data.size)) + 164] = 0
                require ext_code.size(sub_4b87af47Address)
                call sub_4b87af47Address.mint(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 64, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            emit Mint(msg.sender, arg1, (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_512) - (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_512) + (arg1 * sub_3e620886[stor162].field_1280) - (sub_3e620886[stor162].field_0 * sub_3e620886[stor162].field_1280) + (sub_3e620886[stor162].field_256 * sub_3e620886[stor162].field_1280));
    stor101 = 1
}



}
