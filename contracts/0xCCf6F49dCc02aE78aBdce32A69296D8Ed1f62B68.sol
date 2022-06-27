contract main {




// =====================  Runtime code  =====================


const sub_0d0be2dc(?) = (24 * 3600)

const sub_7d06c7c6(?) = 500

const PUBLIC_SALE_PRICE = 2

const DECIMALS = 10^18

const MAX_SOLD = 100000 * 10^18

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d

const PRIVATE_SALE_PRICE = 1


uint8 stor0; offset 160
address owner;
uint256 startTime;
uint256 endTime;
uint8 stor3;
uint8 stor3; offset 8
uint8 stor3; offset 16
uint256 sub_fc35b6f2;
uint256 totalSold;
uint256 totalOwed;
mapping of uint256 owed;
mapping of uint256 lastClaimedAt;
mapping of uint8 stor9;
address treasuryAddress;
address sub_a29230efAddress;
address ecosystemAddress;

function lastClaimedAt(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaimedAt[arg1]
}

function endTime() payable {
    return endTime
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function paused() payable {
    return bool(stor0)
}

function treasury() payable {
    return treasuryAddress
}

function sub_6d8893e5(?) payable {
    return bool(uint8(stor3.field_0))
}

function isClaimable() payable {
    return bool(uint8(stor3.field_16))
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function totalSold() payable {
    return totalSold
}

function ecosystem() payable {
    return ecosystemAddress
}

function sub_a29230ef(?) payable {
    return sub_a29230efAddress
}

function isPublicSale() payable {
    return bool(uint8(stor3.field_8))
}

function owed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return owed[arg1]
}

function totalOwed() payable {
    return totalOwed
}

function sub_fc35b6f2(?) payable {
    return sub_fc35b6f2
}

function _fallback() payable {
    revert
}

function startPublicSale() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_8) = 1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor0:
        revert with 0, 'Pausable: paused'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor0:
        revert with 0, 'Pausable: not paused'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function sub_97eabdc2(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor3.field_0) = 1
    startTime = arg1
    endTime = arg2
}

function sub_10587442(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^18 > -1 / arg1:
        revert with 0, 17
    sub_fc35b6f2 = 10^18 * arg1
}

function updateWhitelist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor9[address(arg1)] = uint8(arg2)
    emit WhitelistUpdated(address(arg1), arg2);
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

function enableClaiming() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not uint8(stor3.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NexusPresale: presale not ended yet'
    if block.timestamp < endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NexusPresale: presale not ended yet'
    uint8(stor3.field_16) = 1
}

