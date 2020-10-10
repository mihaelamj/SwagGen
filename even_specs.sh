#!/bin/bash
set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
NO_COLOR='\033[0m'
# SPEC_NAME=$(basename $1)
# SPEC_PATH=$1
# SWAGGER_SPEC=$SPEC_PATH/spec.yml

SPEC_NAME=bircheven
SPEC_PATH=Specs/bircheven/
SWAGGER_SPEC=Specs/bircheven/birch-web/spec.yml
# SWAGGER_SPEC=Specs/bircheven/birch-web/schemas/getRateTableRequest.yml


rm -f ${SPEC_PATH}/generated/Swift/Package.resolved

echo "📦  Testing $SPEC_PATH"
echo "⚙️  Generating $SPEC_NAME..."
swift run swaggen generate ${SWAGGER_SPEC} --template Templates/Swift/template.yml --destination $SPEC_PATH/generated/Swift --option name:$SPEC_NAME --clean all
echo "⚙️  Compiling $SPEC_NAME..."
swift build --package-path ${SPEC_PATH}/generated/Swift --build-path Specs/.build -c release
echo "✅  ${GREEN}Built $SPEC_NAME${NO_COLOR}"
rm -f ${SPEC_PATH}/generated/Swift/Package.resolved

# generate file://Users/mmj/Developer/personal/SwagGen/Specs/bircheven/birch-web/spec-merged.yml --destination file:///Users/mmj/Developer/personal/SwagGen/Specs/bircheven/generated/Swift --option name:bircheven --clean all

# generate file://spec-merged.yml --destination file:///Users/mmj/Developer/personal/SwagGen/Specs/bircheven/generated/Swift --option name:bircheven --clean all

# generate file:///Users/mmj/Developer/personal/SwagGen/Specs/bircheven/spec-even.yml --destination file:///Users/mmj/Developer/personal/SwagGen/Specs/bircheven/_generatedEven/

# generate file:///Users/mmj/Developer/personal/SwagGen/Specs/bircheven/spec-even.yml

# generate file:///Users/mmj/Developer/personal/SwagGen/Specs/bircheven/spec-finance.yml
