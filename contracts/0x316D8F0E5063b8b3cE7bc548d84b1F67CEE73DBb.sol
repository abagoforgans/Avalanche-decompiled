contract main {




// =====================  Runtime code  =====================


const decimals = 18

const price = 1


mapping of uint256 balanceOf;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
uint8 started; offset 160
uint8 canRedeem; offset 168
address owner;
uint256 launchTimestamp;
mapping of struct usersInfo;
address devAddress;
address baseTokenAddress;
address daoTokenAddress;

function totalSupply() payable {
    return totalSupply
}

function started() payable {
    return bool(started)
}

function daoToken() payable {
    return daoTokenAddress
}

function usersInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return usersInfo[arg1].field_0, 
           usersInfo[arg1].field_256,
           usersInfo[arg1].field_512,
           bool(usersInfo[arg1].field_768),
           bool(usersInfo[arg1].field_776),
           usersInfo[arg1].field_1024
}

function launchTimestamp() payable {
    return launchTimestamp
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function dev() payable {
    return devAddress
}

function baseToken() payable {
    return baseTokenAddress
}

function canRedeem() payable {
    return bool(canRedeem)
}

function _fallback() payable {
    revert
}

function end() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    started = 0
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    started = 1
    emit Started()
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableRedeem() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    launchTimestamp = block.timestamp
    canRedeem = 1
    emit 0xf717de6f 
}

function setDAOToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    daoTokenAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall baseTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call baseTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addWhitelist(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        usersInfo[address(cd[((32 * idx) + arg1 + 36)])].field_776 = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function percentVestedFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(usersInfo[address(arg1)].field_768) != 1:
        if block.timestamp < launchTimestamp:
            revert with 0, 17
        if block.timestamp - launchTimestamp and 10000 > -1 / block.timestamp - launchTimestamp:
            revert with 0, 17
        if not usersInfo[address(arg1)].field_256:
            revert with 0, 18
        return ((10000 * block.timestamp) - (10000 * launchTimestamp) / usersInfo[address(arg1)].field_256)
    if block.timestamp < usersInfo[address(arg1)].field_512:
        revert with 0, 17
    if block.timestamp - usersInfo[address(arg1)].field_512 and 10000 > -1 / block.timestamp - usersInfo[address(arg1)].field_512:
        revert with 0, 17
    if not usersInfo[address(arg1)].field_256:
        revert with 0, 18
    return ((10000 * block.timestamp) - (10000 * usersInfo[address(arg1)].field_512) / usersInfo[address(arg1)].field_256)
}

function giveTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall daoTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        call daoTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                revert with 0, 17
            call daoTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            call daoTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(started) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GryphonDAO: The private presale has either not started or ended.'
    if bool(usersInfo[msg.sender].field_776) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GryphonDAO: You are not whitelisted'
    if usersInfo[msg.sender].field_1024 > !arg1:
        revert with 0, 17
    if usersInfo[msg.sender].field_1024 + arg1 > 2000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'GryphonDAO: You are putting too much money in!'
    staticcall baseTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        call baseTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg1 and 1 > -1 / arg1:
                revert with 0, 17
            if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                revert with 0, 17
            call baseTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and 1 > -1 / arg1:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            call baseTokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and 1 > -1 / arg1:
        revert with 0, 17
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if not this.address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[address(this.address)] < 10^18 * arg1:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(this.address)] += -1 * 10^18 * arg1
    if balanceOf[msg.sender] > !(10^18 * arg1):
        revert with 0, 17
    balanceOf[msg.sender] += 10^18 * arg1
    emit Transfer((10^18 * arg1), this.address, msg.sender);
    if arg1 and 1 > -1 / arg1:
        revert with 0, 17
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    if usersInfo[msg.sender].field_0 > !(10^18 * arg1):
        revert with 0, 17
    if arg1 and 1 > -1 / arg1:
        revert with 0, 17
    usersInfo[msg.sender].field_0 += 10^18 * arg1
    usersInfo[msg.sender].field_256 = 120 * 24 * 3600
    usersInfo[msg.sender].field_512 = 0
    usersInfo[msg.sender].field_768 = 0
    usersInfo[msg.sender].field_776 = 1
    usersInfo[msg.sender].field_784 = 0
    usersInfo[msg.sender].field_1024 = arg1
    emit Deposit()
}