function withdrawTokens() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalOwed:
        revert with 0, 'NexusPresale: claim pending'
    require ext_code.size(sub_a29230efAddress)
    staticcall sub_a29230efAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a29230efAddress)
    call sub_a29230efAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function addToWhitelist(address[] arg1) payable {
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
        mem[32] = 9
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 1
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = 1
        emit WhitelistUpdated(address(cd[((32 * idx) + arg1 + 36)]), 1);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function removeFromWhitelist(address[] arg1) payable {
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
        mem[32] = 9
        stor9[address(cd[((32 * idx) + arg1 + 36)])] = 0
        if idx >= arg1.length:
            revert with 0, 50
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = 0
        emit WhitelistUpdated(address(cd[((32 * idx) + arg1 + 36)]), 0);
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_411365d2(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != tx.origin:
        revert with 0, 'NexusPresale: not an EOA'
    require ext_code.size(sub_a29230efAddress)
    staticcall sub_a29230efAddress.isInBlacklist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NexusPresale: blacklisted address'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not uint8(stor3.field_0):
        revert with 0, 'NexusPresale: presale not ended yet'
    if block.timestamp < endTime:
        revert with 0, 'NexusPresale: presale not ended yet'
    require ext_code.size(ecosystemAddress)
    staticcall ecosystemAddress.0x252a8875 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > owed[msg.sender]:
        revert with 0, 'NexusPresale: insufficient presale balance'
    if owed[msg.sender] < ext_call.return_data[0]:
        revert with 0, 17
    owed[msg.sender] -= ext_call.return_data[0]
    if totalOwed < ext_call.return_data[0]:
        revert with 0, 17
    totalOwed -= ext_call.return_data[0]
    require ext_code.size(ecosystemAddress)
    call ecosystemAddress.mint(address arg1, uint256 arg2, string arg3) with:
         gas gas_remaining wei
        args msg.sender, arg1, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x3a8a89b5: msg.sender, arg1, owed[msg.sender]
}

function claimTokens() payable {
    if msg.sender != tx.origin:
        revert with 0, 'NexusPresale: not an EOA'
    require ext_code.size(sub_a29230efAddress)
    staticcall sub_a29230efAddress.isInBlacklist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NexusPresale: blacklisted address'
    if stor0:
        revert with 0, 'Pausable: paused'
    if not uint8(stor3.field_16):
        revert with 0, 'NexusPresale: claiming not active'
    if not owed[msg.sender]:
        revert with 0, 'NexusPresale: insufficient claimable balance'
    if lastClaimedAt[msg.sender] > -86401:
        revert with 0, 17
    if block.timestamp <= lastClaimedAt[msg.sender] + (24 * 3600):
        revert with 0, 'NexusPresale: already claimed once during permitted time'
    lastClaimedAt[msg.sender] = block.timestamp
    if owed[msg.sender] <= sub_fc35b6f2:
        if totalOwed < owed[msg.sender]:
            revert with 0, 17
        totalOwed -= owed[msg.sender]
        if owed[msg.sender] < owed[msg.sender]:
            revert with 0, 17
        owed[msg.sender] = 0
        require ext_code.size(sub_a29230efAddress)
        call sub_a29230efAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, owed[msg.sender]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TokensClaimed(msg.sender, owed[msg.sender]);
    else:
        if totalOwed < sub_fc35b6f2:
            revert with 0, 17
        totalOwed -= sub_fc35b6f2
        if owed[msg.sender] < sub_fc35b6f2:
            revert with 0, 17
        owed[msg.sender] -= sub_fc35b6f2
        require ext_code.size(sub_a29230efAddress)
        call sub_a29230efAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_fc35b6f2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit TokensClaimed(msg.sender, sub_fc35b6f2);
}

function buyTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_a29230efAddress)
    staticcall sub_a29230efAddress.isInBlacklist(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, 'NexusPresale: blacklisted address'
    if stor0:
        revert with 0, 'Pausable: paused'
    if msg.sender != tx.origin:
        revert with 0, 'NexusPresale: not an EOA'
    if not uint8(stor3.field_0):
        revert with 0, 'NexusPresale: not announced yet'
    if block.timestamp <= startTime:
        revert with 0, 'NexusPresale: sale not started yet'
    if block.timestamp >= endTime:
        revert with 0, 'NexusPresale: sale ended'
    if not uint8(stor3.field_8):
        if not stor9[msg.sender]:
            revert with 0, 'NexusPresale: only whitelisted addresses allowed to buy in private sale'
    if totalSold >= 100000 * 10^18:
        revert with 0, 'NexusPresale: sold out'
    if arg1 <= 0:
        revert with 0, 'NexusPresale: zero buy amount'
    if owed[msg.sender] > !arg1:
        revert with 0, 17
    if owed[msg.sender] + arg1 > 500:
        revert with 0, 'NexusPresale: wallet limit reached'
    if 100000 * 10^18 < totalSold:
        revert with 0, 17
    if uint8(stor3.field_8):
        if arg1 <= -totalSold + 100000 * 10^18:
            if arg1 and 2 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, 2 * arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if owed[msg.sender] > !arg1:
                revert with 0, 17
            owed[msg.sender] += arg1
            if totalSold > !arg1:
                revert with 0, 17
            totalSold += arg1
            if totalOwed > !arg1:
                revert with 0, 17
            totalOwed += arg1
            emit TokensBought(msg.sender, arg1, 2 * arg1);
        else:
            if -totalSold + 100000 * 10^18 and 2 > -1 / -totalSold + 100000 * 10^18:
                revert with 0, 17
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, 2 * -totalSold + 100000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if owed[msg.sender] > !(-totalSold + 100000 * 10^18):
                revert with 0, 17
            owed[msg.sender] = owed[msg.sender] + -totalSold + 100000 * 10^18
            if totalSold > !(-totalSold + 100000 * 10^18):
                revert with 0, 17
            totalSold = 100000 * 10^18
            if totalOwed > !(-totalSold + 100000 * 10^18):
                revert with 0, 17
            totalOwed = totalOwed + -totalSold + 100000 * 10^18
            emit TokensBought(msg.sender, -totalSold + 100000 * 10^18, 2 * -totalSold + 100000 * 10^18);
    else:
        if arg1 <= -totalSold + 100000 * 10^18:
            if arg1 and 1 > -1 / arg1:
                revert with 0, 17
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if owed[msg.sender] > !arg1:
                revert with 0, 17
            owed[msg.sender] += arg1
            if totalSold > !arg1:
                revert with 0, 17
            totalSold += arg1
            if totalOwed > !arg1:
                revert with 0, 17
            totalOwed += arg1
            emit TokensBought(msg.sender, arg1, arg1);
        else:
            if -totalSold + 100000 * 10^18 and 1 > -1 / -totalSold + 100000 * 10^18:
                revert with 0, 17
            require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
            call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, treasuryAddress, -totalSold + 100000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if owed[msg.sender] > !(-totalSold + 100000 * 10^18):
                revert with 0, 17
            owed[msg.sender] = owed[msg.sender] + -totalSold + 100000 * 10^18
            if totalSold > !(-totalSold + 100000 * 10^18):
                revert with 0, 17
            totalSold = 100000 * 10^18
            if totalOwed > !(-totalSold + 100000 * 10^18):
                revert with 0, 17
            totalOwed = totalOwed + -totalSold + 100000 * 10^18
            emit TokensBought(msg.sender, -totalSold + 100000 * 10^18, -totalSold + 100000 * 10^18);
}



}
