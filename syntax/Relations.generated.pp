[
   Query                        -- _1 _2 _3,
   Query.2:opt                  -- _1,
   Query.3:opt                  -- _1,
   From                         -- KW["from"] _1,
   Join                         -- KW["join"] _1,
   Where                        -- KW["where"] _1 KW["."] _2 KW["="] KW["x"],
   AttributeName                -- _1,
   COMPLETION-Expression        -- _1,
   COMPLETION-From              -- _1,
   COMPLETION-Join              -- _1,
   COMPLETION-Where             -- _1,
   COMPLETION-AttributeName     -- _1,
   Module                       -- KW["module"] _1 _2 _3,
   Module.2:iter-star           -- _1,
   Module.3:iter-star           -- _1,
   Entity                       -- KW["entity"] _1 KW["{"] _2 KW["}"],
   Entity.2:iter-star           -- _1,
   Attribute                    -- _1 KW[":"] _2,
   PrimitiveType                -- _1,
   Relation                     -- KW["relation"] _1 KW["{"] _2 KW["}"],
   Relation.2:iter-star         -- _1,
   Member                       -- _1 _2 _3,
   Member.3:opt                 -- _1,
   EntityType                   -- _1,
   One                          -- KW["1"],
   ZeroOrOne                    -- KW["?"],
   OneOrMore                    -- KW["+"],
   ZeroOrMore                   -- KW["*"],
   COMPLETION-Start             -- _1,
   COMPLETION-Attribute         -- _1,
   COMPLETION-PrimitiveType     -- _1,
   COMPLETION-Definition        -- _1,
   COMPLETION-MemberOrAttribute -- _1,
   COMPLETION-Member            -- _1,
   COMPLETION-EntityType        -- _1,
   COMPLETION-Multiplicity      -- _1,
   Identifier                   -- _1,
   COMPLETION-Identifier        -- _1
]