function redeem() payable {
    if started:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GryphonDAO: Owner needs to end the presale before you can redeem'
    if bool(canRedeem) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'GryphonDAO: The token has to be launched for you to redeem'
    if usersInfo[msg.sender].field_768:
        if block.timestamp < usersInfo[msg.sender].field_512:
            revert with 0, 17
        if block.timestamp - usersInfo[msg.sender].field_512 < 12 * 3600:
            revert with 0, 'GryphonDAO: You can only claim at 8 hours intervals'
    else:
        if block.timestamp < launchTimestamp:
            revert with 0, 17
        if block.timestamp - launchTimestamp < 12 * 3600:
            revert with 0, 'GryphonDAO: You can only claim at 8 hours intervals'
    if bool(usersInfo[address(msg.sender)].field_768) != 1:
        if block.timestamp < launchTimestamp:
            revert with 0, 17
        if block.timestamp - launchTimestamp and 10000 > -1 / block.timestamp - launchTimestamp:
            revert with 0, 17
        if not usersInfo[address(msg.sender)].field_256:
            revert with 0, 18
        if (10000 * block.timestamp) - (10000 * launchTimestamp) / usersInfo[address(msg.sender)].field_256 >= 10000:
            call daoTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, usersInfo[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            usersInfo[msg.sender].field_0 = 0
            usersInfo[msg.sender].field_256 = 0
            usersInfo[msg.sender].field_512 = 0
            usersInfo[msg.sender].field_768 = 0
            usersInfo[msg.sender].field_1024 = 0
        else:
            if usersInfo[msg.sender].field_0 and (10000 * block.timestamp) - (10000 * launchTimestamp) / usersInfo[address(msg.sender)].field_256 > -1 / usersInfo[msg.sender].field_0:
                revert with 0, 17
            if usersInfo[msg.sender].field_0 < usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * launchTimestamp) / usersInfo[address(msg.sender)].field_256 / 10000:
                revert with 0, 17
            if usersInfo[msg.sender].field_768:
                if block.timestamp < usersInfo[msg.sender].field_512:
                    revert with 0, 17
                if usersInfo[msg.sender].field_256 < block.timestamp - usersInfo[msg.sender].field_512:
                    revert with 0, 17
                usersInfo[msg.sender].field_0 -= usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * launchTimestamp) / usersInfo[address(msg.sender)].field_256 / 10000
                usersInfo[msg.sender].field_256 = usersInfo[msg.sender].field_256 - block.timestamp + usersInfo[msg.sender].field_512
            else:
                if block.timestamp < launchTimestamp:
                    revert with 0, 17
                if usersInfo[msg.sender].field_256 < block.timestamp - launchTimestamp:
                    revert with 0, 17
                usersInfo[msg.sender].field_0 -= usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * launchTimestamp) / usersInfo[address(msg.sender)].field_256 / 10000
                usersInfo[msg.sender].field_256 = usersInfo[msg.sender].field_256 - block.timestamp + launchTimestamp
            usersInfo[msg.sender].field_512 = block.timestamp
            usersInfo[msg.sender].field_768 = 1
            usersInfo[msg.sender].field_776 = 1
            usersInfo[msg.sender].field_784 = 0
            call daoTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * launchTimestamp) / usersInfo[address(msg.sender)].field_256 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Redeem()
    else:
        if block.timestamp < usersInfo[address(msg.sender)].field_512:
            revert with 0, 17
        if block.timestamp - usersInfo[address(msg.sender)].field_512 and 10000 > -1 / block.timestamp - usersInfo[address(msg.sender)].field_512:
            revert with 0, 17
        if not usersInfo[address(msg.sender)].field_256:
            revert with 0, 18
        if (10000 * block.timestamp) - (10000 * usersInfo[address(msg.sender)].field_512) / usersInfo[address(msg.sender)].field_256 >= 10000:
            call daoTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, usersInfo[msg.sender].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            usersInfo[msg.sender].field_0 = 0
            usersInfo[msg.sender].field_256 = 0
            usersInfo[msg.sender].field_512 = 0
            usersInfo[msg.sender].field_768 = 0
            usersInfo[msg.sender].field_1024 = 0
        else:
            if usersInfo[msg.sender].field_0 and (10000 * block.timestamp) - (10000 * usersInfo[address(msg.sender)].field_512) / usersInfo[address(msg.sender)].field_256 > -1 / usersInfo[msg.sender].field_0:
                revert with 0, 17
            if usersInfo[msg.sender].field_0 < usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * usersInfo[address(msg.sender)].field_512) / usersInfo[address(msg.sender)].field_256 / 10000:
                revert with 0, 17
            if usersInfo[msg.sender].field_768:
                if block.timestamp < usersInfo[msg.sender].field_512:
                    revert with 0, 17
                if usersInfo[msg.sender].field_256 < block.timestamp - usersInfo[msg.sender].field_512:
                    revert with 0, 17
                usersInfo[msg.sender].field_0 -= usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * usersInfo[address(msg.sender)].field_512) / usersInfo[address(msg.sender)].field_256 / 10000
                usersInfo[msg.sender].field_256 = usersInfo[msg.sender].field_256 - block.timestamp + usersInfo[msg.sender].field_512
            else:
                if block.timestamp < launchTimestamp:
                    revert with 0, 17
                if usersInfo[msg.sender].field_256 < block.timestamp - launchTimestamp:
                    revert with 0, 17
                usersInfo[msg.sender].field_0 -= usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * usersInfo[address(msg.sender)].field_512) / usersInfo[address(msg.sender)].field_256 / 10000
                usersInfo[msg.sender].field_256 = usersInfo[msg.sender].field_256 - block.timestamp + launchTimestamp
            usersInfo[msg.sender].field_512 = block.timestamp
            usersInfo[msg.sender].field_768 = 1
            usersInfo[msg.sender].field_776 = 1
            usersInfo[msg.sender].field_784 = 0
            call daoTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, usersInfo[msg.sender].field_0 * (10000 * block.timestamp) - (10000 * usersInfo[address(msg.sender)].field_512) / usersInfo[address(msg.sender)].field_256 / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Redeem()
}



}
