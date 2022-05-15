contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint256 shares;
uint256 totalShares;
address tokenAddress;
uint256 nextProposalId;

function nextProposalId() payable {
    return nextProposalId
}

function totalShares() payable {
    return totalShares
}

function votes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[arg1][arg2])
}

function shares(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1]
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if shares[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    shares[address(msg.sender)] += arg1
    if totalShares > -arg1 - 1:
        revert with 'NH{q', 17
    totalShares += arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if shares[address(msg.sender)] < arg1:
        revert with 0, 'Not enough shares'
    if shares[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    shares[address(msg.sender)] -= arg1
    if totalShares < arg1:
        revert with 'NH{q', 17
    totalShares -= arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function vote(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 < 2
    if stor1[address(msg.sender)][arg1]:
        revert with 0, 'already voted'
    if stor0[arg1].field_768 > -604801:
        revert with 'NH{q', 17
    if block.timestamp > stor0[arg1].field_768 + (168 * 24 * 3600):
        revert with 0, 'Voting period is over'
    stor1[address(msg.sender)][arg1] = 1
    if arg2 > 1:
        revert with 'NH{q', 33
    if arg2:
        if stor0[arg1].field_1280 > -shares[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        stor0[arg1].field_1280 += shares[address(msg.sender)]
        if stor0[arg1].field_1280 and 100 > -1 / stor0[arg1].field_1280:
            revert with 'NH{q', 17
        if not totalShares:
            revert with 'NH{q', 18
        if 100 * stor0[arg1].field_1280 / totalShares > 50:
            stor0[arg1].field_1536 = 1
    else:
        if stor0[arg1].field_1024 > -shares[address(msg.sender)] - 1:
            revert with 'NH{q', 17
        stor0[arg1].field_1024 += shares[address(msg.sender)]
        if stor0[arg1].field_1024 and 100 > -1 / stor0[arg1].field_1024:
            revert with 'NH{q', 17
        if not totalShares:
            revert with 'NH{q', 18
        if 100 * stor0[arg1].field_1024 / totalShares > 50:
            stor0[arg1].field_1536 = 0
}

function createProposal(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(arg1.length) + 128 > test266151307() or ceil32(arg1.length) + 128 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if shares[address(msg.sender)] < 25 * 10^18:
        revert with 0, 'Not enough shares to create a proposal'
    stor0[stor5].field_0 = nextProposalId
    stor0[stor5].field_256 = msg.sender
    if stor0[stor5].field_512:
        if stor0[stor5].field_512 == stor0[stor5].field_513 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor0[stor5][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor5].field_512 = 0
            idx = 0
            while stor0[stor5].field_513 + 31 / 32 > idx:
                stor0[stor5][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor0[stor5].field_512 == stor0[stor5].field_513 < 32:
            revert with 'NH{q', 34
        if arg1.length:
            stor0[stor5][2][].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor0[stor5].field_512 = 0
            idx = 0
            while stor0[stor5].field_513 + 31 / 32 > idx:
                stor0[stor5][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
    stor0[stor5].field_768 = block.timestamp
    stor0[stor5].field_1024 = 0
    stor0[stor5].field_1280 = 0
    stor0[stor5].field_1536 = 2
    if nextProposalId == -1:
        revert with 'NH{q', 17
    nextProposalId++
}

function proposals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_512:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor0[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
                revert with 'NH{q', 34
            if stor0[arg1].field_513:
                if 31 >= stor0[arg1].field_513:
                    mem[128] = 256 * stor0[arg1].field_520
                else:
                    mem[128] = stor0[arg1][2].field_0
                    idx = 128
                    s = 0
                    while stor0[arg1].field_513 + 96 > idx:
                        mem[idx + 32] = stor0[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if stor0[arg1].field_1536 >= 3:
            revert with 'NH{q', 33
        return stor0[arg1].field_0, 
               stor0[arg1].field_256,
               Array(len=2 * Mask(256, -1, stor0[arg1].field_513), data=mem[128 len ceil32(stor0[arg1].field_513)]),
               stor0[arg1].field_768,
               stor0[arg1].field_1024,
               stor0[arg1].field_1280,
               stor0[arg1].field_1536
    if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
        revert with 'NH{q', 34
    if stor0[arg1].field_512:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor0[arg1][2].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor0[arg1].field_512 == stor0[arg1].field_513 < 32:
            revert with 'NH{q', 34
        if stor0[arg1].field_513:
            if 31 >= stor0[arg1].field_513:
                mem[128] = 256 * stor0[arg1].field_520
            else:
                mem[128] = stor0[arg1][2].field_0
                idx = 128
                s = 0
                while stor0[arg1].field_513 + 96 > idx:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if stor0[arg1].field_1536 >= 3:
        revert with 'NH{q', 33
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1].field_512, data=mem[128 len ceil32(stor0[arg1].field_513)]),
           stor0[arg1].field_768,
           stor0[arg1].field_1024,
           stor0[arg1].field_1280,
           stor0[arg1].field_1536
}



}
